const config = require('./webpack.config');
const webpack = require('webpack');
const WebpackNotifierPlugin = require('webpack-notifier');

config.mode = "development";
config.optimization = {runtimeChunk: "single"};
config.plugins.push(

    // https://www.npmjs.com/package/webpack-notifier
    new WebpackNotifierPlugin(),

);

module.exports = config;
