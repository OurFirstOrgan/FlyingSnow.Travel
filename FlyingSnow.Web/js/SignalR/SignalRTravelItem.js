var a_signalR_item;
$(function () {
    a_signalR_item = $.connection.TravelItemHub;
    a_signalR_item.client.CreateTravelItemCallBack = CreateTravelItemCallBack;
    a_signalR_item.client.SearchAgencyCallBack = SearchAgencyCallBack;
    a_signalR_item.client.SearchOperatorCallBack = SearchOperatorCallBack;
});

function SR_CreateTravelItem(item) {
    a_signalR_item.server.createTravelItem(JSON.stringify(item));
}

function SR_SearchAgency(param, type) {
    a_signalR_item.server.searchAgency(param, type);
}

function SR_SearchOperator(param, type) {
    a_signalR_item.server.searchOperator(param, type);
}

function SRJoinGroup(group) {
    $.connection.hub.start().done(function () {
        a_signalR_item.server.joinGroup(group);
    });
}

function CreateTravelItemCallBack(success, caller, context) {
    //if (success) {
    //    if (caller) {
    //        AndyAlert({
    //            msg: '保存成功',
    //            title: '标题',
    //            btnok: '确定',
    //            btncl: '取消'
    //        });
    //        window.location.href = "/Pages/Table/AgenciesTable.aspx";
    //    }
    //}
}

function SearchAgencyCallBack(success, caller, context) {
    if (success) {
        var agencys = JSON.parse(context);
        PageInfo.agencys = agencys;
        //PageInfo.selectedAgency = agencys[0];
        RefreshAgencyView();
    } else {
        console.log("error!")
    }
}

function SearchOperatorCallBack(success, caller, context) {
    if (success) {
        var operators = JSON.parse(context);
        PageInfo.operators = operators;
        //PageInfo.selectedAgency = operators[0];
        RefreshOperatorView();
    } else {
        console.log("error!")
    }
}