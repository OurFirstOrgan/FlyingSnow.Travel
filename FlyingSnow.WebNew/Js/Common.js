$(function () {
    ko.applyBindings(UserModel, $('#ui_header')[0]);
});

var UserModel = {
    RealUserName: ko.observable(PageInfo.UserInfo.RealUserName),
    ImgUrl: ko.observable("/Dist/img/" + PageInfo.UserInfo.ImgUrl),
    Description: ko.observable(PageInfo.UserInfo.RealUserName + " - " + PageInfo.UserInfo.Description),
    SinceDate: ko.observable(PageInfo.UserInfo.SinceDate),
    this: ko.observable(PageInfo.UserInfo)
}
