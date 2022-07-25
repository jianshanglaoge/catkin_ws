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

class ChangeStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.axis = null;
      this.requestedState = null;
      this.isCalibration = null;
    }
    else {
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = 0;
      }
      if (initObj.hasOwnProperty('requestedState')) {
        this.requestedState = initObj.requestedState
      }
      else {
        this.requestedState = 0;
      }
      if (initObj.hasOwnProperty('isCalibration')) {
        this.isCalibration = initObj.isCalibration
      }
      else {
        this.isCalibration = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeStateRequest
    // Serialize message field [axis]
    bufferOffset = _serializer.uint8(obj.axis, buffer, bufferOffset);
    // Serialize message field [requestedState]
    bufferOffset = _serializer.uint8(obj.requestedState, buffer, bufferOffset);
    // Serialize message field [isCalibration]
    bufferOffset = _serializer.bool(obj.isCalibration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeStateRequest
    let len;
    let data = new ChangeStateRequest(null);
    // Deserialize message field [axis]
    data.axis = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [requestedState]
    data.requestedState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isCalibration]
    data.isCalibration = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'odrive_interface/ChangeStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef436f707cde8b3cbb6f92c68d8a8e32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 axis
    uint8 requestedState
    bool isCalibration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeStateRequest(null);
    if (msg.axis !== undefined) {
      resolved.axis = msg.axis;
    }
    else {
      resolved.axis = 0
    }

    if (msg.requestedState !== undefined) {
      resolved.requestedState = msg.requestedState;
    }
    else {
      resolved.requestedState = 0
    }

    if (msg.isCalibration !== undefined) {
      resolved.isCalibration = msg.isCalibration;
    }
    else {
      resolved.isCalibration = false
    }

    return resolved;
    }
};

class ChangeStateResponse {
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
    // Serializes a message object of type ChangeStateResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeStateResponse
    let len;
    let data = new ChangeStateResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'odrive_interface/ChangeStateResponse';
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
    const resolved = new ChangeStateResponse(null);
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
  Request: ChangeStateRequest,
  Response: ChangeStateResponse,
  md5sum() { return '7cf842fa729c0d06e59d479de5a05570'; },
  datatype() { return 'odrive_interface/ChangeState'; }
};
