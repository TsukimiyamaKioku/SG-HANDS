import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import wupinleixingList from '../pages/wupinleixing/list'
import wupinleixingDetail from '../pages/wupinleixing/detail'
import wupinleixingAdd from '../pages/wupinleixing/add'
import wupinxinxiList from '../pages/wupinxinxi/list'
import wupinxinxiDetail from '../pages/wupinxinxi/detail'
import wupinxinxiAdd from '../pages/wupinxinxi/add'
import jiaoyixinxiList from '../pages/jiaoyixinxi/list'
import jiaoyixinxiDetail from '../pages/jiaoyixinxi/detail'
import jiaoyixinxiAdd from '../pages/jiaoyixinxi/add'
import gongyitonggaoList from '../pages/gongyitonggao/list'
import gongyitonggaoDetail from '../pages/gongyitonggao/detail'
import gongyitonggaoAdd from '../pages/gongyitonggao/add'
import jinjichengduList from '../pages/jinjichengdu/list'
import jinjichengduDetail from '../pages/jinjichengdu/detail'
import jinjichengduAdd from '../pages/jinjichengdu/add'
import juanzengleixingList from '../pages/juanzengleixing/list'
import juanzengleixingDetail from '../pages/juanzengleixing/detail'
import juanzengleixingAdd from '../pages/juanzengleixing/add'
import gongyijuanzengList from '../pages/gongyijuanzeng/list'
import gongyijuanzengDetail from '../pages/gongyijuanzeng/detail'
import gongyijuanzengAdd from '../pages/gongyijuanzeng/add'
import ganxiepingjiaList from '../pages/ganxiepingjia/list'
import ganxiepingjiaDetail from '../pages/ganxiepingjia/detail'
import ganxiepingjiaAdd from '../pages/ganxiepingjia/add'
import aboutusList from '../pages/aboutus/list'
import aboutusDetail from '../pages/aboutus/detail'
import aboutusAdd from '../pages/aboutus/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'wupinleixing',
					component: wupinleixingList
				},
				{
					path: 'wupinleixingDetail',
					component: wupinleixingDetail
				},
				{
					path: 'wupinleixingAdd',
					component: wupinleixingAdd
				},
				{
					path: 'wupinxinxi',
					component: wupinxinxiList
				},
				{
					path: 'wupinxinxiDetail',
					component: wupinxinxiDetail
				},
				{
					path: 'wupinxinxiAdd',
					component: wupinxinxiAdd
				},
				{
					path: 'jiaoyixinxi',
					component: jiaoyixinxiList
				},
				{
					path: 'jiaoyixinxiDetail',
					component: jiaoyixinxiDetail
				},
				{
					path: 'jiaoyixinxiAdd',
					component: jiaoyixinxiAdd
				},
				{
					path: 'gongyitonggao',
					component: gongyitonggaoList
				},
				{
					path: 'gongyitonggaoDetail',
					component: gongyitonggaoDetail
				},
				{
					path: 'gongyitonggaoAdd',
					component: gongyitonggaoAdd
				},
				{
					path: 'jinjichengdu',
					component: jinjichengduList
				},
				{
					path: 'jinjichengduDetail',
					component: jinjichengduDetail
				},
				{
					path: 'jinjichengduAdd',
					component: jinjichengduAdd
				},
				{
					path: 'juanzengleixing',
					component: juanzengleixingList
				},
				{
					path: 'juanzengleixingDetail',
					component: juanzengleixingDetail
				},
				{
					path: 'juanzengleixingAdd',
					component: juanzengleixingAdd
				},
				{
					path: 'gongyijuanzeng',
					component: gongyijuanzengList
				},
				{
					path: 'gongyijuanzengDetail',
					component: gongyijuanzengDetail
				},
				{
					path: 'gongyijuanzengAdd',
					component: gongyijuanzengAdd
				},
				{
					path: 'ganxiepingjia',
					component: ganxiepingjiaList
				},
				{
					path: 'ganxiepingjiaDetail',
					component: ganxiepingjiaDetail
				},
				{
					path: 'ganxiepingjiaAdd',
					component: ganxiepingjiaAdd
				},
				{
					path: 'aboutus',
					component: aboutusList
				},
				{
					path: 'aboutusDetail',
					component: aboutusDetail
				},
				{
					path: 'aboutusAdd',
					component: aboutusAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
