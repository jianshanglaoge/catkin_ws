# Training Robot V1

This is the repository for the SmartSystems Lab's custom autonomous robot: Robot part

## Before Using & Start Setting

The guidence of setting the robot part is in  [Main Controler part](https://github.com/jianshanglaoge/training_robot_ws) package. Please check it before starting this part.

The code at perkobot_control: diff_dirve_converter.py and odrive_interface odrive_controller.py and odrive_class.py has been developed. To help you better understand it, you can take a look at [Pervious version](https://github.com/NicoPowers/perkobot)

## TODO

### odrive_interface

The motor speed does not equal to the value it received, this could be figure out through adjusting the motor speed value in odrive_class.py.

### odrive_controller

There is an obviously delay between two motors at starting part. This will cause a small right ward turning. To avoid this, the starting function or logic should be rewrite. 
s
