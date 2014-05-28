(function($) {

    $.fn.DropDown = function() {
        $(this).on("click", function(event) {
            $("[class^=dropdown], .dropdown-menu").
                removeClass("active");
            $(event.target).
                parent().
                toggleClass("active");
            event.stopPropagation();
        })
        $(this).find("ul > li").on("click", function(event) {
            $(event.target).
                parent().parent().
                toggleClass("active").
                find("div").
                text($(this).text());
        })
        $(document).on("click", function() {
          $("[class^=dropdown]").
              removeClass("active");
        })
    }

    $.fn.DropDownMenu = function() {
        $(this).find("a").on("click", function(event) {
            $(".dropdown-menu, .dropdown").
                removeClass("active");
            $(event.target).
                parent().
                toggleClass("active");
            event.stopPropagation();
        })
        $(document).on("click", function() {
            $(".dropdown-menu").
                removeClass("active");
        })
    }

    $.fn.ModalWindow = function() {
        $(this).on("click", function() {
            $("#overlay").toggleClass("active");
            $("#" + $(this).attr("modal")).toggleClass("active");
        })
    }

    $.fn.MenuInner = function() {
        $(this).on("click", function() {
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
        $(this).on("click", function(){
            $("#overlay").toggleClass("active");
            $("[class^=menu-icon]").toggleClass("menu-icon-slide-right");
            $(".page-container").toggleClass("page-container-slide-right");
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
        $(this).on("click", function() {
            $("#overlay").removeClass("active");
            $(".modal-window").removeClass("active");
            $(".menu-aside").removeClass("active");
            $(".menu-aside").css({left: -$(".menu-aside").width()});
            $("[class^=menu-icon]").removeClass("menu-icon-slide-right");
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
            //alert(y);
            if (y > 200) {
                $('#icon-to-top').show();
            } else {
                $('#icon-to-top').hide();
            }
        })
    }

    $(document).ready(function() {
        $("[class^=dropdown]").DropDown();
        $(".dropdown-menu").DropDownMenu();
        $(".opens-modal").ModalWindow();
        $(".opens-menu-inner").MenuInner();
        $(".opens-menu-outter").MenuOutter()
        $("#overlay, .close-button").ReleaseBrowser();
        if ($(".opens-menu-inner").length && $(".opens-menu-outter").length) {
            alert("Both outter and inner menus \ncannot be used on the same page");
        }
    })
}(jQuery));