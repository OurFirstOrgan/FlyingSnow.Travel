var tableDatas = [];
$(function () {
    CallAgenciesTablePageAjax("7785411B-DF71-4AFE-98C9-FB9EB2953D89");
    ko.applyBindings(AgenciesTableModel);
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