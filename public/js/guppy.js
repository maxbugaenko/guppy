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

    $.fn.MenuSliding = function() {
        $(this).on("click", function() {
            $("#overlay").toggleClass("active");
            $(".menu-sliding").toggleClass("active");
        });
    }

    $.fn.ReleaseBrowser = function() {
        $(this).on("click", function() {
            $("#overlay").removeClass("active");
            $(".modal-window").removeClass("active");
            $(".menu-sliding").removeClass("active");
        });
    }

    $(document).ready(function() {
        $("[class^=dropdown]").DropDown();
        $(".dropdown-menu").DropDownMenu();
        $(".opens-modal").ModalWindow();
        $("#opens-menu-sliding").MenuSliding();
        $("#overlay, .close-button").ReleaseBrowser();
    })
}(jQuery));