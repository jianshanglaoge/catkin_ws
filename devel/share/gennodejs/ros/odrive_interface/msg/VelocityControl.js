// Auto-generated. Do not edit!

// (in-package odrive_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VelocityControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.axis0_velocity = null;
      this.axis1_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('axis0_velocity')) {
        this.axis0_velocity = initObj.axis0_velocity
      }
      else {
        this.axis0_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('axis1_velocity')) {
        this.axis1_velocity = initObj.axis1_velocity
      }
      else {
        this.axis1_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelocityControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [axis0_velocity]
    bufferOffset = _serializer.float32(obj.axis0_velocity, buffer, bufferOffset);
    // Serialize message field [axis1_velocity]
    bufferOffset = _serializer.float32(obj.axis1_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityControl
    let len;
    let data = new VelocityControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [axis0_velocity]
    data.axis0_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [axis1_velocity]
    data.axis1_velocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'odrive_interface/VelocityControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b59885a312e0b694846b6fdb25769d14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 axis0_velocity
    float32 axis1_velocity
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelocityControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.axis0_velocity !== undefined) {
      resolved.axis0_velocity = msg.axis0_velocity;
    }
    else {
      resolved.axis0_velocity = 0.0
    }

    if (msg.axis1_velocity !== undefined) {
      resolved.axis1_velocity = msg.axis1_velocity;
    }
    else {
      resolved.axis1_velocity = 0.0
    }

    return resolved;
    }
};

module.exports = VelocityControl;
