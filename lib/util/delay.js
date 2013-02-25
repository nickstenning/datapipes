// Generated by CoffeeScript 1.4.0
(function() {
  var Component, Delayer,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Component = require('../component').Component;

  Delayer = (function(_super) {

    __extends(Delayer, _super);

    Delayer.prototype.takes = '';

    Delayer.prototype.emits = '';

    function Delayer(delay) {
      this.delay = delay;
    }

    Delayer.prototype.take = function(input) {
      var _this = this;
      return setTimeout((function() {
        return _this.emit(input);
      }), this.delay);
    };

    return Delayer;

  })(Component);

  module.exports = function(delay) {
    return new Delayer(delay);
  };

}).call(this);