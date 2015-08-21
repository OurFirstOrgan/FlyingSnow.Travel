$(function () {
    //SRJoinGroup("123");
    $("#ui_agencyButton").bind("click", function () {
        CreateAgency();
        $("#ui_agencyButton").addClass("disabled");
        $("#ui_agencyCommentButton").addClass("disabled");
    });
    ko.applyBindings(new ProductisViewModel());
});

function ProductisViewModel() {
    var lists = [
    { A: "183", B: "John Doe", C: "11-7-2014", D: "Approved", E: "Bacon ipsum dolor sit amet salami venison chicken flank fatback doner" },
    { A: "183", B: "John Doe", C: "11-7-2014", D: "Approved", E: "Bacon ipsum dolor sit amet salami venison chicken flank fatback doner" },
    { A: "183", B: "John Doe", C: "11-7-2014", D: "Approved", E: "Bacon ipsum dolor sit amet salami venison chicken flank fatback doner" },
    { A: "183", B: "John Doe", C: "11-7-2014", D: "Approved", E: "Bacon ipsum dolor sit amet salami venison chicken flank fatback doner" },
    { A: "183", B: "John Doe", C: "11-7-2014", D: "Approved", E: "Bacon ipsum dolor sit amet salami venison chicken flank fatback doner" },
    { A: "183", B: "John Doe", C: "11-7-2014", D: "Approved", E: "Bacon ipsum dolor sit amet salami venison chicken flank fatback doner" },
    { A: "183", B: "John Doe", C: "11-7-2014", D: "Approved", E: "Bacon ipsum dolor sit amet salami venison chicken flank fatback doner" },
    { A: "183", B: "John Doe", C: "11-7-2014", D: "Approved", E: "Bacon ipsum dolor sit amet salami venison chicken flank fatback doner" },
    { A: "183", B: "John Doe", C: "11-7-2014", D: "Approved", E: "Bacon ipsum dolor sit amet salami venison chicken flank fatback doner" }
    ];
    self.products = ko.observableArray(lists);
}