import { Sequelize, DataTypes } from 'sequelize'
import moment from 'moment'
import sequelize from './sequelize'

// 感谢评价
const GanxiepingjiaModel = sequelize.define('GanxiepingjiaModel', {
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
		comment: '主键id'
	},
	pingjiabianhao: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '评价编号'
	},
	pingjianeirong: {
		type: DataTypes.TEXT,
		defaultValue: '',
		allowNull: true,
		comment: '评价内容'
	},
	xuniliwu: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '虚拟礼物'
	},
	pingjiashijian: {
		type: DataTypes.DATEONLY,
		allowNull: true,
		get() {
            return moment(this.getDataValue('pingjiashijian')).format('YYYY-MM-DD')
        },
		comment: '评价时间'
	},
	yonghuzhanghao: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '用户账号'
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
	tableName: 'ganxiepingjia'
})

export default GanxiepingjiaModel
