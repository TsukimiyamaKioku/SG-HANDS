<template>
<div class="home-preview" :style='{"width":"90%","margin":"10px auto","flexWrap":"wrap","justifyContent":"space-between","display":"flex"}'>



<div class="recommend" :style='{"border":"1px solid #eee","margin":"10px auto 10px","textAlign":"center","background":"rgba(249,249,249,.6)","display":"block","width":"48%","position":"relative"}'>
	<div v-if="false" class="idea recommendIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
    <div class="title" :style='{"width":"100%","padding":"0 20px","margin":"0px auto 0px","lineHeight":"48px","textAlign":"left","background":"url(http://codegen.caihongy.cn/20230105/89d0f1a180a247e7b32f0f68061455cf.png)  no-repeat center bottom / 100% auto"}'>
		<span :style='{"color":"#666","fontSize":"18px"}'>物品信息推荐</span>
	</div>
	
	
	
	<!-- 样式二 -->
	<div class="list list2 index-pv1" :style='{"width":"100%","padding":"20px 20px 0","textAlign":"left","background":"none","height":"auto"}'>
		<div :style='{"cursor":"pointer","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"10px","flexWrap":"wrap","background":"rgba(255,255,255,.6)","display":"flex","width":"100%","fontSize":"0","position":"relative","justifyContent":"space-between","height":"240px"}' v-for="(item,index) in wupinxinxiRecommend" class="list-item animation-box" :key="index" @click="toDetail('wupinxinxiDetail', item)">
			<img :style='{"verticalAlign":"middle","padding":"20px","objectFit":"cover","borderRadius":"20% 12%","display":"inline-block","width":"38%","height":"100%"}' v-if="preHttp(item.wupintupian)" :src="item.wupintupian.split(',')[0]" alt="" />
			<img :style='{"verticalAlign":"middle","padding":"20px","objectFit":"cover","borderRadius":"20% 12%","display":"inline-block","width":"38%","height":"100%"}' v-else :src="baseUrl + (item.wupintupian?item.wupintupian.split(',')[0]:'')" alt="" />
			<div class="item-info" :style='{"width":"58%","padding":"10px 0px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}'>
				<div class="name line1" :style='{"padding":"0 10px","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","overflow":"hidden","borderWidth":"0 0 2px","background":"#fff","width":"90%","lineHeight":"40px","fontSize":"16px","textOverflow":"ellipsis","borderStyle":"solid"}'>物品名称:{{item.wupinmingcheng}}</div>
				<div class="name line1" :style='{"padding":"0 10px","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","overflow":"hidden","borderWidth":"0 0 2px","background":"#fff","width":"90%","lineHeight":"40px","fontSize":"16px","textOverflow":"ellipsis","borderStyle":"solid"}'>物品类型:{{item.wupinleixing}}</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	<div @click="moreBtn('wupinxinxi')" :style='{"border":"0","padding":"0 20px","margin":"0px auto 0px","top":"0","textAlign":"center","background":"none","display":"inline-block","width":"auto","lineHeight":"48px","position":"absolute","right":"0"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#333","fontSize":"14px"}' class="el-icon-d-arrow-right"></i>
	</div>
	
