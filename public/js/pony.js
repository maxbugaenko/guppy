(function($) {

    $.fn.DropDown = function() {
        $(this).click(function(event) {
            $("[class^=dropdown], .dropdown-menu").
                removeClass("active");
            $(event.target).
                parent().
                toggleClass("active");
            event.stopPropagation();
        })
        $(this).find("ul > li").click(function(event) {
            $(event.target).
                parent().parent().
                toggleClass("active").
                find("div").
                text($(this).text());
        })
        $(document).click(function() {
            $("[class^=dropdown]").
                removeClass("active");
        })
    }

    $.fn.DropDownMenu = function() {
        $(this).find("a").click(function(event) {
            $("[class^=dropdown-menu], [class^=dropdown]").
                removeClass("active");
            $(event.target).
                parent().
                toggleClass("active");
            event.stopPropagation();
        })
        $(document).click(function() {
            $("[class^=dropdown-menu]").
                removeClass("active");
        })
    }

    $.fn.ModalWindow = function() {
        $(this).click(function() {
            $("#overlay").toggleClass("active");
            $("#" + $(this).attr("modal")).toggleClass("active");
        })
    }

    $.fn.MenuInner = function() {
        $(this).click(function() {
            if ($(".menu-aside").attr("assign")) {
                $(".menu-aside").toggleClass("active");
                $(".menu-aside").css({left: $("#" + $(".menu-aside").attr("assign")).width()});
            } else {
                $(".menu-aside").toggleClass("active");
            }
            $("#overlay").toggleClass("active");
        });
    }

    $.fn.MenuOutter = function() {
        $(this).click(function(){
            $("#overlay").toggleClass("active");
            $(".page-container").toggleClass("page-container-slide-right");
            $("[class^=menu-icon], .menu-mobile").toggleClass("menu-slide-right");
            $(".menu-aside").toggleClass("active");
            if ($(".menu-aside").hasClass("active")) {
                $(".menu-aside").css({left: 0});
            } else {
                $(".menu-aside").css({left: -$(".menu-aside").width()});
            }
            $("body, html").toggleClass("hidden");
        });
    }

    $.fn.ReleaseBrowser = function() {
        $(this).click(function() {
            $("#overlay").removeClass("active");
            $(".modal-window").removeClass("active");
            $("[class^=menu-icon], .menu-mobile").removeClass("menu-slide-right");
            $(".menu-aside").removeClass("active");
            $(".menu-aside").css({left: -$(".menu-aside").width()});
            $(".page-container").removeClass("page-container-slide-right");
            $("body, html").removeClass("hidden");
        });
    }

    $.fn.ActivateScrollIcon = function() {
        $("#icon-to-top").click(function() {
            $('html, body').animate({ scrollTop: 0 }, 'fast');
        });
        $(this).scroll(function () {
            var y = $(this).scrollTop();
            if (y > 200) {
                $('#icon-to-top').show();
            } else {
                $('#icon-to-top').hide();
            }
        })
    }

    $(document).ready(function() {
        $("[class^=dropdown]").DropDown();
        $("[class^=dropdown-menu]").DropDownMenu();
        $(".opens-modal").ModalWindow();
        $(".opens-menu-inner").MenuInner();
        $(".opens-menu-outter").MenuOutter();
        $(this).ActivateScrollIcon();
        $("#overlay, .close-button").ReleaseBrowser();
        if ($(".opens-menu-inner").length && $(".opens-menu-outter").length) {
            alert("Both outter and inner menus \ncannot be used on the same page");
        }
    })
}(jQuery));