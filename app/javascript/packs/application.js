// Punto de entrada principal de'
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
var $ = require("jquery");
require("jquery.easing");
require("bootstrap");

// Make $ and jQuery globals
window.jQuery = $;
window.$ = $;

// Plugins para las páginas internas del dashboard
// require('chart.js');

// Archivos personalizados para las páginas internas del dahsboard
require("custom/sb-admin-2");
require("custom/requirements");
require("custom/admin/requirements");
// require('vendor/datatables/jquery.dataTables.min');
// require('datatables.net-bs4')($);

// require('custom/demo/chart-area-demo');
// require('custom/demo/chart-pie-demo');
// require('custom/demo/chart-bar-demo');

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
