// 成功函数
function success(obj, msg) {
    obj.removeClass('has-error').addClass('has-success');
    obj.find('.tips').hide();
    obj.find('.glyphicon-ok').show();
    obj.find('.glyphicon-remove').hide();
}

// 失败函数
function fail(obj, msg) {
    obj.removeClass('has-success').addClass('has-error');
    obj.find('.glyphicon-remove').show();
    obj.find('.glyphicon-ok').hide();
    obj.find('.tips').text(msg).show();
}

// 姓名
$(document).ready(function() {
    $('#apply-name-div').find('#apply-name').change(function() {
        success($("#apply-name-div"));
    });
});

// 身份证号码
var regId = /^[0-9]{17}[0-9Xx]$/;
$(document).ready(function() {
    $('#apply-id-div').find("#apply-id").change(function() {
        if (regId.test($(this).val())) {
            success($("#apply-id-div"));
        } else {
            fail($("#apply-id-div"), '身份证号只能为18位，并且只有最后一位可以为字母X');
        }
    });
});

// 手机号码
var regTel = /^[0-9]{11}$/;
$(document).ready(function() {
    $('#apply-tel-div').find("#apply-tel").change(function() {
        if (regTel.test($(this).val())) {
            success($("#apply-tel-div"));
        } else {
            fail($("#apply-tel-div"), '手机号码只能为11位数字');
        }
    });
});


