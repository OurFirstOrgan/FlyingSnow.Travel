var tableDatas = [];
$(function () {
    CallAgenciesTablePageAjax("7785411B-DF71-4AFE-98C9-FB9EB2953D89");

    var a = "{\"Agencies\":[{\"AgencyContacts\":[{\"Name\":\"111\",\"Phone\":\"\",\"QQ\":\"111\",\"IDCardNo\":\"\",\"Id\":1,\"ItemGuid\":\"8e4ab101-a128-4b18-ba5f-7a0afa51fd58\",\"Commnet1\":null,\"Commnet2\":null,\"Commnet3\":null,\"Commnet4\":null,\"Commnet5\":null,\"CreateBy\":null,\"CreateTime\":\"2016-01-18T21:40:29.53\",\"LastUpdateBy\":null,\"LastUpdateTime\":\"2016-01-18T21:40:29.53\"}],\"AgencyCode\":\"a001\",\"AgencyName\":\"test01\",\"AgencyPrincipal\":\"test01\",\"AgencyPrincipalPhone\":\"123\",\"AgencyFinancePhone\":\"\",\"AgencyFax\":\"\",\"AgencyAddress\":\"\",\"Note\":null,\"Id\":1,\"ItemGuid\":\"2c130215-e9d9-426a-a93c-c75777495fe8\",\"Commnet1\":null,\"Commnet2\":null,\"Commnet3\":null,\"Commnet4\":null,\"Commnet5\":null,\"CreateBy\":null,\"CreateTime\":\"2016-01-18T21:40:29.53\",\"LastUpdateBy\":null,\"LastUpdateTime\":\"2016-01-18T21:40:29.53\"}]}";
    tableDatas.push(JSON.parse(a).Agencies);
    ko.applyBindings(AgenciesTableModel);
    //$("#ui_searchButton").bind("click", function () {
    //    SearchAgencies();
    //});
    //$.extend(true, tableDatas, PageInfo.Agencies);
});

var AgenciesTableModel = {
    agencies: ko.observableArray(tableDatas)
}

function SearchAgencies() {
    var input = $("#ui_searchText").val();
    if (input) {
        GetAgenciesByFilter(input);
    } else {
        GetAllAgencies();
    }
    self.agencies.removeAll();
    for (var i in tableDatas) {
        self.agencies.push(tableDatas[i]);
    }
}

function GetAllAgencies() {
    tableDatas = [];

    $.extend(true, tableDatas, PageInfo.Agencies);
}

function GetAgenciesByFilter(input) {
    tableDatas = [];
    for (var i in PageInfo.Agencies) {
        if (PageInfo.Agencies[i].AgencyCode.indexOf(input) != -1 || PageInfo.Agencies[i].AgencyName.indexOf(input) != -1) {
            tableDatas.push(PageInfo.Agencies[i])
        }
    }
}

function LoadAgenciesTablePageAjaxSuccess(result) {
    tableDatas = [];
    var _agencies = JSON.parse(result).Agencies;
    AgenciesTableModel.agencies(_agencies);
}

function LoadAgenciesTablePageAjaxError(result) {
    alert(result);
}