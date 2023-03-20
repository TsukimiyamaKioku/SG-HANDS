<template>
<div>
	<div class="container" :style='{"minHeight":"100vh","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230105/f102fc38510441538be1d7351a619237.png) no-repeat center top /  100% 100%,#fff","display":"flex","width":"100%","backgroundSize":"cover","backgroundPosition":"center center","backgroundRepeat":"no-repeat","justifyContent":"center"}'>
		<el-form ref="loginForm" :model="loginForm" :style='{"padding":"30px 40px","boxShadow":"0 0px 0px rgba(0, 0, 0, .1)","margin":"0","borderRadius":"30px 20px","flexWrap":"wrap","background":"rgba(255,255,255,.0)","display":"flex","width":"800px","position":"relative","justifyContent":"space-between","height":"auto"}' :rules="rules">
			<div v-if="false" :style='{"margin":"0 0 10px 0","color":"rgba(64, 158, 255, 1)","textAlign":"center","width":"100%","lineHeight":"44px","fontSize":"20px","textShadow":"4px 4px 2px rgba(64, 158, 255, .5)"}'>USER / LOGIN</div>
			<div v-if="true" :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0 0 20px","color":"#333","borderRadius":"20%","textAlign":"center","background":"none","width":"62%","lineHeight":"44px","fontSize":"18px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>Login to SGHANDS</div>
			<el-form-item v-if="loginType==1" class="list-item" :style='{"width":"62%","margin":"0 0 10px","flexWrap":"wrap","display":"flex"}' prop="username">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>Account：</div>
				<input :style='{"border":"1px solid #eee","padding":"0 10px","outline":"0px solid #efefef","color":"#333","outlineOffset":"4px","width":"100%","fontSize":"14px","height":"40px"}' v-model="loginForm.username" placeholder="请输入账户">
			</el-form-item>
			<el-form-item v-if="loginType==1" class="list-item" :style='{"width":"62%","margin":"0 0 10px","flexWrap":"wrap","display":"flex"}' prop="password">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>Password：</div>
				<input :style='{"border":"1px solid #eee","padding":"0 10px","outline":"0px solid #efefef","color":"#333","outlineOffset":"4px","width":"100%","fontSize":"14px","height":"40px"}' v-model="loginForm.password" placeholder="请输入密码" type="password">
			</el-form-item>
			<el-form-item v-if="roles.length>1" class="list-type" :style='{"width":"62%","margin":"20px 0 10px"}' prop="role">
				<el-radio v-model="loginForm.tableName" :label="item.tableName" v-for="(item, index) in roles" :key="index" @change.native="getCurrentRow(item)">{{item.roleName}}</el-radio>
			</el-form-item>
			<el-form-item :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"10px 0 20px","margin":"0 0px 0px 0","borderColor":"#f5d4d4","borderWidth":"0 0 8px","width":"100%","borderStyle":"solid","height":"calc(100% - 60px)"}'>
				<el-button v-if="loginType==1" :style='{"border":"4px solid #f5d4d4","cursor":"pointer","padding":"0 10px","margin":"0px auto 0","outline":"none","color":"#333","borderRadius":"20% 5%","background":"#fdf6f6","display":"block","width":"110px","fontSize":"16px","height":"44px"}' @click="submitForm('loginForm')">Login</el-button>
				<el-button v-if="loginType==1" :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 5px","outline":"none","color":"#fff","borderRadius":"4px","background":"rgba(64, 158, 255, 1)","display":"none","width":"auto","fontSize":"14px","height":"44px"}' @click="resetForm('loginForm')">Reset</el-button>
                <el-upload v-if="loginType==2" :action="baseUrl + 'file/upload'" :show-file-list="false" :on-success="faceLogin">
                    <el-button :style='{"border":"4px solid #f5d4d4","cursor":"pointer","padding":"0 10px","margin":"0px auto 0","outline":"none","color":"#333","borderRadius":"20% 5%","background":"#fdf6f6","display":"block","width":"110px","fontSize":"16px","height":"44px"}'>Face Recognization</el-button>
                </el-upload>
			</el-form-item>
			<div :style='{"margin":"0 40px 0 0","alignItems":"center","top":"30px","flexWrap":"wrap","background":"none","display":"flex","width":"30%","position":"absolute","right":"0","justifyContent":"center","height":"auto"}'>
			<router-link :style='{"cursor":"pointer","border":"4px solid #ddd","padding":"0 10px","margin":"0 0 10px 0","color":"#333","borderRadius":"5% 20%","textAlign":"center","background":"#fff","width":"60%","fontSize":"16px","textDecoration":"none","lineHeight":"36px"}' :to="{path: '/register', query: {role: item.tableName,pageFlag:'register'}}" v-if="item.hasFrontRegister=='是'" v-for="(item, index) in roles" :key="index">Register{{item.roleName.replace('注册','')}}</router-link>
			</div>
		</el-form>
    </div>
