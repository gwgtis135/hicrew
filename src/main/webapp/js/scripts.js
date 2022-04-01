$(document).ready(function (){
console.log('스크립트.js 실행 완료')
    visualHeight();
    userAgentCheck();
    gnb();
    footerEvt();
    modalUi();
    videoPopEvt();
    allMenuEvt();
    hamburgerEvt();
    //windowPopEvt();
    topBtn();
    //tblSortingBtn();
    tabSelectEvt();
    skyBannerEvt();
    productRdoEvt();


    if($('section.main').length){
        bannerEvt();
    }else{
        $('.top_banner').hide();
    }

    if($('.sel_box').length){
        $('.sel_box select').niceSelect();
    }

    if($('.m_print_tab_lst').length){
        $('.m_print_tab_lst select').niceSelect();
    }

    if ($('#map').length) {
        mapApi();
        var delta = 300;
        var timer = null;

        $( window ).on( 'resize', function( ) {
            clearTimeout( timer );
            timer = setTimeout( resizeDone, delta );
        } );

        function resizeDone(){
            mapApi();
        }

        window.addEventListener( 'resize', function( ) {
            clearTimeout( timer );
            timer = setTimeout( resizeDone, delta );
        }, false );

    }

    //footer rolling
    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items : 5,
        nav : true,
        loop : false,
        margin : 0,
        autoplay : false,
        responsive : {
            0 : {
                items : 1,
                loop : true,
                autoplay : true
            },
            480 : {
                items : 2,
                loop : true,
                autoplay : true
            },
            768 : {
                items : 3,
                loop : true,
                autoplay : true
            },
            1025 : {
                items : 4
            }
        }
    });

});

$(window).on('scroll', function() {
    var $scrollTop = $(window).scrollTop();

    if ($scrollTop > 0) {
        $('.top_btn').addClass('fix');
    }

    if ($scrollTop < 290) {
        $('.top_btn').removeClass('fix');
    }

}).scroll();

function hideURLbar() {
    window.scrollTo(0, 1);
}

function userAgentCheck(){
    var ua = window.navigator.userAgent;

    // check Browser
    if(ua.toLowerCase().indexOf('safari') !== -1){

        if(ua.toLowerCase().indexOf('chrome') !== -1){
            $('html').addClass('chrome');

        } else {
            $('html').addClass('safari');
        }

    } else if(ua.toLowerCase().indexOf('firefox') !== -1){
        $('html').addClass('firefox');

    } else if(ua.toLowerCase().indexOf('msie 9.0') !== -1){
        $('html').addClass('ie ie9');

    } else if(ua.toLowerCase().indexOf('msie 10.0') !== -1){
        $('html').addClass('ie ie10');

    } else if(ua.toLowerCase().indexOf('rv:11.0') !== -1){
        $('html').addClass('ie ie11');
    }

}

function topBtn() {

    $('.top_btn .button').on('click',function(){
        $(window).scrollTop(0);
    });

}

function datepickerLib() {
    $(".datepicker").datepicker({
        dateFormat: 'yy-mm-dd' //Input Display Format 변경
        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
        ,changeYear: false //콤보박스에서 년 선택 가능
        ,changeMonth: false //콤보박스에서 월 선택 가능
        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
        ,showButtonPanel: false
    });
}

function hamburgerEvt(){
    $('.hamburger').on('click',function(e) {
        e.preventDefault();
        $(this).toggleClass('on');
    });
}

function allMenuEvt(){
    $('.btn_allmenu').on('click', function() {
        //$(this).toggleClass('on');
        $('#allMenu').toggleClass('open').slideToggle('500');
        return false;
    });
}


