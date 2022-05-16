// 手機漢堡夾Navbar 收合
$('.mobile-btn').click(function () {

    if ($('.mobile-menu').hasClass('mobile-menu-on')) {
        $('.mobile-menu').removeClass('mobile-menu-on');
    }
    else {
        $('.mobile-menu').addClass('mobile-menu-on');
    }

    // 下面是 漢堡三條線變化
    if ($('.mobilebtn-1').hasClass('mobilebtn-1-on')) {
        $('.mobilebtn-1').removeClass('mobilebtn-1-on');
    }
    else {
        $('.mobilebtn-1').addClass('mobilebtn-1-on');
    }

    if ($('.mobilebtn-2').hasClass('mobilebtn-2-on')) {
        $('.mobilebtn-2').removeClass('mobilebtn-2-on');
    }
    else {
        $('.mobilebtn-2').addClass('mobilebtn-2-on');
    }

    if ($('.mobilebtn-3').hasClass('mobilebtn-3-on')) {
        $('.mobilebtn-3').removeClass('mobilebtn-3-on');
    }
    else {
        $('.mobilebtn-3').addClass('mobilebtn-3-on');
    }
});