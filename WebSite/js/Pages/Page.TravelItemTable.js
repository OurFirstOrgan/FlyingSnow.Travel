var tableDatas = [];
$(function () {
    //SRJoinGroup("123");
    //$("#ui_searchButton").bind("click", function () {
    //    SearchAgencies();
    //});
    //$.extend(true, tableDatas, PageInfo.Agencies);
    ko.applyBindings(TravelItemsViewModel);
});

var TravelItemsViewModel = {
    tableVisable: ko.observable(true),
    travelItems: ko.observableArray(PageInfo.TravelItems),
    detailVisable: ko.observable(false),
    selectedItem: ko.observable(),
    ViewDetail: function (travelItem) {
        TravelItemsViewModel.tableVisable(false);
        TravelItemsViewModel.detailVisable(true);
        TravelItemsViewModel.selectedItem(travelItem);
    }
};

TravelItemsViewModel.DisplayTime = function (travelItem) {
    return (new Date(travelItem.TravelDate)).toLocaleDateString();
};


TravelItemsViewModel.EidtClick = function () {
    alert(EditClick);
}

TravelItemsViewModel.ExportItem = function () {
    console.log("ExportClick.");
    var itemJSONStr = JSON.stringify(TravelItemsViewModel.selectedItem());
    $("#ui_exportFunc").val("ExportConfirmation");
    $("#ui_exportTravelItem").val(itemJSONStr);
    var form = $("#ui_exportForm");
    form.attr("action", "/Logic/FileHandler.ashx");
    form.submit();
    console.log("ExportEnd");
}