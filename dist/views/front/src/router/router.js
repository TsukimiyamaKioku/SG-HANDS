'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _vueRouter = require('vue-router');

var _vueRouter2 = _interopRequireDefault(_vueRouter);

var _pages = require('../pages');

var _pages2 = _interopRequireDefault(_pages);

var _home = require('../pages/home/home');

var _home2 = _interopRequireDefault(_home);

var _login = require('../pages/login/login');

var _login2 = _interopRequireDefault(_login);

var _register = require('../pages/register/register');

var _register2 = _interopRequireDefault(_register);

var _center = require('../pages/center/center');

var _center2 = _interopRequireDefault(_center);

var _list = require('../pages/storeup/list');

var _list2 = _interopRequireDefault(_list);

var _newsList = require('../pages/news/news-list');

var _newsList2 = _interopRequireDefault(_newsList);

var _newsDetail = require('../pages/news/news-detail');

var _newsDetail2 = _interopRequireDefault(_newsDetail);

var _list3 = require('../pages/yonghu/list');

var _list4 = _interopRequireDefault(_list3);

var _detail = require('../pages/yonghu/detail');

var _detail2 = _interopRequireDefault(_detail);

var _add = require('../pages/yonghu/add');

var _add2 = _interopRequireDefault(_add);

var _list5 = require('../pages/wupinleixing/list');

var _list6 = _interopRequireDefault(_list5);

var _detail3 = require('../pages/wupinleixing/detail');

var _detail4 = _interopRequireDefault(_detail3);

var _add3 = require('../pages/wupinleixing/add');

var _add4 = _interopRequireDefault(_add3);

var _list7 = require('../pages/wupinxinxi/list');

var _list8 = _interopRequireDefault(_list7);

var _detail5 = require('../pages/wupinxinxi/detail');

var _detail6 = _interopRequireDefault(_detail5);

var _add5 = require('../pages/wupinxinxi/add');

var _add6 = _interopRequireDefault(_add5);

var _list9 = require('../pages/jiaoyixinxi/list');

var _list10 = _interopRequireDefault(_list9);

var _detail7 = require('../pages/jiaoyixinxi/detail');

var _detail8 = _interopRequireDefault(_detail7);

var _add7 = require('../pages/jiaoyixinxi/add');

var _add8 = _interopRequireDefault(_add7);

var _list11 = require('../pages/gongyitonggao/list');

var _list12 = _interopRequireDefault(_list11);

var _detail9 = require('../pages/gongyitonggao/detail');

var _detail10 = _interopRequireDefault(_detail9);

var _add9 = require('../pages/gongyitonggao/add');

var _add10 = _interopRequireDefault(_add9);

var _list13 = require('../pages/jinjichengdu/list');

var _list14 = _interopRequireDefault(_list13);

var _detail11 = require('../pages/jinjichengdu/detail');

var _detail12 = _interopRequireDefault(_detail11);

var _add11 = require('../pages/jinjichengdu/add');

var _add12 = _interopRequireDefault(_add11);

var _list15 = require('../pages/juanzengleixing/list');

var _list16 = _interopRequireDefault(_list15);

var _detail13 = require('../pages/juanzengleixing/detail');

var _detail14 = _interopRequireDefault(_detail13);

var _add13 = require('../pages/juanzengleixing/add');

var _add14 = _interopRequireDefault(_add13);

var _list17 = require('../pages/gongyijuanzeng/list');

var _list18 = _interopRequireDefault(_list17);

var _detail15 = require('../pages/gongyijuanzeng/detail');

var _detail16 = _interopRequireDefault(_detail15);

var _add15 = require('../pages/gongyijuanzeng/add');

var _add16 = _interopRequireDefault(_add15);

var _list19 = require('../pages/ganxiepingjia/list');

var _list20 = _interopRequireDefault(_list19);

var _detail17 = require('../pages/ganxiepingjia/detail');

var _detail18 = _interopRequireDefault(_detail17);

var _add17 = require('../pages/ganxiepingjia/add');

var _add18 = _interopRequireDefault(_add17);

var _list21 = require('../pages/aboutus/list');

var _list22 = _interopRequireDefault(_list21);

var _detail19 = require('../pages/aboutus/detail');

var _detail20 = _interopRequireDefault(_detail19);

var _add19 = require('../pages/aboutus/add');

var _add20 = _interopRequireDefault(_add19);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

//引入组件
var originalPush = _vueRouter2.default.prototype.push;
_vueRouter2.default.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(function (err) {
		return err;
	});
};

//配置路由
exports.default = new _vueRouter2.default({
	routes: [{
		path: '/',
		redirect: '/index/home'
	}, {
		path: '/index',
		component: _pages2.default,
		children: [{
			path: 'home',
			component: _home2.default
		}, {
			path: 'center',
			component: _center2.default
		}, {
			path: 'storeup',
			component: _list2.default
		}, {
			path: 'news',
			component: _newsList2.default
		}, {
			path: 'newsDetail',
			component: _newsDetail2.default
		}, {
			path: 'yonghu',
			component: _list4.default
		}, {
			path: 'yonghuDetail',
			component: _detail2.default
		}, {
			path: 'yonghuAdd',
			component: _add2.default
		}, {
			path: 'wupinleixing',
			component: _list6.default
		}, {
			path: 'wupinleixingDetail',
			component: _detail4.default
		}, {
			path: 'wupinleixingAdd',
			component: _add4.default
		}, {
			path: 'wupinxinxi',
			component: _list8.default
		}, {
			path: 'wupinxinxiDetail',
			component: _detail6.default
		}, {
			path: 'wupinxinxiAdd',
			component: _add6.default
		}, {
			path: 'jiaoyixinxi',
			component: _list10.default
		}, {
			path: 'jiaoyixinxiDetail',
			component: _detail8.default
		}, {
			path: 'jiaoyixinxiAdd',
			component: _add8.default
		}, {
			path: 'gongyitonggao',
			component: _list12.default
		}, {
			path: 'gongyitonggaoDetail',
			component: _detail10.default
		}, {
			path: 'gongyitonggaoAdd',
			component: _add10.default
		}, {
			path: 'jinjichengdu',
			component: _list14.default
		}, {
			path: 'jinjichengduDetail',
			component: _detail12.default
		}, {
			path: 'jinjichengduAdd',
			component: _add12.default
		}, {
			path: 'juanzengleixing',
			component: _list16.default
		}, {
			path: 'juanzengleixingDetail',
			component: _detail14.default
		}, {
			path: 'juanzengleixingAdd',
			component: _add14.default
		}, {
			path: 'gongyijuanzeng',
			component: _list18.default
		}, {
			path: 'gongyijuanzengDetail',
			component: _detail16.default
		}, {
			path: 'gongyijuanzengAdd',
			component: _add16.default
		}, {
			path: 'ganxiepingjia',
			component: _list20.default
		}, {
			path: 'ganxiepingjiaDetail',
			component: _detail18.default
		}, {
			path: 'ganxiepingjiaAdd',
			component: _add18.default
		}, {
			path: 'aboutus',
			component: _list22.default
		}, {
			path: 'aboutusDetail',
			component: _detail20.default
		}, {
			path: 'aboutusAdd',
			component: _add20.default
		}]
	}, {
		path: '/login',
		component: _login2.default
	}, {
		path: '/register',
		component: _register2.default
	}]
});
//# sourceMappingURL=router.js.map