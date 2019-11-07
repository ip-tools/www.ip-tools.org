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

    // Set version number in footer at runtime.
    $('#version').html(__version__);

    // Initialize tabs for navigation.
    $('.tabs').tabs({onShow: show_tab});

});

function show_tab(tab) {

    // Adjust URL hash to support browsing state/history.
    var name = tab.id;
    if (history.pushState) {
        history.pushState(null, null, '#' + name);
    }
    else {
        location.hash = name;
    }

}
