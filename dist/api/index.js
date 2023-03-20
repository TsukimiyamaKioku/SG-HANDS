'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _express = require('express');

var _Users = require('./Users');

var _Users2 = _interopRequireDefault(_Users);

var _File = require('./File');

var _File2 = _interopRequireDefault(_File);

var _Config = require('./Config');

var _Config2 = _interopRequireDefault(_Config);

var _Common = require('./Common');

var _Common2 = _interopRequireDefault(_Common);

var _Yonghu = require('./Yonghu');

var _Yonghu2 = _interopRequireDefault(_Yonghu);

var _Wupinleixing = require('./Wupinleixing');

var _Wupinleixing2 = _interopRequireDefault(_Wupinleixing);

var _Wupinxinxi = require('./Wupinxinxi');

var _Wupinxinxi2 = _interopRequireDefault(_Wupinxinxi);

var _Jiaoyixinxi = require('./Jiaoyixinxi');

var _Jiaoyixinxi2 = _interopRequireDefault(_Jiaoyixinxi);

var _Gongyitonggao = require('./Gongyitonggao');

var _Gongyitonggao2 = _interopRequireDefault(_Gongyitonggao);

var _Jinjichengdu = require('./Jinjichengdu');

var _Jinjichengdu2 = _interopRequireDefault(_Jinjichengdu);

var _Juanzengleixing = require('./Juanzengleixing');

var _Juanzengleixing2 = _interopRequireDefault(_Juanzengleixing);

var _Gongyijuanzeng = require('./Gongyijuanzeng');

var _Gongyijuanzeng2 = _interopRequireDefault(_Gongyijuanzeng);

var _Ganxiepingjia = require('./Ganxiepingjia');

var _Ganxiepingjia2 = _interopRequireDefault(_Ganxiepingjia);

var _Storeup = require('./Storeup');

var _Storeup2 = _interopRequireDefault(_Storeup);

var _News = require('./News');

var _News2 = _interopRequireDefault(_News);

var _Aboutus = require('./Aboutus');

var _Aboutus2 = _interopRequireDefault(_Aboutus);

var _Systemintro = require('./Systemintro');

var _Systemintro2 = _interopRequireDefault(_Systemintro);

var _Discusswupinxinxi = require('./Discusswupinxinxi');

var _Discusswupinxinxi2 = _interopRequireDefault(_Discusswupinxinxi);

var _Discussgongyitonggao = require('./Discussgongyitonggao');

var _Discussgongyitonggao2 = _interopRequireDefault(_Discussgongyitonggao);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = function (_ref) {
	var config = _ref.config,
	    db = _ref.db;

	var api = (0, _express.Router)();

	api.use('/users', (0, _Users2.default)({ config: config, db: db }));

	api.use('/file', (0, _File2.default)({ config: config, db: db }));

	api.use('/config', (0, _Config2.default)({ config: config, db: db }));

	api.use('/', (0, _Common2.default)({ config: config, db: db }));

	api.use('/yonghu', (0, _Yonghu2.default)({ config: config, db: db }));

	api.use('/wupinleixing', (0, _Wupinleixing2.default)({ config: config, db: db }));

	api.use('/wupinxinxi', (0, _Wupinxinxi2.default)({ config: config, db: db }));

	api.use('/jiaoyixinxi', (0, _Jiaoyixinxi2.default)({ config: config, db: db }));

	api.use('/gongyitonggao', (0, _Gongyitonggao2.default)({ config: config, db: db }));

	api.use('/jinjichengdu', (0, _Jinjichengdu2.default)({ config: config, db: db }));

	api.use('/juanzengleixing', (0, _Juanzengleixing2.default)({ config: config, db: db }));

	api.use('/gongyijuanzeng', (0, _Gongyijuanzeng2.default)({ config: config, db: db }));

	api.use('/ganxiepingjia', (0, _Ganxiepingjia2.default)({ config: config, db: db }));

	api.use('/storeup', (0, _Storeup2.default)({ config: config, db: db }));

	api.use('/news', (0, _News2.default)({ config: config, db: db }));

	api.use('/aboutus', (0, _Aboutus2.default)({ config: config, db: db }));

	api.use('/systemintro', (0, _Systemintro2.default)({ config: config, db: db }));

	api.use('/discusswupinxinxi', (0, _Discusswupinxinxi2.default)({ config: config, db: db }));

	api.use('/discussgongyitonggao', (0, _Discussgongyitonggao2.default)({ config: config, db: db }));

	return api;
};
//# sourceMappingURL=index.js.map