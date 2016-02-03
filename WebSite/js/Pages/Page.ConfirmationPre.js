$(function () {
    //SRJoinGroup("123");
    $("#ui_select").change(function () {
        var selectValue = $(this).children('option:selected').val();
        switch (selectValue) {
            case "beijing":
                $("#ui_beijingGroup").removeClass("hide");
                break;
            case "common":
            default:
                $("#ui_beijingGroup").addClass("hide");
                break;
        }
    });
})