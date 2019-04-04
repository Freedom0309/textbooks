/**
 项目JS主入口
 以依赖layui的layer和form模块为例

 方法：layui.define([mods], callback)

 通过该方法可定义一个 Layui模块。
 参数mods是可选的，用于声明该模块所依赖的模块。callback即为模块加载完毕的回调函数，
 它返回一个exports参数，用于输出该模块的接口
 **/
/*
layui.define(['layer', 'form'], function(exports){
    var layer = layui.layer
        ,form = layui.form;

   // layer.msg('my。。。。');

    //exports('index', {}); //注意，这里是模块输出的核心，模块名必须和use时的模块名一致
    exports('index', function () {
        layer.msg('my。。。sads。');
    });
});*/

/**
 扩展一个test模块
 **/

layui.define(["layer","jquery"],function(exports){ //提示：模块也可以依赖其它模块，如：layui.define('layer', callback);
    var obj = {
        hello: function(str){
            alert('Hello '+ (str||'mymod'));
        }
    };

    //输出test接口
    exports('text', obj);
});