$(function() {
    var $activeSlide = $('#slides .slide:first-child');

    // $activeSlide.addClass("showing");

    $("#decline").on("click", function() {
        goToSlide('decline');
    });

    $("#approve").on("click", function() {
        var user_id = $activeSlide.data("id");

        console.log(user_id);

        $.ajax({
            url: "/approve/" + user_id,
            method: "post",
            dataType: "ajax"
        });

        goToSlide('approve');
    });

    function goToSlide(action){
        $activeSlide.removeClass("showing");
        $activeSlide = $activeSlide.next(".slide");
        // send data to controller
        if (action == "approve") {

        } else {

        }
        $activeSlide.addClass("showing");
    }
});