/* */ 
var $def = require("./$.def"),
    _isFinite = require("./$.global").isFinite;
$def($def.S, 'Number', {isFinite: function isFinite(it) {
    return typeof it == 'number' && _isFinite(it);
  }});