function gnb(){
    $('.btn_m_menu').on('click', function() {
        $('.header_cont').addClass('open');

        $('body').css({
            overflow : 'hidden'
        }).bind('touchmove', function(e) {
            e.preventDefault();
        });

        if($(this).hasClass('on')){
            $('.header_cont').removeClass('open');
            $('body').css({
                overflow : 'inherit'
            }).unbind('touchmove');
        }
    });

    //모바일 뎁스 1 펼치기
    $('.depth1_arrow').on('click', function() {
        $(this).parent('li').toggleClass('open');
        $(this).parent('li').siblings('li').removeClass('open');
    });

    //모바일 뎁스 2 펼치기
    $('.depth2_arrow').on('click', function() {
        $(this).parent('.depth_box').toggleClass('open');
        $(this).parent('.depth_box').siblings('.depth_box').removeClass('open');
    });


    $(window).resize(function() {
        if (window.matchMedia('(max-width: 1200px)').matches) {
            gnbHovOff();

        } else {
            $('.header_cont').removeClass('open');
            $('.header_cont .gnb > ul > li').removeClass('open');
            $('.depth_box').removeClass('open');
            $('.btn_m_menu.on').removeClass('on');

            gnbHovOn();
        }
    });

    if (window.matchMedia('(max-width: 1200px)').matches) {
        gnbHovOff();
        $('.depth_box.sys').addClass('open');

    } else {
        gnbHovOn();
    }

    function gnbHovOn(){
        var gnb = $('.gnb');
        var gnbLi = $('.gnb > ul > li');

        gnb.on('mouseout focusout', function() {
            $('header').attr('class','');
        });

        gnbLi.on('mouseover focusin', function() {
            $('header').addClass('on');
        });

        gnbLi.eq(0).on('mouseover focusin', function() {
            $('header').addClass('product');
        });

        gnbLi.eq(1).on('mouseover focusin', function() {
            $('header').addClass('support');
        });

        gnbLi.eq(2).on('mouseover focusin', function() {
            $('header').addClass('newsroom');
        });

        gnbLi.eq(3).on('mouseover focusin', function() {
            $('header').addClass('company');
        });

        gnbLi.eq(4).on('mouseover focusin', function() {
            $('header').addClass('ir');
        });
    }
    function gnbHovOff(){
        var gnb = $('.gnb');
        var gnbLi = $('.gnb > ul > li');

        gnbLi.off('mouseover');
        gnbLi.off('focusin');
        gnbLi.off('mouseout');
        gnbLi.off('focusout');
    }
}

function tabSelectEvt(){

    //tab col class
    var tNum = $('.tab_lst').length;
    for (var i = 0; i < tNum; i++) {
        var ttnum = 'col' + $('.tab_lst').eq(i).find('li').length;
        $('.tab_lst').eq(i).addClass(ttnum);
    }

    var subMenuNum = $('.sub_menu_lst').length;
    for (var i = 0; i < subMenuNum; i++) {
        var ttnum = 'col' + $('.sub_menu_lst').eq(i).find('li').length;
        $('.sub_menu_lst').eq(i).addClass(ttnum);
    }

    var $tabButtonItem = $('.tab_lst li'),
        $tabSelect = $('#tab_select'),
        $tabContents = $('.tab_cont'),
        $likeTabButton = $('.like_tab'), // tab 내의 링크 버튼
        activeClass = 'on';

    $tabButtonItem.first().addClass(activeClass);
    $tabContents.not(':first').hide();
    $tabSelect.niceSelect();

    $tabButtonItem.find('a').on('click', function(e) {
        var target = $(this).attr('href');

        $tabButtonItem.removeClass(activeClass);
        $(this).parent().addClass(activeClass);
        $tabSelect.val(target);
        $tabContents.hide();
        $(target).fadeIn();
        e.preventDefault();

        $tabSelect.niceSelect('update');
    });

    // $likeTabButton.on('click', function (e){
    //     e.preventDefault();
    //
    //     var target = $(this).attr('href');
    //     var $targetLi = $(".tab_lst a[href='" + target + "']").parent('li');
    //
    //     $targetLi.addClass('on');
    //     $targetLi.siblings().removeClass('on');
    //     $tabSelect.val(target);
    //     $tabContents.hide();
    //     $(target).fadeIn();
    //     $tabSelect.niceSelect('update');
    //     $(window).scrollTop(0);
    //
    //     mTab();
    // });

    mTab();


    //모바일 셀렉트 메뉴
    function mTab(){
        $('.m_tab_lst .nice-select li').on('click' , function() {
            var target = $(this).attr('data-value'),
                targetSelectNum = $(this).index();

            $tabButtonItem.removeClass(activeClass);
            $tabButtonItem.eq(targetSelectNum).addClass(activeClass);
            $tabContents.hide();
            $(target).fadeIn();
        });
    }


    $(window).resize(function () {
        visualHeight();
        if (window.matchMedia('(max-width: 768px)').matches) {
            mTab();
        } else {

        }

    });

}

