var a_signalR_agency;
$(function () {
    a_signalR_agency = $.connection.TravelAgencyHub;
    a_signalR_agency.client.CreateAgencyCallBack = CreateAgencyCallBack;
});

function SR_CreateAgency(agency) {
    a_signalR_agency.server.createAgency(JSON.stringify(agency));
}

function SRJoinGroup(group) {
    $.connection.hub.start().done(function () {
        a_signalR_agency.server.joinGroup(group);
    });
}

function CreateAgencyCallBack(success, caller, context) {
}