import { Sequelize, DataTypes } from 'sequelize'
import moment from 'moment'
import sequelize from './sequelize'

// 公益捐赠
const GongyijuanzengModel = sequelize.define('GongyijuanzengModel', {
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
		comment: '主键id'
	},
	juanzengbianhao: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '捐赠编号'
	},
	juanzengmingcheng: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '捐赠名称'
	},
	juanzengleixing: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '捐赠类型'
	},
	juanzengshuliang: {
		type: DataTypes.INTEGER,
		defaultValue: 0,
		allowNull: true,
		comment: '捐赠数量'
	},
	juanzengmubiao: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '捐赠目标'
	},
	juanzengshijian: {
		type: DataTypes.DATE,
		allowNull: true,
		get() {
            return moment(this.getDataValue('juanzengshijian')).format('YYYY-MM-DD HH:mm:ss')
        },
		comment: '捐赠时间'
	},
	yonghuzhanghao: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '用户账号'
	},
	yonghuxingming: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '用户姓名'
	},
	addtime: {
  		type: DataTypes.DATE,
  		defaultValue: DataTypes.NOW,
    	allowNull: false,
    	get() {
            return moment(this.getDataValue('addtime')).format('YYYY-MM-DD HH:mm:ss')
        },
		comment: '添加时间'
	}
}, {
	timestamps: false,
	freezeTableName: true,
	tableName: 'gongyijuanzeng'
})

export default GongyijuanzengModel
