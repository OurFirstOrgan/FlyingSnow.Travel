var tableDatas = [];
$(function () {
    //SRJoinGroup("123");
    $("#ui_searchButton").bind("click", function () {
        SearchAgencies();
    });
    $.extend(true, tableDatas, PageInfo.Agencies);
    ko.applyBindings(new AgenciesViewModel());
});

function AgenciesViewModel() {
    self.agencies = ko.observableArray(tableDatas);
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