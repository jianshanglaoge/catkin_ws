#!/usr/bin/env python3
from __future__ import print_function

from odrive_interface.msg import VelocityControl
from odrive_interface.srv import *
from odrive_class import ODrive
import sys
import threading
import time
import rospy
from odrive.enums import *
from odrive.utils import *
from fibre import Event
from rospy.rostime import Time

# global definitions

my_drive = None
communication_started = False                 
watchdog_timer_expired = False   
watchdog_alive = True
watchdog_timeout = 2
last_time = Time()
axis0_v=0
axis1_v=0

def watchdog():
    global last_time, watchdog_timer_expired, watchdog_alive, my_drive, communication_started

    # wait unitl the first message has been received to start the watchdog
    while(not communication_started):
        pass

    while(watchdog_alive):
        if (not watchdog_timer_expired):
            now = rospy.get_rostime()

            if (abs(now.to_sec() - last_time.to_sec()) > watchdog_timeout):
                print("ERROR: Watchdog Timer expired.\n")
                watchdog_timer_expired = True
                my_drive.disengage_motors()        
                my_drive.engage_motors()
            time.sleep(0.1)

def velocity_callback(data: VelocityControl):
    global my_drive, last_time, watchdog_timer_expired, communication_started, axis0_v, axis1_v
    
    print("STATUS: Received velocity for axis 0: {}".format(data.axis0_velocity))
    print("STATUS: Received velocity for axis 1: {}".format(data.axis1_velocity))            
    if (not communication_started):
        communication_started = True


    # TODO Add some control to reduce the delay between two motors to avoid turning when motor start.
    
    #Check if watchdog have died
    if (watchdog_timer_expired):
        #reset the last_time before weak up watchdog
        last_time = rospy.get_rostime()
        watchdog_timer_expired = False    
    elif (axis0_v == data.axis0_velocity and axis1_v == data.axis1_velocity):
        last_time = rospy.get_rostime()
    else:
        my_drive.engage_motors()
        last_time = rospy.get_rostime()
        watchdog_timer_expired = False   

    if (not (axis0_v == data.axis0_velocity and axis1_v == data.axis1_velocity)):
        if (not my_drive.set_velocity1(-data.axis0_velocity, data.axis1_velocity)):
            rospy.signal_shutdown("ERROR: Axis 0 has errors.\n")    
   
    axis0_v = data.axis0_velocity
    axis1_v = data.axis1_velocity 
    last_time = rospy.get_rostime()
  

    
        
  

def setup_node():    
    rospy.init_node('odrive_interface')
    rospy.Subscriber("odrive_cmd_vel", VelocityControl, velocity_callback, queue_size=1)
    
    watchdog_thread = threading.Thread(target=watchdog)
    watchdog_thread.start()

    print("STATUS: odrive_interface node launched, ready to receive commands...\n")
    rospy.spin()    
    print("STATUS: odrive_interface node terminated.\n")

    global watchdog_alive
    watchdog_alive = False
      

if __name__ == '__main__':    
    try:
        my_drive = ODrive()

        if (my_drive.is_connected):
            my_drive.clear_errors()
            if (my_drive.calibrate()):
                if (my_drive.engage_motors()):
                    setup_node()
                else:
                    print("ERROR: ODrive failed to engage motors, check for errors.\n") 
        else:
            print("ERROR: ODrive failed to calibrate, check for errors.\n")   

    finally:
        my_drive.disconnect()
        sys.exit()        
            
    
    
    
