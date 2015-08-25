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

    $("#ui_itemButton").bind("click", function () {
        var item = AssemblyTravelItem();

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

function AssemblyTravelItem() {
    var item = {};
    item.CustomerName = $("#ui_customerName").val();
    item.CustomerPhone1 = $("#ui_customerPhone1").val();
    item.CustomerPhone2 = $("#ui_customerPhone2").val();
    item.StartDate = $("#ui_travelDate").val();
    item.StartLine = $("#ui_tourRoute").val();

    item.AdultPrice = $("#ui_adultPrice").val();
    item.AdultCount = $("#ui_adultCount").val();
    item.ChildPrice = $("#ui_childPrice").val();
    item.ChildCount = $("#ui_childCount").val();
    item.OtherPrice = $("#ui_earnestOther").val();
    item.OtherDescription = $("#ui_earnestOtherDes").val();
    item.TotalPrice = $("#ui_earnestTotal").val();
    item.InsteadReceive = $("#ui_insteadReceive").val();

    //Peoples

    //Agency

    item.OnwardTicketPrice = $("#ui_onwardTicket1").val();
    item.OnwardServicePrice = $("#ui_onwardServiceCharge1").val();
    item.OnwardTicketPrice2 = $("#ui_onwardTicket2").val();
    item.OnwardServicePrice2 = $("#ui_onwardServiceCharge2").val();

    item.BackwardTicketPrice = $("#ui_backwardTicket1").val();
    item.BackwardServicePrice = $("#ui_backwardServiceCharge1").val();
    item.BackwardTicketPrice2 = $("#ui_backwardTicket2").val();
    item.BackwardServicePrice2 = $("#ui_backwardServiceCharge2").val();

    item.SeeOffFee = $("#ui_seeOffFee").val();
    item.InsuranceFee = $("#ui_insuranceFee").val();
    item.AtTimeRefund = $("#ui_atTimeRefund").val();
    item.AtTimeAccept = $("#ui_atTimeAccept").val();
    item.OtherFee = $("#ui_otherPrice").val();
    item.OtherFeeDescription = $("#ui_otherDescription").val();

    //Tour Operator

    item.ArriveDate = $("ui_arriveDate").val();
    item.ArriveTrain = $("ui_arriveTrain").val();
    item.GroupType = $("ui_groupType").val();
    //item.DurationDay
    //item.HotelStandard
    item.BackTimePlan = $("#ui_backDatePlan").val();
    //item.SeeOff
    item.BackTicket = $("#ui_backTicket").val();
    return item;
}