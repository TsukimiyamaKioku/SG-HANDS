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

// 公益捐赠
var GongyijuanzengModel = _sequelize3.default.define('GongyijuanzengModel', {
	id: {
		type: _sequelize.DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
		comment: '主键id'
	},
	juanzengbianhao: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '捐赠编号'
	},
	juanzengmingcheng: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '捐赠名称'
	},
	juanzengleixing: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '捐赠类型'
	},
	juanzengshuliang: {
		type: _sequelize.DataTypes.INTEGER,
		defaultValue: 0,
		allowNull: true,
		comment: '捐赠数量'
	},
	juanzengmubiao: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '捐赠目标'
	},
	juanzengshijian: {
		type: _sequelize.DataTypes.DATE,
		allowNull: true,
		get: function get() {
			return (0, _moment2.default)(this.getDataValue('juanzengshijian')).format('YYYY-MM-DD HH:mm:ss');
		},

		comment: '捐赠时间'
	},
	yonghuzhanghao: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '用户账号'
	},
	yonghuxingming: {
		type: _sequelize.DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '用户姓名'
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
	tableName: 'gongyijuanzeng'
});

exports.default = GongyijuanzengModel;
//# sourceMappingURL=GongyijuanzengModel.js.map