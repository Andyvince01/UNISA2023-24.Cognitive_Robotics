
"use strict";

let TabletService = require('./TabletService.js')
let WakeUp = require('./WakeUp.js')
let ASRService = require('./ASRService.js')
let Text2Speech = require('./Text2Speech.js')
let VoiceDetectionService = require('./VoiceDetectionService.js')
let AnimationService = require('./AnimationService.js')
let Rest = require('./Rest.js')

module.exports = {
  TabletService: TabletService,
  WakeUp: WakeUp,
  ASRService: ASRService,
  Text2Speech: Text2Speech,
  VoiceDetectionService: VoiceDetectionService,
  AnimationService: AnimationService,
  Rest: Rest,
};