</div>
<div class="recommend" :style='{"border":"1px solid #eee","margin":"10px auto 10px","textAlign":"center","background":"rgba(249,249,249,.6)","display":"block","width":"48%","position":"relative"}'>
	<div v-if="false" class="idea recommendIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
    <div class="title" :style='{"width":"100%","padding":"0 20px","margin":"0px auto 0px","lineHeight":"48px","textAlign":"left","background":"url(http://codegen.caihongy.cn/20230105/89d0f1a180a247e7b32f0f68061455cf.png)  no-repeat center bottom / 100% auto"}'>
		<span :style='{"color":"#666","fontSize":"18px"}'>公益通告推荐</span>
	</div>
	
	
	
	<!-- 样式二 -->
	<div class="list list2 index-pv1" :style='{"width":"100%","padding":"20px 20px 0","textAlign":"left","background":"none","height":"auto"}'>
		<div :style='{"cursor":"pointer","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"10px","flexWrap":"wrap","background":"rgba(255,255,255,.6)","display":"flex","width":"100%","fontSize":"0","position":"relative","justifyContent":"space-between","height":"240px"}' v-for="(item,index) in gongyitonggaoRecommend" class="list-item animation-box" :key="index" @click="toDetail('gongyitonggaoDetail', item)">
			<img :style='{"verticalAlign":"middle","padding":"20px","objectFit":"cover","borderRadius":"20% 12%","display":"inline-block","width":"38%","height":"100%"}' v-if="preHttp(item.fengmian)" :src="item.fengmian.split(',')[0]" alt="" />
			<img :style='{"verticalAlign":"middle","padding":"20px","objectFit":"cover","borderRadius":"20% 12%","display":"inline-block","width":"38%","height":"100%"}' v-else :src="baseUrl + (item.fengmian?item.fengmian.split(',')[0]:'')" alt="" />
			<div class="item-info" :style='{"width":"58%","padding":"10px 0px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}'>
				<div class="name line1" :style='{"padding":"0 10px","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","overflow":"hidden","borderWidth":"0 0 2px","background":"#fff","width":"90%","lineHeight":"40px","fontSize":"16px","textOverflow":"ellipsis","borderStyle":"solid"}'>公益标题:{{item.gongyibiaoti}}</div>
				<div class="name line1" :style='{"padding":"0 10px","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","overflow":"hidden","borderWidth":"0 0 2px","background":"#fff","width":"90%","lineHeight":"40px","fontSize":"16px","textOverflow":"ellipsis","borderStyle":"solid"}'>发布时间:{{item.fabushijian}}</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	<div @click="moreBtn('gongyitonggao')" :style='{"border":"0","padding":"0 20px","margin":"0px auto 0px","top":"0","textAlign":"center","background":"none","display":"inline-block","width":"auto","lineHeight":"48px","position":"absolute","right":"0"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#333","fontSize":"14px"}' class="el-icon-d-arrow-right"></i>
	</div>
	
</div>




	<!-- 关于我们 -->
	<div :style='{"border":"1px solid #eee","padding":"0px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"10px auto 10px","flexWrap":"wrap","background":"rgba(249,249,249,.6)","display":"block","width":"32%","position":"relative","height":"auto"}'>
	  <div :style='{"padding":"0 20px","margin":"0 auto 20px","color":"#333","textAlign":"left","background":"url(http://codegen.caihongy.cn/20230105/89d0f1a180a247e7b32f0f68061455cf.png)  no-repeat center bottom / 100% auto","width":"100%","lineHeight":"44px","fontSize":"16px"}'>{{aboutUsDetail.title}}</div>
	  <div :style='{"margin":"0 auto 20px","color":"#999","textAlign":"center","display":"none","width":"50%","lineHeight":"50px","fontSize":"20px"}'>{{aboutUsDetail.subtitle}}</div>
	  <div :style='{"width":"100%","padding":"0 10px","flexWrap":"wrap","display":"flex","height":"auto"}'>
	    <img :style='{"margin":"0 0px","objectFit":"cover","borderRadius":"20% 10%","background":"#fff","display":"block","width":"100%","height":"250px"}' :src="baseUrl + aboutUsDetail.picture1">
	    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + aboutUsDetail.picture2">
	    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + aboutUsDetail.picture3">
	  </div>
	  <div :style='{"padding":"10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0px 0 20px 0","overflow":"hidden","color":"rgb(102, 102, 102)","width":"100%","lineHeight":"24px","fontSize":"16px","textIndent":"2em","height":"200px"}' v-html="aboutUsDetail.content"></div>
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	</div>
	<!-- 系统简介 -->
	<div :style='{"border":"1px solid #eee","padding":"0px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"10px auto 10px","flexWrap":"wrap","background":"rgba(249,249,249,.6)","display":"block","width":"32%","position":"relative","height":"auto"}'>
	  <div :style='{"padding":"0 20px","margin":"0 auto 20px","color":"#333","textAlign":"left","background":"url(http://codegen.caihongy.cn/20230105/89d0f1a180a247e7b32f0f68061455cf.png)  no-repeat center bottom / 101% auto","width":"100%","lineHeight":"44px","fontSize":"16px"}'>{{systemIntroductionDetail.title}}</div>
	  <div :style='{"margin":"0 0 10px","color":"#999","textAlign":"center","display":"none","width":"100%","lineHeight":"1.5","fontSize":"20px"}'>{{systemIntroductionDetail.subtitle}}</div>
	  <div :style='{"width":"100%","padding":"0 10px","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"auto"}'>
	    <img :style='{"width":"48%","margin":"0 0px","objectFit":"cover","borderRadius":"20% 10%","display":"block","height":"250px"}' :src="baseUrl + systemIntroductionDetail.picture1">
	    <img :style='{"width":"48%","margin":"0px 0px 0","objectFit":"cover","borderRadius":"20% 10%","display":"block","height":"250px"}' :src="baseUrl + systemIntroductionDetail.picture2">
	    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + systemIntroductionDetail.picture3">
	  </div>
	  <div :style='{"padding":"10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0","overflow":"hidden","color":"rgb(102, 102, 102)","width":"100%","lineHeight":"2","fontSize":"16px","textIndent":"2em","height":"200px"}' v-html="systemIntroductionDetail.content"></div>
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	</div>
	
