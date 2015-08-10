$(function () {
    //SRJoinGroup("123");
    $("#ui_agencyButton").bind("click", function () {
        CreateAgency();
        $("#ui_agencyButton").addClass("disabled");
        $("#ui_agencyCommentButton").addClass("disabled");
    });
    $("#ui_agencyCommentButton").bind("click", function () {
        alert("success too");
    });
})

function CreateAgency() {
    var agency = AssemblyAgency();
    SR_CreateAgency(agency);
}

function AssemblyAgency() {
    var agency = {};
    agency.AgencyCode = $("#ui_agencyCode").val();
    agency.AgencyName = $("#ui_agencyName").val();
    agency.AgencyPrincipal = $("#ui_agencyPrincipal").val();
    agency.AgencyPrincipalPhone = $("#ui_agencyPrincipalPhone").val();
    agency.AgencyFinancePhone = $("#ui_agencyFinancePhone").val();
    agency.AgencyFax = $("#ui_agencyFax").val();
    agency.AgencyAddress = $("#ui_agencyAddress").val();
    agency.AgencyContacts = [];
    agency.AgencyContacts.push({ Name: $("#ui_agencyContactU1").val(), QQ: $("#ui_agencyContactQQ1").val() });
    agency.AgencyContacts.push({ Name: $("#ui_agencyContactU2").val(), QQ: $("#ui_agencyContactQQ2").val() });
    agency.AgencyContacts.push({ Name: $("#ui_agencyContactU3").val(), QQ: $("#ui_agencyContactQQ3").val() });
    agency.Note = $("#ui_note").val();

    agency.CreateBy = "";
    return agency;
}