</div>
</template>

<script>

export default {
	//数据集合
	data() {
		return {
            baseUrl: this.$config.baseUrl,
            loginType: 1,
			roleMenus: [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除"],"menu":"物品类型","menuJump":"列表","tableName":"wupinleixing"}],"menu":"物品类型管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","查看评论"],"menu":"物品信息","menuJump":"列表","tableName":"wupinxinxi"}],"menu":"物品信息管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除"],"menu":"交易信息","menuJump":"列表","tableName":"jiaoyixinxi"}],"menu":"交易信息管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","查看评论"],"menu":"公益通告","menuJump":"列表","tableName":"gongyitonggao"}],"menu":"公益通告管理"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["新增","查看","修改","删除"],"menu":"紧急程度","menuJump":"列表","tableName":"jinjichengdu"}],"menu":"紧急程度管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除"],"menu":"捐赠类型","menuJump":"列表","tableName":"juanzengleixing"}],"menu":"捐赠类型管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除","评价"],"menu":"公益捐赠","menuJump":"列表","tableName":"gongyijuanzeng"}],"menu":"公益捐赠管理"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["新增","查看","修改","删除"],"menu":"感谢评价","menuJump":"列表","tableName":"ganxiepingjia"}],"menu":"感谢评价管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-brand","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-time","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["查看","修改"],"menu":"公告信息","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","交易"],"menu":"物品信息列表","menuJump":"列表","tableName":"wupinxinxi"}],"menu":"物品信息模块"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","捐赠"],"menu":"公益通告列表","menuJump":"列表","tableName":"gongyitonggao"}],"menu":"公益通告模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"紧急程度列表","menuJump":"列表","tableName":"jinjichengdu"}],"menu":"紧急程度模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看","支付"],"menu":"交易信息","menuJump":"列表","tableName":"jiaoyixinxi"}],"menu":"交易信息管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["查看"],"menu":"公益捐赠","menuJump":"列表","tableName":"gongyijuanzeng"}],"menu":"公益捐赠管理"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["查看"],"menu":"感谢评价","menuJump":"列表","tableName":"ganxiepingjia"}],"menu":"感谢评价管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","交易"],"menu":"物品信息列表","menuJump":"列表","tableName":"wupinxinxi"}],"menu":"物品信息模块"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","捐赠"],"menu":"公益通告列表","menuJump":"列表","tableName":"gongyitonggao"}],"menu":"公益通告模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"紧急程度列表","menuJump":"列表","tableName":"jinjichengdu"}],"menu":"紧急程度模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}],
			loginForm: {
				username: '',
				password: '',
				tableName: '',
				code: '',
			},
			role: '',
            roles: [],
			rules: {
				username: [
					{ required: true, message: '请输入账户', trigger: 'blur' }
				],
				password: [
					{ required: true, message: '请输入密码', trigger: 'blur' }
				]
			},
			codes: [{
				num: 1,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}, {
				num: 2,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}, {
				num: 3,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}, {
				num: 4,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}]
		}
	},
	created() {
        for(let item in this.roleMenus) {
            if(this.roleMenus[item].hasFrontLogin=='是') {
                this.roles.push(this.roleMenus[item]);
            }
        }
	},
	mounted() {
	},
    //方法集合
    methods: {
		randomString() {
			var len = 4;
			var chars = [
			  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
			  'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
			  'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
			  'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
			  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
			  '3', '4', '5', '6', '7', '8', '9'
			]
			var colors = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
			var sizes = ['14', '15', '16', '17', '18']
			
			var output = []
			for (var i = 0; i < len; i++) {
			  // 随机验证码
			  var key = Math.floor(Math.random() * chars.length)
			  this.codes[i].num = chars[key]
			  // 随机验证码颜色
			  var code = '#'
			  for (var j = 0; j < 6; j++) {
			    var key = Math.floor(Math.random() * colors.length)
			    code += colors[key]
			  }
			  this.codes[i].color = code
			  // 随机验证码方向
			  var rotate = Math.floor(Math.random() * 45)
			  var plus = Math.floor(Math.random() * 2)
			  if (plus == 1) rotate = '-' + rotate
			  this.codes[i].rotate = 'rotate(' + rotate + 'deg)'
			  // 随机验证码字体大小
			  var size = Math.floor(Math.random() * sizes.length)
			  this.codes[i].size = sizes[size] + 'px'
			}
		},
      getCurrentRow(row) {
        this.role = row.roleName;
      },
      submitForm(formName) {
        if (this.roles.length!=1) {
            if (!this.role) {
                this.$message.error("请选择登录用户类型");
                return false;
            }
        } else {
            this.role = this.roles[0].roleName;
            this.loginForm.tableName = this.roles[0].tableName;
        }
        this.$refs[formName].validate((valid) => {
          if (valid) {
            this.$http.get(`${this.loginForm.tableName}/login`, {params: this.loginForm}).then(res => {
              if (res.data.code === 0) {
                localStorage.setItem('Token', res.data.token);
                localStorage.setItem('UserTableName', this.loginForm.tableName);
                localStorage.setItem('username', this.loginForm.username);
                localStorage.setItem('adminName', this.loginForm.username);
                localStorage.setItem('sessionTable', this.loginForm.tableName);
                localStorage.setItem('role', this.role);
                localStorage.setItem('keyPath', this.$config.indexNav.length+2);
                this.$router.push('/index/center');
                this.$message({
                  message: '登录成功',
                  type: 'success',
                  duration: 1500,
                });
              } else {
                this.$message.error(res.data.msg);
              }
            });
          } else {
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.container {
		position: relative;
		background: url(http://codegen.caihongy.cn/20230105/f102fc38510441538be1d7351a619237.png) no-repeat center top /  100% 100%,#fff;
		
		.el-form-item {
		  & /deep/ .el-form-item__content {
		    width: 100%;
		  }
		}
		
		.list-item /deep/ .el-input .el-input__inner {
			border: 1px solid #eee;
			padding: 0 10px;
			outline: 0px solid #efefef;
			color: #333;
			width: 100%;
			font-size: 14px;
			outline-offset: 4px;
			height: 40px;
		}
		
		.list-code /deep/ .el-input .el-input__inner {
			border: 1px solid #eee;
			padding: 0 10px;
			outline: none;
			color: #333;
			display: inline-block;
			vertical-align: middle;
			width: calc(100% - 110px);
			font-size: 14px;
			height: 40px;
		}
		
		.list-type /deep/ .el-radio__input .el-radio__inner {
			background: rgba(53, 53, 53, 0);
			border-color: #666666;
		}
		.list-type /deep/ .el-radio__input.is-checked .el-radio__inner {
			background: #bf3030;
			border-color: #bf3030;
		}
		.list-type /deep/ .el-radio__label {
			color: #666666;
			font-size: 14px;
		}
		.list-type /deep/ .el-radio__input.is-checked+.el-radio__label {
			color: #bf3030;
			font-size: 14px;
		}
	}
</style>
