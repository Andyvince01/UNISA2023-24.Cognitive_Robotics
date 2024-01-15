// Auto-generated. Do not edit!

// (in-package features.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FaceDetectorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaceDetectorRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaceDetectorRequest
    let len;
    let data = new FaceDetectorRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'features/FaceDetectorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaceDetectorRequest(null);
    return resolved;
    }
};

class FaceDetectorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.presence = null;
    }
    else {
      if (initObj.hasOwnProperty('presence')) {
        this.presence = initObj.presence
      }
      else {
        this.presence = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaceDetectorResponse
    // Serialize message field [presence]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.presence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaceDetectorResponse
    let len;
    let data = new FaceDetectorResponse(null);
    // Deserialize message field [presence]
    data.presence = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'features/FaceDetectorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c02e001e41cea4c43b2f6bd8b43a538c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Bool presence
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaceDetectorResponse(null);
    if (msg.presence !== undefined) {
      resolved.presence = std_msgs.msg.Bool.Resolve(msg.presence)
    }
    else {
      resolved.presence = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = {
  Request: FaceDetectorRequest,
  Response: FaceDetectorResponse,
  md5sum() { return 'c02e001e41cea4c43b2f6bd8b43a538c'; },
  datatype() { return 'features/FaceDetector'; }
};
