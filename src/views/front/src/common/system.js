export function isAuth(tableName, key) {
  let role = localStorage.getItem("UserTableName");
  let menus = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除"],"menu":"物品类型","menuJump":"列表","tableName":"wupinleixing"}],"menu":"物品类型管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","查看评论"],"menu":"物品信息","menuJump":"列表","tableName":"wupinxinxi"}],"menu":"物品信息管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除"],"menu":"交易信息","menuJump":"列表","tableName":"jiaoyixinxi"}],"menu":"交易信息管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","查看评论"],"menu":"公益通告","menuJump":"列表","tableName":"gongyitonggao"}],"menu":"公益通告管理"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["新增","查看","修改","删除"],"menu":"紧急程度","menuJump":"列表","tableName":"jinjichengdu"}],"menu":"紧急程度管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除"],"menu":"捐赠类型","menuJump":"列表","tableName":"juanzengleixing"}],"menu":"捐赠类型管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除","评价"],"menu":"公益捐赠","menuJump":"列表","tableName":"gongyijuanzeng"}],"menu":"公益捐赠管理"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["新增","查看","修改","删除"],"menu":"感谢评价","menuJump":"列表","tableName":"ganxiepingjia"}],"menu":"感谢评价管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-brand","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-time","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["查看","修改"],"menu":"公告信息","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","交易"],"menu":"物品信息列表","menuJump":"列表","tableName":"wupinxinxi"}],"menu":"物品信息模块"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","捐赠"],"menu":"公益通告列表","menuJump":"列表","tableName":"gongyitonggao"}],"menu":"公益通告模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"紧急程度列表","menuJump":"列表","tableName":"jinjichengdu"}],"menu":"紧急程度模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看","支付"],"menu":"交易信息","menuJump":"列表","tableName":"jiaoyixinxi"}],"menu":"交易信息管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["查看"],"menu":"公益捐赠","menuJump":"列表","tableName":"gongyijuanzeng"}],"menu":"公益捐赠管理"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["查看"],"menu":"感谢评价","menuJump":"列表","tableName":"ganxiepingjia"}],"menu":"感谢评价管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","交易"],"menu":"物品信息列表","menuJump":"列表","tableName":"wupinxinxi"}],"menu":"物品信息模块"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","捐赠"],"menu":"公益通告列表","menuJump":"列表","tableName":"gongyitonggao"}],"menu":"公益通告模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"紧急程度列表","menuJump":"列表","tableName":"jinjichengdu"}],"menu":"紧急程度模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}];
  for(let i=0;i<menus.length;i++){
    if(menus[i].tableName==role){
      for(let j=0;j<menus[i].frontMenu.length;j++){
          for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
            if(tableName==menus[i].frontMenu[j].child[k].tableName){
              let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
              return buttons.indexOf(key) !== -1 || false
            }
          }
      }
    }
  }
  return false;
}

/**
 *  * Obtain current time（yyyy-MM-dd hh:mm:ss）
 *   */
export function getCurDateTime() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
    hour = currentTime.getHours(),
    minute = currentTime.getMinutes(),
    second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " +hour +":" +minute+":"+second;
}

/**
 *  * Obtain current date（yyyy-MM-dd）
 *   */
export function getCurDate() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
