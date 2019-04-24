/**
 项目JS主入口
 以依赖layui的layer和form模块为例
 **/
layui.define(['layer'], function(exports){
    var layer = layui.layer
    var obj = {
        hello: function(str){
           layer.alert("sdas");
        }
    };
    exports('index', obj); //注意，这里是模块输出的核心，模块名必须和use时的模块名一致
});