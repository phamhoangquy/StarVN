$(document).ready(function() {
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
    AddHiddenFormContact();
    AddHiddenPopupForm();
    showBackToTop();
});

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

function srcollMenu() {
    $(".link-to-srcoll-section a").on("click", function(event) {
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
    $('.header_btn').click(function() {
        $(this).toggleClass('click');
        $('.menu_mobile').toggleClass('show');
        $('.overlay').toggleClass('show');
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
        breakpoint: 1280
    });
    $('header .header_infor .hotline_box ').mapping({
        mobileWrapper: 'header .menu_mobile .mobile-wrapper',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .header_infor',
        desktopMethod: 'prependTo',
        breakpoint: 1280
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