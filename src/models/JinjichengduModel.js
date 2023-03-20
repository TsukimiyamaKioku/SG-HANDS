import { Sequelize, DataTypes } from 'sequelize'
import moment from 'moment'
import sequelize from './sequelize'

// 紧急程度
const JinjichengduModel = sequelize.define('JinjichengduModel', {
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
		comment: '主键id'
	},
	jinjibianhao: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '紧急编号'
	},
	jinjimingcheng: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '紧急名称'
	},
	jinjifengmian: {
		type: DataTypes.TEXT,
		defaultValue: '',
		allowNull: true,
		comment: '紧急封面'
	},
	jinjishijian: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '紧急事件'
	},
	jinjineirong: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '紧急内容'
	},
	fabushijian: {
		type: DataTypes.STRING,
		defaultValue: '',
		allowNull: true,
		comment: '发布时间'
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
	tableName: 'jinjichengdu'
})

export default JinjichengduModel
