'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
var state = {
  audio: [],
  audioIndex: -1
};

var mutations = {
  SET_audio: function SET_audio(state, audio) {
    state.audio = audio;
  },
  SET_audioIndex: function SET_audioIndex(state, audioIndex) {
    state.audioIndex = audioIndex;
  }
};

var actions = {
  setAudio: function setAudio(_ref) {
    var commit = _ref.commit;

    return new Promise(function (resolve) {
      commit('SET_audio', []);
      commit('SET_audioIndex', -1);
    });
  }
};

exports.default = {
  namespaced: true,
  state: state,
  mutations: mutations,
  actions: actions
};
//# sourceMappingURL=app.js.map