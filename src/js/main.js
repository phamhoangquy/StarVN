$(document).ready(function() {

    var path = window.location.href;
    let Ketqua = path.substr(path.indexOf("#") + 1);
    console.log(Ketqua);
    if (path.indexOf("#") != -1) {
        $("html,body").animate({
                scrollTop: $("#" + Ketqua).offset().top -
                    $("header").outerHeight() -
                    47,
            },
            800
        );
    }
    AOS.init({
        disable: "mobile",
        duration: 1500,
        easing: 'ease-in-sine',
    })
    setBackgroundElement();
    mappingMenu();
    toggleMobileMenu();
    swiperInit();
    tabActive();
    serviceDetailSlide();
    srcollMenu();
    linkSrcollAbout();
    AddHiddenFormContact();
    AddHiddenPopupForm();
    showBackToTop();
});


// link srcoll section to about
function srcollMenu() {
    $(".menu-nav li a").on("click", function(event) {
        if (this.hash !== "") {
            let offset = $("header").outerHeight() + 50;
            var hash = this.hash;
            $(this).parent().addClass('active').siblings().removeClass("active")
            $("html, body").animate({
                    scrollTop: $(hash).offset().top - offset,
                },
                800,
                function() {
                    window.location.hash = hash;
                }
            );
        } // End if
    });
    $(".has-mega-menu  a").on("click", function(e) {
        if ("" !== this.hash) {
            var i = $("header").outerHeight() + 90,
                t = this.hash;
            $(this)
                .parent()
                .addClass("active")
                .siblings()
                .removeClass("active"),
                $("html, body").animate({ scrollTop: $(t).offset().top - i },
                    800
                );
        }
    });
}

$('.collapse').click(function(e) {
    e.preventDefault();
    $("a:first-of-type").removeClass('click');

    var $this = $(this);
    if ($this.next().hasClass('show')) {
        $this.next().removeClass('show');
        $this.next().slideUp(350);
    } else {
        $this.parent().parent().find('li .collapse-inner').removeClass('show');
        $this.parent().parent().find('li .collapse-inner').slideUp(350);
        $this.toggleClass('click');
        $this.next().toggleClass('show');
        $this.next().slideToggle(350);
    }
});

const AddHiddenFormContact = () => {
    $(".contact .wrap-form option[value=US]").prev().attr("hidden", "");
    $(".contact .wrap-form option[value=HCM]").prev().attr("hidden", "");
    $("#ctl00_mainContent_ctl04_ctlc01c3889b6354d3d919ad02e31c3de3f_ddc01c3889b6354d3d919ad02e31c3de3f option").eq(0).attr("hidden", "");
    $("#ctl00_mainContent_ctl04_ctl11e58491bfbe4db8a8b0886e1476d951_dd11e58491bfbe4db8a8b0886e1476d951 option").eq(0).attr("hidden", "");
};

const AddHiddenPopupForm = () => {
    $("#requestForm .wrap-form .qdropdown select option[value=a71d6727-61e7-4282-9fcb-526d1e7bc24f]").prev().attr("hidden", "");
    $("#ctl00_mdl139_ctl00_uc74c1b30e18194101a6520a126d4112f0_ddCountry option").eq(0).attr("hidden", "");
    $("#ctl00_mdl139_ctl00_uc74c1b30e18194101a6520a126d4112f0_ddProvince option").eq(0).attr("hidden", "");
};
// const InsertBd = () => {
//     $(".breadcrumb-wrapper").appendTo("#pagebanner .box-text");
// };

function height(el) {
    var height = 0;
    $(el).each(function() {
        var thisHeight = $(this).height();
        if (thisHeight > height) {
            height = thisHeight;
        }
        setTimeout(() => {
            $(el).height(height)
        }, 100)
    })
}

let header = {
    headerScroll: () => {
        let heightHeader = $('header').height();
        $(window).scrollTop() > heightHeader ? $('header').addClass('header-scroll') : $('header').removeClass('header-scroll');
    }
}

let request = {
    requestScroll: () => {
        let heightRequest = $('.requestform').height();
        $(window).scrollTop() > heightRequest ? $('.requestform').addClass('request-scroll') : $('.requestform').removeClass('request-scroll');
    }
}

let about = {
    aboutScroll: () => {
        let heightRequest = $('.srcoll-menu').height();
        $(window).scrollTop() > heightRequest ? $('.srcoll-menu').addClass('about-scroll') : $('.srcoll-menu').removeClass('about-scroll');
    }
}

function setBackgroundElement() {
    $('[setBackground]').each(function() {
        var background = $(this).attr('setBackground')
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-size": "cover",
            "background-position": "center center"
        });
    });
    $('[setBackgroundRepeat]').each(function() {
        var background = $(this).attr('setBackgroundRepeat')
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-repeat": "repeat"
        });
    });
}

function showBackToTop() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 0) {
            $('#back-to-top').addClass('active');
        } else {
            $('#back-to-top').removeClass('active');
        }
    });

    $("#back-to-top").on("click", function(e) {
        e.preventDefault();
        $("html,body").animate({
            scrollTop: 0
        })
    })
}