/*function tblSortingBtn(){

    $('#sortingTbl').tablesorter({
        widthFixed : false,

        widgets: [ 'stickyHeaders' ],

        widgetOptions: {
            stickyHeaders_attachTo :'.print_lst',
            stickyHeaders_zIndex : 100
        }

    });

}
*/

function mapApi(){
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(37.48555963993336, 127.11647255990695),
            level: 3
        };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


    // 마커가 표시될 위치입니다
    var markerPosition  = new kakao.maps.LatLng(37.48645339956508, 127.11647255990695);

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    marker.setMap(map);


    // 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
    function zoomIn() {
        map.setLevel(map.getLevel() - 1);
        var moveLatLon = new kakao.maps.LatLng(37.48645339956508, 127.11647255990695);

        // 지도 중심을 이동 시킵니다
        map.setCenter(moveLatLon);
    }

    // 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
    function zoomOut() {
        map.setLevel(map.getLevel() + 1);

        var moveLatLon = new kakao.maps.LatLng(37.48645339956508, 127.11647255990695);
        map.setCenter(moveLatLon);
    }

    function setCenter() {
        // 이동할 위도 경도 위치를 생성합니다
        var moveLatLon = new kakao.maps.LatLng(37.48645339956508, 127.11647255990695);

        // 지도 중심을 이동 시킵니다s
        map.setCenter(moveLatLon);

        // 현재 지도의 레벨을 얻어옵니다
        var level = map.getLevel();

        // 지도를 1레벨 올립니다 (지도가 축소됩니다)
        //map.setLevel(level + 1);

        // 지도 레벨을 표시합니다

    }
    function setCenter2() {
        // 이동할 위도 경도 위치를 생성합니다
        var moveLatLon = new kakao.maps.LatLng(  37.48620851153442, 127.11810036996535 );

        // 지도 중심을 이동 시킵니다
        map.setCenter(moveLatLon);

        // 현재 지도의 레벨을 얻어옵니다
        var level = map.getLevel();

        // 지도를 1레벨 올립니다 (지도가 축소됩니다)
        map.setLevel(level);

        // 지도 레벨을 표시합니다

    }

    if (window.matchMedia('(max-width: 1023px)').matches) {
        setCenter();
    }else {
        setCenter2();
    }

    $('.btn_map').on('click', function(){
        $(this).addClass('on').siblings().removeClass('on');
    });

    $('#btnRoadmap').on('click', function(){
        map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);
    });

    $('#btnSkyview').on('click', function(){
        map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
    });

    $('#mapZoomIn').on('click', function(){
        zoomIn();
    });

    $('#mapZoomOut').on('click',function(){
        zoomOut();
    });
}

function footerEvt(){
    $('.sitemap_btn').on('click',function (e){
        e.preventDefault();
        e.stopPropagation();
        $(this).toggleClass('on');
        if($(this).hasClass('on')){
            $('footer').addClass('open');
        }else{
            $('footer').removeClass('open');
        }
    });

    $('.familysite_control > a').on('click',function (e){
        e.preventDefault();
        e.stopPropagation();
        $(this).toggleClass('on');
        if($(this).hasClass('on')){
            $('.familysite').addClass('open');
        }else{
            $('.familysite').removeClass('open');
        }
    });

    // 타겟영역을 제외하고 클릭했을 시 팝업 숨김처리.
    $('body').click(function() {
        $('.sitemap_btn').removeClass('on');
        $('footer').removeClass('open');
        $('.familysite_control > a').removeClass('on');
        $('.familysite').removeClass('open');
    });
}

