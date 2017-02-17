// Auto-generated. Do not edit!

// (in-package assignment.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class ultrasound_2 {
  constructor() {
    this.b = '';
    this.a = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ultrasound_2
    // Serialize message field [b]
    bufferInfo = _serializer.string(obj.b, bufferInfo);
    // Serialize message field [a]
    bufferInfo = _serializer.string(obj.a, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ultrasound_2
    let tmp;
    let len;
    let data = new ultrasound_2();
    // Deserialize message field [b]
    tmp = _deserializer.string(buffer);
    data.b = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [a]
    tmp = _deserializer.string(buffer);
    data.a = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment/ultrasound_2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6903e7caf1ccb729fc400b6c391325a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string b
    string a
    
    `;
  }

};

module.exports = ultrasound_2;
