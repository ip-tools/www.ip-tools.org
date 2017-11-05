require('jquery');
require('materialize-css/dist/css/materialize.css');
require('materialize-css/dist/js/materialize.js');

//require('csi/src/csi.js');

require('../css/material-icons.css');
require('pygments-css/friendly.css');
require('github-fork-ribbon-css/gh-fork-ribbon.css');

require('../css/main.css');

require('./version.js');
$(document).ready(function() {
    //$('#navigation').tabs({swipeable: true});
    $('#version').html(__version__);
});