function mainRollingEvt(){
    var swiper = new Swiper('#mainSlide.swiper-container', {
        loop: true,
        effect: 'fade',
        autoplay: {
            delay: 9000,
            disableOnInteraction: false,
        },
        speed: 800,
        pagination: {
            el: '.swiper-pagination',
            clickable: true
        },
        // navigation: {
        //     nextEl: '.swiper-button-next',
        //     prevEl: '.swiper-button-prev',
        // },

        /* ON INIT AUTOPLAY THE FIRST VIDEO */
        on: {
            init: function () {
                var currentVideo =  $("[data-swiper-slide-index=" + this.realIndex + "]").find("video");
                currentVideo.trigger('play');
                $('.swiper-slide-active .slide_item').addClass('active');
            },
            transitionStart: function() {
                $('.slide_item').removeClass('active');
            },
            transitionEnd: function() {
                $('.swiper-slide-active .slide_item').addClass('active');
            }
        },
    });

    /* GET ALL VIDEOS */
    var sliderVideos = $(".swiper-slide video");

    /* SWIPER API - Event will be fired after animation to other slide (next or previous) */

    if($('html').hasClass('ie')){
        swiper.on('slideChange', function () {

            /* stop all videos (currentTime buggy without this loop idea - no "real" previousIndex) */
            sliderVideos.each(function( index ) {
                $(this).currentTime = 0;
            });

        });

        $('.swiper-pagination-bullet').on('click',function (){
            $(this).currentTime = 0;
        });


    }else{
        swiper.on('slideChange', function () {

            /* stop all videos (currentTime buggy without this loop idea - no "real" previousIndex) */
            sliderVideos.each(function( index ) {
                this.currentTime = 0;
            });

            var prevVideo =  $("[data-swiper-slide-index=" + this.previousIndex + "]").find("video");
            var currentVideo =  $("[data-swiper-slide-index=" + this.realIndex + "]").find("video");
            currentVideo.trigger('play');
            prevVideo.trigger('stop');
            currentVideo.trigger('play');
        });
    }


    var swiperPagenation = $('.swiper-pagination').find('.swiper-pagination-bullet').length;
    $('.swiper-pagination').addClass('col' + swiperPagenation);



}

function noticeRollingEvt(){
    //공지사항 1개 이상일때 롤링
    if ($('.main_cont_notice .swiper-container .swiper-slide').length > 1){
        var swiper = new Swiper('.main_cont_notice .swiper-container', {
            direction: 'vertical',
            loop: true,
            speed: 600,
            autoplay: {
                delay: 8000,
                //disableOnInteraction: false,
            },
        });
    }

}

function modalUi() {
    $('.modalLoad').on('click',function(){
        var $self = $(this);
        var $thisrel = $self.attr('href');
        var $thisid = $self.attr('id');
        var $target = $($thisrel);
        /* 보이스아이 브로슈어 다운로드 팝업 버튼 제어 */
        if($thisid == "voiceyePop"){
        	$(".othBtn").css("display", "none");
        	$(".voiceyeBtn").css("display", "block");
        	$(".motorolaBtn").css("display", "none");
        }else if($thisid == "motorolaPop"){
        	$(".othBtn").css("display", "none");
        	$(".voiceyeBtn").css("display", "none");
        	$(".motorolaBtn").css("display", "block");
        }else{
        	$(".othBtn").css("display", "block");
        	$(".voiceyeBtn").css("display", "none");
        	$(".motorolaBtn").css("display", "none");
        }
        // open and focusin
        $target.attr('tabindex', '0').fadeIn(250).focus();

        // create sizing
        // var layerHeight = $target.outerHeight();
        // var layerWidth = $target.outerWidth();
        // $target.css({
        //     marginLeft : -layerWidth/2,
        //     marginTop : -layerHeight/2
        // });

        // create background
        createDim();

        // keydown focus repeat
        $target.find(".close").on('keydown', function(e){
            if(e.which=='9'){
                $target.attr('tabindex', '0').focus();
            }
        });

        // close and focusout
        $target.find(".close").on('click',function(e){
            e.preventDefault();
            $target.fadeOut(250);
            $self.focus();
            $(this).off('click');
            var isVisible = $target.is(':visible');
            var modalLength = $('.modal:visible').length;

            if (isVisible) {
                if (modalLength <= 1) {
                    removeDim();
                } else {

                }
            }

            if($('video').length){
                videoStop();
                //console.log('pause');
            }
        });

        $target.find(".modalLoad").on('click',function(e){
            e.preventDefault();
            $self.focus();
            var isVisible = $target.is(':visible');
            var modalLength = $('.modal:visible').length;
            console.log(modalLength);
        });

        $(document).on("keyup", function(e){
            if(e.which=='27'){
                $target.fadeOut(250);
                removeDim();
                $self.focus();
            }
        });

    });
}

