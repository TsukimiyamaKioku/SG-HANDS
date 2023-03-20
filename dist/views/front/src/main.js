'use strict';

var _vue = require('vue');

var _vue2 = _interopRequireDefault(_vue);

var _vueRouter = require('vue-router');

var _vueRouter2 = _interopRequireDefault(_vueRouter);

var _vueResource = require('vue-resource');

var _vueResource2 = _interopRequireDefault(_vueResource);

var _elementUi = require('element-ui');

var _elementUi2 = _interopRequireDefault(_elementUi);

require('element-ui/lib/theme-chalk/index.css');

var _router = require('./router/router');

var _router2 = _interopRequireDefault(_router);

var _vueBaiduMap = require('vue-baidu-map');

var _vueBaiduMap2 = _interopRequireDefault(_vueBaiduMap);

var _vueQuillEditor = require('vue-quill-editor');

var _vueQuillEditor2 = _interopRequireDefault(_vueQuillEditor);

require('quill/dist/quill.core.css');

require('quill/dist/quill.snow.css');

require('quill/dist/quill.bubble.css');

require('@/assets/css/iconfont.css');

var _config = require('./config/config');

var _config2 = _interopRequireDefault(_config);

var _validate = require('./common/validate');

var _validate2 = _interopRequireDefault(_validate);

var _system = require('./common/system');

var _App = require('./App.vue');

var _App2 = _interopRequireDefault(_App);

var _Breadcrumb = require('@/components/Breadcrumb');

var _Breadcrumb2 = _interopRequireDefault(_Breadcrumb);

var _FileUpload = require('@/components/FileUpload');

var _FileUpload2 = _interopRequireDefault(_FileUpload);

var _Editor = require('@/components/Editor');

var _Editor2 = _interopRequireDefault(_Editor);

var _vueAplayer = require('vue-aplayer');

var _vueAplayer2 = _interopRequireDefault(_vueAplayer);

var _store = require('./store');

var _store2 = _interopRequireDefault(_store);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

_vue2.default.config.productionTip = false;

_vue2.default.prototype.$config = _config2.default;
_vue2.default.prototype.$validate = _validate2.default;
_vue2.default.prototype.isAuth = _system.isAuth;
_vue2.default.prototype.getCurDateTime = _system.getCurDateTime;
_vue2.default.prototype.getCurDate = _system.getCurDate;

_vue2.default.use(_vueRouter2.default);
_vue2.default.use(_vueResource2.default);
_vue2.default.use(_elementUi2.default);
_vue2.default.use(_vueBaiduMap2.default, {});
_vue2.default.use(_vueQuillEditor2.default);

_vue2.default.component('Breadcrumb', _Breadcrumb2.default);
_vue2.default.component('file-upload', _FileUpload2.default);
_vue2.default.component('editor', _Editor2.default);
_vue2.default.component('aplayer', _vueAplayer2.default);

_vue2.default.http.options.root = _config2.default.baseUrl;
_vue2.default.http.headers.common['Token'] = localStorage.getItem('Token');
_vue2.default.http.interceptors.push(function (request, next) {
  var _this = this;

  next(function (response) {
    if (response.data.code == 401 || response.data.code == 403) {
      _this.$router.replace('/login').catch(function (err) {});
    } else {
      return response;
    }
  });
});

_router2.default.afterEach(function (to, from) {
  if (from.path == '/login') {
    _vue2.default.http.headers.common['Token'] = localStorage.getItem('Token');
  }
});

new _vue2.default({
  render: function render(h) {
    return h(_App2.default);
  },
  router: _router2.default,
  store: _store2.default
}).$mount('#app');
//# sourceMappingURL=main.js.map