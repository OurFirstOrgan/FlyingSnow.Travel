var PageInfo = {
    Flag,
    selectedAgency: {},
    agencys: [],
    selectedOperator: {},
    operators: []
};
$(function () {
    //$("#datemask").inputmask("yyyy/mm/dd", { "placeholder": "yyyy/mm/dd" });

    //$("[data-mask]").inputmask();

    $("#ui_addRegistInfo").bind("click", function () {
        InsertCusInfoInputDiv();
    });

    $("#ui_earnestSubtotal").bind("click", function () {
        EarnestSubtotal();
    });

    ko.applyBindings(TravelItemViewModel);
});

var TravelItemViewModel = {
    needShowAgency: ko.observable(false),
    selectedAgency: ko.observable(PageInfo.selectedAgency),
    optionAgencys: ko.observable(PageInfo.agencys),
    needShowOperator: ko.observable(false),
    selectedOperator: ko.observable(PageInfo.selectedOperator),
    optionOperators: ko.observable(PageInfo.operators)
}

TravelItemViewModel.searchAgencyClick = function () {
    var inputInfo = $("#ui_agencyInput").val();
    SearchAgency(inputInfo);
};
TravelItemViewModel.searchOperatorClick = function () {
    var inputInfo = $("#ui_operatorInput").val();
    SearchOperator(inputInfo);
}

TravelItemViewModel.SubmitBtnClick = function () {
    var item = AssemblyTravelItem();
    SR_CreateTravelItem(item);
}

function RefreshAgencyView() {
    TravelItemViewModel.optionAgencys(PageInfo.agencys);
    TravelItemViewModel.needShowAgency(true);
}
function RefreshOperatorView() {
    TravelItemViewModel.optionOperators(PageInfo.operators);
    TravelItemViewModel.needShowOperator(true);
}

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



function SearchAgency(param) {
    var reg = /^([a-z]+(?=[0-9])|[0-9]+(?=[a-z]))[a-z0-9]+$/ig;
    if (reg.test(param)) {
        CallAgenciesAjax("7785411B-DF71-4AFE-98C9-FB9EB2953D89" + "code1" + param);
    }
    else {
        CallAgenciesAjax("7785411B-DF71-4AFE-98C9-FB9EB2953D89" + "name1" + param);
    }
}

function SearchOperator(param) {
    var reg = /^([a-z]+(?=[0-9])|[0-9]+(?=[a-z]))[a-z0-9]+$/ig;
    if (reg.test(param)) {
        CallAgenciesAjax("7785411B-DF71-4AFE-98C9-FB9EB2953D89" + "code2" + param);
    }
    else {
        CallAgenciesAjax("7785411B-DF71-4AFE-98C9-FB9EB2953D89" + "name2" + param);
    }
}

function LoadAgenciesAjaxSuccess(result) {
    tableDatas = [];
    var _obj = JSON.parse(result);
    if (_obj.Flag == "code1") {
        PageInfo.agencys = _obj.Agencies;
        RefreshAgencyView();
    } else {
        PageInfo.operators = _obj.Agencies;
    }
}

function LoadAgenciesAjaxError(result) {
    alert(result);
}

function AssemblyTravelItem() {
    var item = {};
    item.CustomerName = $("#ui_customerName").val();
    item.CustomerPhone1 = $("#ui_customerPhone1").val();
    item.CustomerPhone2 = $("#ui_customerPhone2").val();
    item.TravelDate = $("#ui_travelDate").val() ? $("#ui_travelDate").val() : new Date();
    item.StartLine = $("#ui_tourRoute").val();

    item.AdultPrice = $("#ui_adultPrice").val() ? $("#ui_adultPrice").val() : 0;
    item.AdultCount = $("#ui_adultCount").val();
    item.ChildPrice = $("#ui_childPrice").val() ? $("#ui_childPrice").val() : 0;
    item.ChildCount = $("#ui_childCount").val();
    item.OtherPrice = $("#ui_earnestOther").val() ? $("#ui_earnestOther").val() : 0;
    item.OtherDescription = $("#ui_earnestOtherDes").val();
    item.TotalPrice = $("#ui_earnestTotal").val() ? $("#ui_earnestTotal").val() : 0;
    item.InsteadReceive = $("#ui_insteadReceive").val() ? $("#ui_insteadReceive").val() : 0;

    //Peoples
    item.Agency = TravelItemViewModel.selectedAgency();

    item.OnwardTicketPrice = $("#ui_onwardTicket1").val() ? $("#ui_onwardTicket1").val() : 0;
    item.OnwardServicePrice = $("#ui_onwardServiceCharge1").val() ? $("#ui_onwardServiceCharge1").val() : 0;
    item.OnwardTicketPrice2 = $("#ui_onwardTicket2").val() ? $("#ui_onwardTicket2").val() : 0;
    item.OnwardServicePrice2 = $("#ui_onwardServiceCharge2").val() ? $("#ui_onwardServiceCharge1").val() : 0;

    item.BackwardTicketPrice = $("#ui_backwardTicket1").val() ? $("#ui_backwardTicket1").val() : 0;
    item.BackwardServicePrice = $("#ui_backwardServiceCharge1").val() ? $("#ui_backwardServiceCharge1").val() : 0;
    item.BackwardTicketPrice2 = $("#ui_backwardTicket2").val() ? $("#ui_backwardTicket2").val() : 0;
    item.BackwardServicePrice2 = $("#ui_backwardServiceCharge2").val() ? $("#ui_backwardServiceCharge2").val() : 0;

    item.SeeOffFee = $("#ui_seeOffFee").val() ? $("#ui_seeOffFee").val() : 0;
    item.InsuranceFee = $("#ui_insuranceFee").val() ? $("#ui_insuranceFee").val() : 0;
    item.AtTimeRefund = $("#ui_atTimeRefund").val() ? $("#ui_atTimeRefund").val() : 0;
    item.AtTimeAccept = $("#ui_atTimeAccept").val() ? $("#ui_atTimeAccept").val() : 0;
    item.OtherFee = $("#ui_otherPrice").val() ? $("#ui_atTimeAccept").val() : 0;
    item.OtherFeeDescription = $("#ui_otherDescription").val() ? $("#ui_atTimeAccept").val() : 0;

    //Tour Operator
    item.Operator = TravelItemViewModel.selectedOperator();

    item.ArriveDate = $("ui_arriveDate").val() ? $("#ui_arriveDate").val() : new Date();
    item.ArriveTrain = $("ui_arriveTrain").val();
    item.GroupType = $("ui_groupType").val();
    //item.DurationDay
    //item.HotelStandard
    item.BackTimePlan = $("#ui_backDatePlan").val() ? $("#ui_backDatePlan").val() : new Date();
    //item.SeeOff
    item.BackTicket = $("#ui_backTicket").val();
    return item;
}