function createDim(){
    if (!$('.dim').length) {
        $('body').append('<div class="dim"></div>');
    }
    $('.dim').fadeIn(250);
    $('html , body').css({
        overflow : 'hidden'
    }).bind('touchmove', function(e) {
        e.preventDefault();
    });
}

function removeDim(){
    $('.dim').fadeOut(250);
    $('html , body').css({
        overflow : 'inherit'
    }).unbind('touchmove');
}

function videoPopEvt(){

    var video = $('#videoPop').find('video');

    if($('#videoPop video').length){
        function play(){
            video.get(0).currentTime = 0;
            video.get(0).play();
        }
        // function pause(){
        //     video.get(0).pause();
        // }
        // function stop(){
        //     video.get(0).pause();
        //     video.get(0).currentTime = 0;
        // }

        $('#videoPopPlay').on('click',function (e){
            e.preventDefault();
            play();
        });
        // $('#videoPopStop').on('click',function (e){
        //     e.preventDefault();
        //     stop();
        // });
    }

}

function videoStop(){
    var video = $('#videoPop').find('video');

    video.get(0).pause();
    video.get(0).currentTime = 0;
}

// function windowPopEvt() {
//     $(".printSupportLink").click(function(e){
//         e.preventDefault;
//
//         var _width = '1000';
//         var _height = '970';
//         var targetWid = $('body').width();
//         var targetHei = $('body').height();
//
//         // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
//         var _left = Math.ceil(( targetWid - _width )/2);
//         var _top = Math.ceil(( targetHei - _height )/2);
//
//
//         var popUrl ="http://211.236.246.30:8080/PLM/service/pl/info.jsp";
//         var popOption = "width=1020, height=970, resizable=no, location=no," + "top="+ _top + ", left= "+ _left ;
//
//         window.open(popUrl,"타이틀들어갈제목 ", popOption);
//
//     });
//
// }