<div class="news" :style='{"border":"1px solid #eee","width":"32%","margin":"10px auto 10px","position":"relative","textAlign":"center","background":"rgba(249,249,249,.6)"}'>
	<div v-if="false" class="idea newsIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"100%","padding":"0 20px","margin":"0 auto 20px","lineHeight":"44px","textAlign":"left","background":"url(http://codegen.caihongy.cn/20230105/89d0f1a180a247e7b32f0f68061455cf.png)  no-repeat center bottom / 100% auto"}'>
		<span :style='{"margin":"0 8px 0 0","fontSize":"16px","lineHeight":"24px","color":"#333"}'>公告信息</span>
	</div>
	
	
	
	
	
	
	
	
	
	<!-- 样式八 -->
	<div v-if="newsList.length" class="list list8 index-pv1" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"none","display":"flex","height":"auto"}'>
	  <div @click="toDetail('newsDetail', newsList[0])" v-if="newsList.length>0" :style='{"cursor":"pointer","padding":"0 10px","margin":"0 0 10px","flexWrap":"wrap","textAlign":"left","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list-item animation-box">
	    <div :style='{"width":"calc(100% - 160px)","padding":"0 10px","height":"auto"}'>
	      <div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#333","fontSize":"14px","lineHeight":"24px","textOverflow":"ellipsis","fontWeight":"600"}'>{{newsList[0].title}}</div>
	      <div :style='{"fontSize":"14px","lineHeight":"24px","overflow":"hidden","color":"#666","textIndent":"2em","height":"96px"}'>{{newsList[0].introduction}}</div>
	      <div :style='{"fontSize":"12px","lineHeight":"24px","color":"#999","textAlign":"right"}'>{{newsList[0].addtime.split(" ")[0]}}</div>
	    </div>
	    <img :style='{"width":"150px","objectFit":"cover","borderRadius":"10% 20%","height":"150px"}' :src="baseUrl + newsList[0].picture" >
	  </div>
	  <div @click="toDetail('newsDetail', newsList[1])" v-if="newsList.length>1" :style='{"cursor":"pointer","padding":"0 10px","margin":"0 0 10px","flexWrap":"wrap","textAlign":"left","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list-item animation-box">
	    <img :style='{"width":"150px","objectFit":"cover","borderRadius":"10% 20%","height":"150px"}' :src="baseUrl + newsList[1].picture" >
	    <div :style='{"width":"calc(100% - 160px)","padding":"0 10px","height":"auto"}'>
	      <div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#333","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}'>{{newsList[1].title}}</div>
	      <div :style='{"fontSize":"14px","lineHeight":"24px","overflow":"hidden","color":"#666","textIndent":"2em","height":"96px"}'>{{newsList[1].introduction}}</div>
	      <div :style='{"fontSize":"12px","lineHeight":"24px","color":"#999","textAlign":"right"}'>{{newsList[1].addtime.split(" ")[0]}}</div>
	    </div>
	  </div>
	  <div @click="toDetail('newsDetail', newsList[2])" v-if="newsList.length>2" :style='{"cursor":"pointer","padding":"0 10px","margin":"0 0 10px","flexWrap":"wrap","textAlign":"left","background":"none","display":"flex","width":"570px","justifyContent":"space-between","height":"auto"}' class="list-item animation-box">
	    <div :style='{"width":"calc(100% - 160px)","padding":"0 10px","height":"auto"}'>
	      <div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#333","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}'>{{newsList[2].title}}</div>
	      <div :style='{"fontSize":"14px","lineHeight":"24px","overflow":"hidden","color":"#666","textIndent":"2em","height":"96px"}'>{{newsList[2].introduction}}</div>
	      <div :style='{"fontSize":"12px","lineHeight":"24px","color":"#999","textAlign":"right"}'>{{newsList[2].addtime.split(" ")[0]}}</div>
	    </div>
	    <img :style='{"width":"150px","objectFit":"cover","borderRadius":"10% 20%","height":"150px"}' :src="baseUrl + newsList[2].picture" >
	  </div>
	  <div @click="toDetail('newsDetail', newsList[3])" v-if="newsList.length>3" :style='{"cursor":"pointer","padding":"0 10px","margin":"0 0 10px","flexWrap":"wrap","textAlign":"left","display":"flex","width":"570px","justifyContent":"space-between","height":"auto"}' class="list-item animation-box">
	    <img :style='{"objectFit":"cover","width":"150px","height":"150px"}' :src="baseUrl + newsList[3].picture" >
	    <div :style='{"width":"calc(100% - 160px)","padding":"10px","height":"auto"}'>
	      <div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#333","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}'>{{newsList[3].title}}</div>
	      <div :style='{"fontSize":"14px","lineHeight":"24px","overflow":"hidden","color":"#666","textIndent":"2em","height":"96px"}'>{{newsList[3].introduction}}</div>
	      <div :style='{"fontSize":"12px","lineHeight":"24px","color":"#999","textAlign":"right"}'>{{newsList[3].addtime.split(" ")[0]}}</div>
	    </div>
	  </div>
	</div>
	
	
	
	<div @click="moreBtn('news')" :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"0px auto","top":"0","textAlign":"center","display":"inline-block","width":"auto","lineHeight":"44px","position":"absolute","right":"0"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>View more</span>
		<i v-if="true" :style='{"color":"#333","fontSize":"14px"}' class="el-icon-d-arrow-right"></i>
	</div>
	
