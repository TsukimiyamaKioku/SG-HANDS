'use strict';

Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.isAuth = isAuth;
exports.getCurDateTime = getCurDateTime;
exports.getCurDate = getCurDate;

var _storage = require('./storage');

var _storage2 = _interopRequireDefault(_storage);

var _menu = require('./menu');

var _menu2 = _interopRequireDefault(_menu);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/**
 * Check whether user has the admin right
 * @param {*} key
 */
function isAuth(tableName, key) {
    var role = _storage2.default.get("role");
    if (!role) {
        role = '管理员';
    }
    var menus = _menu2.default.list();
    for (var i = 0; i < menus.length; i++) {
        if (menus[i].roleName == role) {
            for (var j = 0; j < menus[i].backMenu.length; j++) {
                for (var k = 0; k < menus[i].backMenu[j].child.length; k++) {
                    if (tableName == menus[i].backMenu[j].child[k].tableName) {
                        var buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false;
                    }
                }
            }
        }
    }
    // for(let i=0;i<menus.length;i++){
    //     if(menus[i].roleName==role){
    //         for(let j=0;j<menus[i].backMenu.length;j++){
    //             if(menus[i].backMenu[j].tableName==tableName){
    //                 let buttons = menus[i].backMenu[j].child[0].buttons.join(',');
    //                 return buttons.indexOf(key) !== -1 || false
    //             }
    //         }
    //     }
    // }
    return false;
}

/**
 *  * Obtain current time（yyyy-MM-dd hh:mm:ss）
 *   */
function getCurDateTime() {
    var currentTime = new Date(),
        year = currentTime.getFullYear(),
        month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
        day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
        hour = currentTime.getHours(),
        minute = currentTime.getMinutes(),
        second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " + hour + ":" + minute + ":" + second;
}

/**
 *  *Obtain current date（yyyy-MM-dd）
 *   */
function getCurDate() {
    var currentTime = new Date(),
        year = currentTime.getFullYear(),
        month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
        day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
//# sourceMappingURL=utils.js.map