'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _sequelize = require('sequelize');

var _moment = require('moment');

var _moment2 = _interopRequireDefault(_moment);

var _sequelize2 = require('./sequelize');

var _sequelize3 = _interopRequireDefault(_sequelize2);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

// 物品信息
var WupinxinxiModel = _sequelize3.default.define('WupinxinxiModel', {
	id: {
		type: _sequelize.DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
		comment: '主键id'
	},
	wupinbianhao: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '物品编号'
	},
	wupinmingcheng: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '物品名称'
	},
	wupinleixing: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '物品类型'
	},
	wupintupian: {
		type: _sequelize.DataTypes.TEXT,
		defaultValue: '',
		allowNull: true,
		comment: '物品图片'
	},
	jiage: {
		type: _sequelize.DataTypes.FLOAT,
		defaultValue: 0,
		allowNull: true,
		comment: '价格'
	},
	shuliang: {
		type: _sequelize.DataTypes.INTEGER,
		defaultValue: 0,
		allowNull: true,
		comment: '数量'
	},
	guige: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '规格'
	},
	dengjiriqi: {
		type: _sequelize.DataTypes.DATEONLY,
		allowNull: true,
		get: function get() {
			return (0, _moment2.default)(this.getDataValue('dengjiriqi')).format('YYYY-MM-DD');
		},

		comment: '登记日期'
	},
	wupinxiangqing: {
		type: _sequelize.DataTypes.TEXT,
		defaultValue: '',
		allowNull: true,
		comment: '物品详情'
	},
	clicktime: {
		type: _sequelize.DataTypes.DATE,
		allowNull: true,
		get: function get() {
			return (0, _moment2.default)(this.getDataValue('clicktime')).format('YYYY-MM-DD HH:mm:ss');
		},

		comment: '最近点击时间'
	},
	clicknum: {
		type: _sequelize.DataTypes.INTEGER,
		defaultValue: 0,
		allowNull: true,
		comment: '点击次数'
	},
	addtime: {
		type: _sequelize.DataTypes.DATE,
		defaultValue: _sequelize.DataTypes.NOW,
		allowNull: false,
		get: function get() {
			return (0, _moment2.default)(this.getDataValue('addtime')).format('YYYY-MM-DD HH:mm:ss');
		},

		comment: '添加时间'
	}
}, {
	timestamps: false,
	freezeTableName: true,
	tableName: 'wupinxinxi'
});

exports.default = WupinxinxiModel;
//# sourceMappingURL=WupinxinxiModel.js.map