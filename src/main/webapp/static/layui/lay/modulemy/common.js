//ajax定义
layui.define(['jquery'], function(exports){
    var $ = layui.jquery;
    var obj = {
        ajax: function (url, type, dataType, data, callback) {
            $.ajax({
                url: url,
                type: type,
                dataType: dataType,
                data: data,
                success: callback
            });
        }
    };
    //输出接口
    exports('common', obj);
});
