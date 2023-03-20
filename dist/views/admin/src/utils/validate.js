"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.isEmail = isEmail;
exports.isMobile = isMobile;
exports.isPhone = isPhone;
exports.isURL = isURL;
exports.isNumber = isNumber;
exports.isIntNumer = isIntNumer;
exports.checkIdCard = checkIdCard;
/**
 * email
 * @param {*} s
 */
function isEmail(s) {
  return (/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(s)
  );
}

/**
 * mobile no
 * @param {*} s
 */
function isMobile(s) {
  return (/^1[0-9]{10}$/.test(s)
  );
}

/**
 * phone no
 * @param {*} s
 */
function isPhone(s) {
  return (/^([0-9]{3,4}-)?[0-9]{7,8}$/.test(s)
  );
}

/**
 * URL
 * @param {*} s
 */
function isURL(s) {
  return (/^http[s]?:\/\/.*/.test(s)
  );
}

/**
 * matching numbers, cannot be negative number or blank
 * @param {*} s 
 */
function isNumber(s) {
  return (/(^-?[+-]?([0-9]*\.?[0-9]+|[0-9]+\.?[0-9]*)([eE][+-]?[0-9]+)?$)|(^$)/.test(s)
  );
}
/**
 * integer check, allows to be empty
 * @param {*} s 
 */
function isIntNumer(s) {
  return (/(^-?\d+$)|(^$)/.test(s)
  );
}
/**
 * check nric
 */
function checkIdCard(idcard) {
  var regIdCard = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
  if (!regIdCard.test(idcard)) {
    return false;
  } else {
    return true;
  }
}
//# sourceMappingURL=validate.js.map