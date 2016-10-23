/**
 * @file require 配置和入口
 * @author ray
 * Created by ray on 15-1-26.
 */
window.buildNumber = window.hulk_version ? window.hulk_version : '1.1.2';
require.config({
    paths: {
        jquery: '../js/jquery.min',
    },
    shim: {
        /*underscore: {
            exports: '-'
        },
        backbone: {
            exports: 'Backbone',
            deps: ['jquery', 'underscore']
        }*/

    },
    deps: ['jquery'],
    urlArgs: 'v=' + window.buildNumber
});
require([
    './app',
    '../routers/index'
], function (app, index ) {
    'use strict';
    console.log(1111);
    console.log(app);
    console.log(222);
});