function bannerEvt(){
    $('body').addClass('main');
    $('.top_banner').addClass('show');
    
    $("#bannerPrev").addClass('disabled');
    $("#bannerNext").addClass('disabled');
    
    if ($('#topBanner .top_banner_item').length > 1){
    	$("#bannerNext").removeClass('disabled');
        //$('#topBanner .top_banner_item').eq(1).hide();
        //$('.top_banner_nav').show();
    	
        $("#bannerNext").on('click', function (event) {
            event.preventDefault();
            var displayItemIndex = $('.top_banner_item:visible').index();
            var lastItemIndex = $('.top_banner_item').length-1;
            if(displayItemIndex != lastItemIndex){
            	$('#topBanner .top_banner_item').eq(displayItemIndex).hide();
                $('#topBanner .top_banner_item').eq(displayItemIndex+1).show();
            }
            
            if($("#bannerPrev").hasClass('disabled')){
	       		$("#bannerPrev").removeClass('disabled');
	       	}
            
            if(displayItemIndex+1 == lastItemIndex){
            	 if(!$("#bannerNext").hasClass('disabled')){
            		 $("#bannerNext").addClass('disabled');
            	 }
            	 
            }
        });

        $("#bannerPrev").on('click', function (event) {
            event.preventDefault();
            var displayItemIndex = $('.top_banner_item:visible').index();
            if(displayItemIndex != 0){
            	$('#topBanner .top_banner_item').eq(displayItemIndex).hide();
                $('#topBanner .top_banner_item').eq(displayItemIndex-1).show();
            }
            if($("#bannerNext").hasClass('disabled')){
        		$("#bannerNext").removeClass('disabled');
           	 }
            if(displayItemIndex == 1){
            	if(!$("#bannerPrev").hasClass('disabled')){
	           		$("#bannerPrev").addClass('disabled');
            	}
            }
        });


        if($('.btn.item_control').hasClass('disabled')){
            $(this).off('click');
        }

    }

    (function (factory) {
            if (typeof define === 'function' && define.amd) {
                // AMD (Register as an anonymous module)
                define(['jquery'], factory);
            } else if (typeof exports === 'object') {
                // Node/CommonJS
                module.exports = factory(require('jquery'));
            } else {
                // Browser globals
                factory(jQuery);
            }
        }
        (function ($) {

            var pluses = /\+/g;

            function encode(s) {
                return config.raw ? s : encodeURIComponent(s);
            }

            function decode(s) {
                return config.raw ? s : decodeURIComponent(s);
            }

            function stringifyCookieValue(value) {
                return encode(config.json ? JSON.stringify(value) : String(value));
            }

            function parseCookieValue(s) {
                if (s.indexOf('"') === 0) {
                    // This is a quoted cookie as according to RFC2068, unescape...
                    s = s.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, '\\');
                }

                try {
                    // Replace server-side written pluses with spaces.
                    // If we can't decode the cookie, ignore it, it's unusable.
                    // If we can't parse the cookie, ignore it, it's unusable.
                    s = decodeURIComponent(s.replace(pluses, ' '));
                    return config.json ? JSON.parse(s) : s;
                } catch (e) {
                }
            }

            function read(s, converter) {
                var value = config.raw ? s : parseCookieValue(s);
                return $.isFunction(converter) ? converter(value) : value;
            }

            var config = $.cookie = function (key, value, options) {

                // Write

                if (arguments.length > 1 && !$.isFunction(value)) {
                    options = $.extend({}, config.defaults, options);

                    if (typeof options.expires === 'number') {
                        var days = options.expires, t = options.expires = new Date();
                        t.setMilliseconds(t.getMilliseconds() + days * 864e+5);
                    }

                    return (document.cookie = [
                        encode(key), '=', stringifyCookieValue(value),
                        options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
                        options.path ? '; path=' + options.path : '',
                        options.domain ? '; domain=' + options.domain : '',
                        options.secure ? '; secure' : ''
                    ].join(''));
                }

                // Read

                var result = key ? undefined : {},
                    // To prevent the for loop in the first place assign an empty array
                    // in case there are no cookies at all. Also prevents odd result when
                    // calling $.cookie().
                    cookies = document.cookie ? document.cookie.split('; ') : [],
                    i = 0,
                    l = cookies.length;

                for (; i < l; i++) {
                    var parts = cookies[i].split('='),
                        name = decode(parts.shift()),
                        cookie = parts.join('=');

                    if (key === name) {
                        // If second argument (value) is a function it's a converter...
                        result = read(cookie, value);
                        break;
                    }

                    // Prevent storing a cookie that we couldn't decode.
                    if (!key && (cookie = read(cookie)) !== undefined) {
                        result[name] = cookie;
                    }
                }

                return result;
            };

            config.defaults = {};

            $.removeCookie = function (key, options) {
                // Must not alter options, thus extending a fresh object...
                $.cookie(key, '', $.extend({}, options, {expires: -1}));
                return !$.cookie(key);
            };

        })
    );

    // 저장된 쿠키값이 Y가 아니라면 팝업창을 생성
    if ($.cookie("noShowToday") != "Y") {
        $("#topBanner").css('display', 'block');
        $('body').removeClass('closeBanner');
    } else {
        $("#topBanner").css('display', 'none');
        $('body').addClass('closeBanner');
    }

    // 닫기 버튼 클릭시
    $("#bannerClose").click(function (event) {
        // 링크의 페이지 이동 속성 강제 차단
        event.preventDefault();

        if ($('#noShowToday').is(":checked")) {
            // 쿠키값을 "Y"로 하여 하루동안 저장시킴
            $.cookie("noShowToday", "Y", {
                expires: 1
            });
        }

        $(".top_banner").toggleClass('show');
        $('body').toggleClass('closeBanner');

    });


    scrollTopEvt();

    function scrollTopEvt(){
        $(window).scroll(function(){
            var height = $(window).scrollTop();
            var bannerHei = $('#topBanner').height();

            if(!$('body.closeBanner').length){

                if(height > 1){
                    $('body').addClass('headerFix');
                    $('body').addClass('bannerHide');
                    $('.top_banner').removeClass('show');
                }else{
                    $('body').removeClass('headerFix');
                    $('body').removeClass('bannerHide');
                    $('.top_banner').addClass('show');
                }

            }else{


            }
        });
    }

    $(window).resize(function () {
        if (window.matchMedia('(max-width: 1200px)').matches) {

        } else {

        }

    });
}

