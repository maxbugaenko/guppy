(function($) {
    $.fn.DropDown = function() {
        $(this).on("click", function(event) {
            $(".dropdown").
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
          $(".dropdown").
              removeClass("active");
        })
    }

    $.fn.DropDownMenu = function() {
        $(this).find("a").on("click", function(event) {
            $(".dropdown-menu").
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

    $(document).ready(function() {
        $(".dropdown").DropDown();
        $(".dropdown-menu").DropDownMenu();
    })
}(jQuery));