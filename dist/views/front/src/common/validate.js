'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = {
  isEmail2: function isEmail2(s) {
    return (/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(s)
    );
  },
  isEmail: function isEmail(rule, value, callback) {
    var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/;
    if (value && reg.test(value) === false) {
      callback(new Error('Please enter correct format of email address.'));
    } else {
      callback();
    }
  },
  isEmailNotNull: function isEmailNotNull(rule, value, callback) {
    var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/;
    if (value && reg.test(value) === false) {
      callback(new Error('Please enter correct format of email address.'));
    } else if (!value) {
      callback(new Error('Please enter your email address.'));
    } else {
      callback();
    }
  },
  isMobile2: function isMobile2(s) {
    return (/^1[0-9]{10}$/.test(s)
    );
  },
  isMobile: function isMobile(rule, value, callback) {
    var reg = /^1[0-9]{10}$/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的手机号码'));
    } else {
      callback();
    }
  },
  isMobileNotNull: function isMobileNotNull(rule, value, callback) {
    var reg = /^1[0-9]{10}$/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的手机号码'));
    } else if (!value) {
      callback(new Error('请输入手机号码'));
    } else {
      callback();
    }
  },
  isPhone: function isPhone(rule, value, callback) {
    var reg = /^([0-9]{3,4}-)?[0-9]{7,8}$/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的电话号码'));
    } else {
      callback();
    }
  },
  isPhoneNotNull: function isPhoneNotNull(rule, value, callback) {
    var reg = /^([0-9]{3,4}-)?[0-9]{7,8}$/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的电话号码'));
    } else if (!value) {
      callback(new Error('请输入电话号码'));
    } else {
      callback();
    }
  },
  isURL: function isURL(rule, value, callback) {
    var reg = /^http[s]?:\/\/.*/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的URL地址'));
    } else {
      callback();
    }
  },
  isURLNotNull: function isURLNotNull(rule, value, callback) {
    var reg = /^http[s]?:\/\/.*/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的URL地址'));
    } else if (!value) {
      callback(new Error('请输入地址'));
    } else {
      callback();
    }
  },
  isNumber: function isNumber(rule, value, callback) {
    var reg = /(^-?[+-]?([0-9]*\.?[0-9]+|[0-9]+\.?[0-9]*)([eE][+-]?[0-9]+)?$)|(^$)/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的数字'));
    } else {
      callback();
    }
  },
  isNumberNotNull: function isNumberNotNull(rule, value, callback) {
    var reg = /(^-?[+-]?([0-9]*\.?[0-9]+|[0-9]+\.?[0-9]*)([eE][+-]?[0-9]+)?$)|(^$)/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的数字'));
    } else if (!value) {
      callback(new Error('请输入数字'));
    } else {
      callback();
    }
  },
  isIntNumer: function isIntNumer(rule, value, callback) {
    var reg = /(^-?\d+$)|(^$)/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的整数'));
    } else {
      callback();
    }
  },
  isIntNumerNotNull: function isIntNumerNotNull(rule, value, callback) {
    var reg = /(^-?\d+$)|(^$)/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的整数'));
    } else if (!value) {
      callback(new Error('请输入整数'));
    } else {
      callback();
    }
  },
  isIdCard: function isIdCard(rule, value, callback) {
    var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的身份证'));
    } else {
      callback();
    }
  },
  isIdCardNotNull: function isIdCardNotNull(rule, value, callback) {
    var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
    if (value && reg.test(value) === false) {
      callback(new Error('请输入正确的身份证'));
    } else if (!value) {
      callback(new Error('请输入身份证'));
    } else {
      callback();
    }
  }
};
//# sourceMappingURL=validate.js.map