function tabActive() {
    $(".tab-navigation li a").on("click", function() {
        $(this)
            .parents(".tab-navigation")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item").removeClass("active");
        $("#" + display).addClass("active");

        let maxHeight = 400;
        let contentTab = $(".tab-wrapper .tab-item.active");
        // console.log(contentTab.height())
        if (contentTab.height() < maxHeight) {
            $(contentTab).find('.btn-view-more').hide()
        }
    });
}

function toggleMobileMenu() {
    var mega = $('.nav-menu .mega-menu')
    var m_list = $('.menu-list .mega-list')
    var mobile = $('.menu_mobile')
    var list = $('.menu-list')
    var arrow_1 = $('.moblie-show-menu span')
    var arrow_2 = $('.moblie-show-mega span')
    var nav = $('.nav-menu')
    $('.header_btn').click(function() {
        $(this).toggleClass('click');
        $('.menu_mobile').toggleClass('show');
        $('.overlay').toggleClass('show');
        if (mobile.hasClass('show')) {
            $('.mega').removeClass('active')
        };
    });
    arrow_1.on('click', function() {
        $(this).parent().toggleClass('active').siblings(mega).slideToggle().parent(list).siblings().find(mega).slideUp();
        $(this).not().parents(list).siblings().find('.moblie-show-menu').removeClass('active');
    });
    arrow_2.on('click', function() {
        $(this).parent().toggleClass('active').closest('li').find(m_list).slideToggle().closest('li').siblings().find(m_list).slideUp();
    });

    $('.overlay').click(function() {
        $(this).toggleClass('click');
        $('.menu_mobile').toggleClass('show');
        $('.overlay').toggleClass('show');
    });
    $('.search-icon').click(function() {
        $(this).toggleClass("click");
        $('.block_search').toggleClass("show");
    });
}

function mappingMenu() {
    $('header .header_menu .nav-menu').mapping({
        mobileWrapper: 'header .menu_mobile .mobile-wrapper',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .header_menu',
        desktopMethod: 'prependTo',
        breakpoint: 1279
    });
    $('header .header_infor .hotline_box ').mapping({
        mobileWrapper: 'header .menu_mobile .mobile-wrapper',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .header_infor',
        desktopMethod: 'prependTo',
        breakpoint: 1279
    });
}

function menuMobile() {
    $('header .button-hambuger').on('click', function() {
        if ($('header .button-hambuger .burger-bt-inner span').css('opacity') == 1) {
            $('header .button-hambuger').addClass('close')
            $('header .mobile-wrap').addClass('active')
        } else if ($('header .button-hambuger .burger-bt-inner span').css('opacity') == 0) {
            $('header .button-hambuger').removeClass('close')
            $('header .mobile-wrap').removeClass('active')
        }
    });
}

function fancyboxModal() {
    $(".get-in-touch a").click(function(e) {
        e.preventDefault();
        $.fancybox.open({
            src: '#form-apply',
            type: 'inline',
            opts: {
                afterShow: function(instance, current) {
                    $(".fancybox-is-open").appendTo("main");
                }
            }
        });
        return false;
    });
}

function toggleApplyForm() {
    $(".get-in-touch .button-apply a").on("click", function() {
        $(".form-apply").slideToggle();
    });
}

// Slide product-detail
function serviceDetailSlide() {
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 20,
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        navigation: {
            nextEl: '.service_detail_slide .nav-arrow-next',
            prevEl: '.service_detail_slide .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 2,
            },
            400: {
                slidesPerView: 2,
            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 4,
            },
            1440: {
                slidesPerView: 4,
            },
        }
    });
    var galleryTop = new Swiper('.gallery-top', {
        thumbs: {
            swiper: galleryThumbs
        },
    });
}

function swiperInit() {
    var homerSwiper = new Swiper(".home-banner .swiper-container", {
        // Optional parameters
        speed: 1205,
        slidesPerView: 1,
        autoplay: {
            delay: 3000
        },
        pagination: {
            el: ".home-banner-pagination",
            type: "bullets",
            clickable: "true"
        }
    });
    var homeSoftwareSwiper = new Swiper(".home_s-5 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 30,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.home_s-5 .nav-arrow-next',
            prevEl: '.home_s-5 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 5,
            },
            1440: {
                slidesPerView: 6,
            },
        },
    });
    var homeSoftwareSwiper = new Swiper(".home_s-6 .slide-teamviewer", {
        // Optional parameters
        speed: 1205,
        slidesPerView: 1,
        autoplay: {
            delay: 3000
        },
        pagination: {
            el: ".teamviewer-pagination",
            type: "bullets",
            clickable: "true"
        }
    });
    var homeSoftwareSwiper = new Swiper(".service-detail-2 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 10,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.service-detail-2 .nav-arrow-next',
            prevEl: '.service-detail-2 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 4,
            },
            1440: {
                slidesPerView: 4,
            },
        },
    });
    var homeSoftwareSwiper = new Swiper(".other-news-detail .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 10,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.other-news-detail .nav-arrow-next',
            prevEl: '.other-news-detail .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 4,
            },
            1440: {
                slidesPerView: 4,
            },
        },
    });
}

$(document).on('scroll', function() {
    header.headerScroll()
    request.requestScroll()
    about.aboutScroll()
});