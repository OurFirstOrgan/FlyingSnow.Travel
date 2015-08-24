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
}

function GetAllAgencies() {
    tableDatas = [];
    $.extend(true, tableDatas, PageInfo.Agencies);
}

function GetAgenciesByFilter(input) {
    tableDatas = [];
    ko.applyBindings(new AgenciesViewModel());
}