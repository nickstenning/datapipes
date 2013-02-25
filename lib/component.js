// Generated by CoffeeScript 1.4.0
(function() {
  var Component, events,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  events = require('events');

  Component = (function(_super) {

    __extends(Component, _super);

    function Component() {
      return Component.__super__.constructor.apply(this, arguments);
    }

    Component.prototype.emits = null;

    Component.prototype.takes = null;

    Component.prototype.emit = function(val) {
      return Component.__super__.emit.call(this, 'data', val);
    };

    Component.prototype.notify = function(listener) {
      return this.on('data', function(val) {
        return listener.take(val);
      });
    };

    Component.prototype.canTakeFrom = function(component) {
      var input, takes;
      if (!component) {
        return false;
      }
      takes = this.takes ? this.takes.split('.') : [];
      input = component.emits ? component.emits.split('.') : [];
      input = input.slice(0, takes.length);
      if (input.join('.') === takes.join('.')) {
        return true;
      } else {
        return false;
      }
    };

    return Component;

  })(events.EventEmitter);

  exports.Component = Component;

}).call(this);