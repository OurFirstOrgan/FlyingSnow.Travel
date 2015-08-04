$(function () {
    SRJoinGroup("123");
    $("#datemask").inputmask("yyyy/mm/dd", { "placeholder": "yyyy/mm/dd" });

    $("[data-mask]").inputmask();

    $("#ui_addRegistInfo").bind("click", function () {
        InsertCusInfoInputDiv();
    });

    $("#ui_earnestSubtotal").bind("click", function () {
        EarnestSubtotal();
    });
})


function InsertCusInfoInputDiv() {
    var count = parseInt($("#ui_customsBox").attr("count"), 10);
    var HTML = "";
    HTML += '<div class="form-group">';
    HTML += '   <div class="input-group">';
    HTML += '       <div class="input-group-addon"><i class="fa fa-male"></i></div>';
    HTML += '           <input type="text" class="form-control" id="ui_customerName' + count + '" placeholder="客人姓名" />';
    HTML += '           <div class="input-group-addon"><i class="fa fa-credit-card"></i></div>';
    HTML += '           <input type="text" class="form-control" id="ui_customerIdCard' + count + '" placeholder="身份证" />';
    HTML += '       </div>';
    HTML += '   </div>';
    HTML += '</div>';
    $("#ui_customsBox").append(HTML);
    $("#ui_customsBox").attr("count", count + 1);
}

function EarnestSubtotal() {
    var adultC = $("#ui_adultCount").val();
    var adultP = $("#ui_adultPrice").val();
    var childC = $("#ui_childPrice").val();
    var childP = $("#ui_childCount").val();
    var other = $("#ui_earnestOther").val();
    if (adultC == "") adultC = 0;
    if (adultP == "") adultP = 0;
    if (childC == "") childC = 0;
    if (childP == "") childP = 0;
    if (other == "") other = 0;
    var total = adultC * adultP + childC * childP + parseInt(other, 10);
    $("#ui_earnestTotal").val(total);
}