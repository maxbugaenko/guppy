(function($) {
    $.fn.DropDown = function() {
        var dropDownElement = $(this);
        $(this).on("click", function(event) {
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
    $(document).ready(function() {
        $(".dropdown").DropDown();
    })
}(jQuery));