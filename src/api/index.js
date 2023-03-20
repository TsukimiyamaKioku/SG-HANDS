import { Router } from 'express'
import UsersController from './Users'
import FileController from './File'
import ConfigController from './Config'
import CommonController from './Common'
import YonghuController from './Yonghu'
import WupinleixingController from './Wupinleixing'
import WupinxinxiController from './Wupinxinxi'
import JiaoyixinxiController from './Jiaoyixinxi'
import GongyitonggaoController from './Gongyitonggao'
import JinjichengduController from './Jinjichengdu'
import JuanzengleixingController from './Juanzengleixing'
import GongyijuanzengController from './Gongyijuanzeng'
import GanxiepingjiaController from './Ganxiepingjia'
import StoreupController from './Storeup'
import NewsController from './News'
import AboutusController from './Aboutus'
import SystemintroController from './Systemintro'
import DiscusswupinxinxiController from './Discusswupinxinxi'
import DiscussgongyitonggaoController from './Discussgongyitonggao'

export default ({ config, db }) => {
	let api = Router()

	api.use('/users', UsersController({ config, db }))

	api.use('/file', FileController({ config, db }))

	api.use('/config', ConfigController({ config, db }))

	api.use('/', CommonController({ config, db }))

	api.use('/yonghu', YonghuController({ config, db }))

	api.use('/wupinleixing', WupinleixingController({ config, db }))

	api.use('/wupinxinxi', WupinxinxiController({ config, db }))

	api.use('/jiaoyixinxi', JiaoyixinxiController({ config, db }))

	api.use('/gongyitonggao', GongyitonggaoController({ config, db }))

	api.use('/jinjichengdu', JinjichengduController({ config, db }))

	api.use('/juanzengleixing', JuanzengleixingController({ config, db }))

	api.use('/gongyijuanzeng', GongyijuanzengController({ config, db }))

	api.use('/ganxiepingjia', GanxiepingjiaController({ config, db }))

	api.use('/storeup', StoreupController({ config, db }))

	api.use('/news', NewsController({ config, db }))

	api.use('/aboutus', AboutusController({ config, db }))

	api.use('/systemintro', SystemintroController({ config, db }))

	api.use('/discusswupinxinxi', DiscusswupinxinxiController({ config, db }))

	api.use('/discussgongyitonggao', DiscussgongyitonggaoController({ config, db }))

	return api
}