function skyBannerEvt(){
    var rc = $('section.sub.product #redCastle').length;
    var vc = $('section.sub.product #virusChaser10').length;
    var daloc = $('section.sub.product #daLoc').length;
    var mypc = $('section.sub.product #vcMypc').length;
    var company = $('section.sub.company').length;
    var newsroom = $('section.sub.newsroom').length;
    //var vAegis = $('section.sub.product #vAegis').length;


    if($('section.sub.product').length){

        if(rc || daloc || mypc || vc){
            $('body').append('' +'<div class="sky_banner show">'+
                '<div class="swiper-container">\n' +
                '  <!-- Additional required wrapper -->\n' +
                '  <div class="swiper-wrapper">\n' +
                '    <!-- Slides -->\n' +
                '    <div class="swiper-slide"><a href="/newsRoom/promotionEventView?prmtEvtIdx=2&promotionEventSel=3&state=Y&scolumn=&page=1&skeyword=" class="sky_banner_wrap"><img src="/resources/user/assets/images/skybanner/비대면바우처.png" alt=""><a href="#" class="sky_banner_close">닫기</a></a></div>\n' +
                '    <div class="swiper-slide"><a href="/newsRoom/promotionEventView?prmtEvtIdx=19&promotionEventSel=1&state=Y&scolumn=&page=1&skeyword=" class="sky_banner_wrap"><img src="/resources/user/assets/images/skybanner/뉴스레터-홈페이지-구독-유입-팝업230.png" alt=""><a href="#" class="sky_banner_close">닫기</a></a></div>\n' +
                '  </div>\n' +
                '</div>'+'</div>');
        }else{
            $('body').append('' +'<div class="sky_banner show">'+
                '<a href="/newsRoom/promotionEventView?prmtEvtIdx=19&promotionEventSel=1&state=Y&scolumn=&page=1&skeyword=" class="sky_banner_wrap">' +
                '<img src="/resources/user/assets/images/skybanner/뉴스레터-홈페이지-구독-유입-팝업230.png" alt="">' +
                '<a href="#" class="sky_banner_close">닫기</a>' +
                '</a>'
                +'</div>');
        }

    }else if(newsroom || company){
        $('body').append('' +'<div class="sky_banner show">'+
            '<a href="/newsRoom/promotionEventView?prmtEvtIdx=19&promotionEventSel=1&state=Y&scolumn=&page=1&skeyword=" class="sky_banner_wrap">' +
            '<img src="/resources/user/assets/images/skybanner/뉴스레터-홈페이지-구독-유입-팝업230.png" alt="">' +
            '<a href="#" class="sky_banner_close">닫기</a>' +
            '</a>'
            +'</div>');
    }
    else{
        $('.sky_banner').addClass('hide');
    }


    $('.sky_banner_close').on('click', function (e){
        e.preventDefault();
        $('.sky_banner').removeClass('show').fadeOut(250);
    });

    var swiper = new Swiper('.sky_banner .swiper-container', {
        loop: true,
        effect: 'fade',
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        speed: 800,
    });
}

function visualHeight(){
    var bodyHei = $('body').innerHeight();
    
    //제품메인
    $('.sub_main_top').height(bodyHei - 60);
    
    //메인
    $('.main_visual').height(bodyHei - 60);

}

function productRdoEvt (){
    var targetRdo = $('.product_box_lst .rdo_box input[type=radio]');

    targetRdo.change(function (){
        $('.m_pdt_select *').remove();

        if(targetRdo.is(":checked")){
            $(this).siblings('label').clone().appendTo('.m_pdt_select');
        }else{

        }

    });
}