</div>

</div>
</template>

<script>
  export default {
    //Data sets
    data() {
      return {
        baseUrl: '',
        aboutUsDetail: {},
        systemIntroductionDetail: {},
        newsList: [],
        wupinxinxiRecommend: [],
        gongyitonggaoRecommend: [],

      }
    },
    created() {
      this.baseUrl = this.$config.baseUrl;
      this.getNewsList();
      this.getAboutUs();
      this.getSystemIntroduction();
      this.getList();
    },
    //Method sets
    methods: {
      preHttp(str) {
          return str && str.substr(0,4)=='http';
      },
      getAboutUs() {
          this.$http.get('aboutus/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.aboutUsDetail = res.data.data;
            }
          })
      },
      getSystemIntroduction() {
          this.$http.get('systemintro/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.systemIntroductionDetail = res.data.data;
            }
          })
      },
		getNewsList() {
			this.$http.get('news/list', {params: {
				page: 1,
				limit: 3,
			order: 'desc'}}).then(res => {
				if (res.data.code == 0) {
					this.newsList = res.data.data.list;
					
					
				}
			});
		},
		getList() {
          let autoSortUrl = "";
          autoSortUrl = "wupinxinxi/autoSort";
			this.$http.get(autoSortUrl, {params: {
				page: 1,
				limit: 2,
			}}).then(res => {
				if (res.data.code == 0) {
					this.wupinxinxiRecommend = res.data.data.list;
					
					
					// 商品列表样式五
					
				}
			});
          autoSortUrl = "gongyitonggao/autoSort";
			this.$http.get(autoSortUrl, {params: {
				page: 1,
				limit: 2,
			}}).then(res => {
				if (res.data.code == 0) {
					this.gongyitonggaoRecommend = res.data.data.list;
					
					
					// 商品列表样式五
					
				}
			});
			
		},
		toDetail(path, item) {
			this.$router.push({path: '/index/' + path, query: {detailObj: JSON.stringify(item)}});
		},
		moreBtn(path) {
			this.$router.push({path: '/index/' + path});
		}
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.home-preview {
	
		.recommend {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
        }
        
        .list5 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: scale(1.09);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
		
		.news {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list6 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list6 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: scale(1.09);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	
		.lists {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
        }
        
        .list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-next {
            left: auto;
            right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: scale(1.09);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	}
</style>
