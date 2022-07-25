// Auto-generated. Do not edit!

// (in-package odrive_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeControlModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.axis = null;
      this.requestedControlMode = null;
    }
    else {
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = 0;
      }
      if (initObj.hasOwnProperty('requestedControlMode')) {
        this.requestedControlMode = initObj.requestedControlMode
      }
      else {
        this.requestedControlMode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeControlModeRequest
    // Serialize message field [axis]
    bufferOffset = _serializer.uint8(obj.axis, buffer, bufferOffset);
    // Serialize message field [requestedControlMode]
    bufferOffset = _serializer.uint8(obj.requestedControlMode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeControlModeRequest
    let len;
    let data = new ChangeControlModeRequest(null);
    // Deserialize message field [axis]
    data.axis = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [requestedControlMode]
    data.requestedControlMode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'odrive_interface/ChangeControlModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d18c74f62ac867b2e7ceaf87d88d64a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 axis
    uint8 requestedControlMode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeControlModeRequest(null);
    if (msg.axis !== undefined) {
      resolved.axis = msg.axis;
    }
    else {
      resolved.axis = 0
    }

    if (msg.requestedControlMode !== undefined) {
      resolved.requestedControlMode = msg.requestedControlMode;
    }
    else {
      resolved.requestedControlMode = 0
    }

    return resolved;
    }
};

class ChangeControlModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeControlModeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeControlModeResponse
    let len;
    let data = new ChangeControlModeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'odrive_interface/ChangeControlModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeControlModeResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeControlModeRequest,
  Response: ChangeControlModeResponse,
  md5sum() { return '0a2ba8c6fd2d6248f36b6ba23a9c88c0'; },
  datatype() { return 'odrive_interface/ChangeControlMode'; }
};
