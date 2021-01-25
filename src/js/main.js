$(document).ready(function() {
    AOS.init({
        disable: "mobile",
    });
    setBackgroundElement();
    // header
    mappingMenu();
    toggleMobileMenu();
    // swiper
    swiperInit();
    tabActive();
    serviceDetailSlide();
    srcollMenu();
    showBackToTop();
});

const InsertBd = () => {
    $(".breadcrumb-wrapper").appendTo("#pagebanner .box-text");
};

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

// function menuMobile() {
//     $('header .button-hambuger').on('click', function() {
//         if ($('header .button-hambuger .burger-bt-inner span').css('opacity') == 1) {
//             $('header .button-hambuger').addClass('close')
//             $('header .mobile-wrap').addClass('active')
//         } else if ($('header .button-hambuger .burger-bt-inner span').css('opacity') == 0) {
//             $('header .button-hambuger').removeClass('close')
//             $('header .mobile-wrap').removeClass('active')
//         }
//     });
// }


// Slide product-detail
function serviceDetailSlide() {
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 20,
        slidesPerView: 4,
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