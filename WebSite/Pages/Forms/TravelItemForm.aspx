<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TravelItemForm.aspx.cs" Inherits="FlyingSnow.Web.Pages.Forms.TravelItemForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <aside class="right-side">
        <section class="content-header">
            <h1>订单表单
                    <small>预览</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="/Default"><i class="fa fa-dashboard"></i>主页</a></li>
                <li><a href="#">表单</a></li>
                <li class="active">订单表单</li>
            </ol>
        </section>
        <section class="content">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">订单</h3>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="box box-default">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="ui_customerName">客人姓名</label>
                                    <asp:TextBox runat="server" ID="ui_customerName" CssClass="form-control" placeholder="客人姓名"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_customerPhone1">客人电话</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-phone"></i>
                                        </div>
                                        <asp:TextBox runat="server" ID="ui_customerPhone1" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-phone"></i>
                                        </div>
                                        <asp:TextBox runat="server" ID="ui_customerPhone2" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ui_travelDate">出发日期</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <asp:TextBox runat="server" ID="ui_travelDate" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ui_tourRoute">出发线路</label>
                                    <asp:TextBox runat="server" ID="ui_tourRoute" CssClass="form-control" placeholder="出发路线"></asp:TextBox>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="ui_adultPrice">成人价格</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-cny"></i>
                                            </div>
                                            <asp:TextBox runat="server" ID="ui_adultPrice" CssClass="form-control" placeholder="成人价格" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ui_adultCount">成人人数</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-user"></i>
                                            </div>
                                            <asp:TextBox runat="server" ID="ui_adultCount" CssClass="form-control" placeholder="成人人数"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="ui_childPrice">儿童价格</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-cny"></i>
                                            </div>
                                            <asp:TextBox runat="server" ID="ui_childPrice" CssClass="form-control" placeholder="儿童价格"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ui_childCount">儿童人数</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-user"></i>
                                            </div>
                                            <asp:TextBox runat="server" ID="ui_childCount" CssClass="form-control" placeholder="儿童人数"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ui_earnestOther">其他</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-cny"></i></span>
                                        <asp:TextBox runat="server" ID="ui_earnestOther" CssClass="form-control" placeholder="其他"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ui_earnestOtherDes">其他说明</label>
                                    <asp:TextBox runat="server" ID="ui_earnestOtherDes" CssClass="form-control" placeholder="其他说明"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_earnestTotal">总价</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-cny"></i></span>
                                        <asp:TextBox runat="server" ID="ui_earnestTotal" CssClass="form-control" placeholder="总价"></asp:TextBox>
                                        <span id="ui_earnestSubtotal" class="input-group-addon"><i class="fa fa-rotate-right"></i></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ui_insteadReceive">代收金额</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-cny"></i></span>
                                        <asp:TextBox runat="server" ID="ui_insteadReceive" CssClass="form-control" placeholder="代收金额"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="box box-danger">
                            <div class="box-header">
                                <h6 class="box-title">登记信息</h6>
                            </div>
                            <div class="box-body" id="ui_customsBox" count="1">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                        <input type="text" class="form-control" id="ui_customerName0" placeholder="客人姓名" />
                                        <div class="input-group-addon"><i class="fa fa-credit-card"></i></div>
                                        <input type="text" class="form-control" id="ui_customerIdCard0" placeholder="身份证" />
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary" id="ui_addRegistInfo">添加</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="box box-default">
                            <div class="box-header">
                                <h4 class="box-title">组团社</h4>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="ui_agencyInput">组团社</label>
                                    <div class="input-group">
                                        <input type="text" id="ui_agencyInput" name="q" class="form-control" placeholder="搜索..." />
                                        <span class="input-group-btn">
                                            <button type='submit' name='seach' id='ui_agencySearchBtn' class="btn btn-flat" data-bind="click: searchAgencyClick"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <div id="ui_agencySelectDiv" class="form-group" data-bind="visible: needShowAgency">
                                    <select class="form-control select2" style="width: 100%;" data-bind="options: optionAgencys, optionsText: 'AgencyName', value: selectedAgency">
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6" data-bind="visible: needShowAgency">
                        <div class="box box-default">
                            <div class="box-header with-border">
                                <i class="fa fa-text-width"></i>
                                <h3 class="box-title">旅行社信息</h3>
                            </div>
                            <div class="box-body">
                                <asp:Label runat="server" ID="ui_agencyLable" CssClass="hidden" data-bind="text: selectedAgency() ? selectedAgency().Id : ''"></asp:Label>
                                <h4>名  称:<span data-bind="text: selectedAgency() ? selectedAgency().AgencyName : ''"></span></h4>
                                <h4>确认人:<span data-bind="text: selectedAgency() ? selectedAgency().AgencyPrincipal : ''"></span></h4>
                                <h4>负责人电话:<span data-bind="text: selectedAgency() ? selectedAgency().AgencyPrincipalPhone : ''"></span></h4>
                                <h4>传真:<span data-bind="text: selectedAgency() ? selectedAgency().AgencyFax : ''"></span></h4>
                                <h4>地址:<span data-bind="text: selectedAgency() ? selectedAgency().AgencyAddress : ''"></span></h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="box box-default">
                            <div class="box-header">
                                <h3 class="box-title">去时</h3>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="ui_onwardTicket1">去程票价1</label>
                                    <asp:TextBox runat="server" ID="ui_onwardTicket1" CssClass="form-control" placeholder="去程票价1"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_onwardServiceCharge1">去程服务费1</label>
                                    <asp:TextBox runat="server" ID="ui_onwardServiceCharge1" CssClass="form-control" placeholder="去程服务费1"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_onwardTicket2">去程票价2</label>
                                    <asp:TextBox runat="server" ID="ui_onwardTicket2" CssClass="form-control" placeholder="去程票价2"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_onwardServiceCharge2">去程服务费2</label>
                                    <asp:TextBox runat="server" ID="ui_onwardServiceCharge2" CssClass="form-control" placeholder="去程服务费2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="box box-default">
                            <div class="box-header">
                                <h3 class="box-title">回程</h3>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="ui_backwardTicket1">回程票价1</label>
                                    <asp:TextBox runat="server" ID="ui_backwardTicket1" CssClass="form-control" placeholder="回程票价1"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_backwardServiceCharge1">回程服务费1</label>
                                    <asp:TextBox runat="server" ID="ui_backwardServiceCharge1" CssClass="form-control" placeholder="回程服务费1"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_backwardTicket2">回程票价2</label>
                                    <asp:TextBox runat="server" ID="ui_backwardTicket2" CssClass="form-control" placeholder="回程票价2"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_backwardServiceCharge2">回程服务费2</label>
                                    <asp:TextBox runat="server" ID="ui_backwardServiceCharge2" CssClass="form-control" placeholder="回程服务费2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="box box-default">
                            <div class="box-header">
                                <h3 class="box-title">费用</h3>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="ui_seeOffFee">送机费</label>
                                    <asp:TextBox runat="server" ID="ui_seeOffFee" CssClass="form-control" placeholder="送机费"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_insuranceFee">保险费</label>
                                    <asp:TextBox runat="server" ID="ui_insuranceFee" CssClass="form-control" placeholder="保险费"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_atTimeRefund">现退款</label>
                                    <asp:TextBox runat="server" ID="ui_atTimeRefund" CssClass="form-control" placeholder="现退款"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_atTimeAccept">现收款</label>
                                    <asp:TextBox runat="server" ID="ui_atTimeAccept" CssClass="form-control" placeholder="现收款"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_otherPrice">其他费</label>
                                    <asp:TextBox runat="server" ID="ui_otherPrice" CssClass="form-control" placeholder="其他费"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_otherDescription">其他说明</label>
                                    <asp:TextBox runat="server" ID="ui_otherDescription" CssClass="form-control" placeholder="其他说明"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="box box-default">
                            <div class="box-header">
                                <h4 class="box-title">地接社</h4>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="ui_operatorInput">地接社</label>
                                    <div class="input-group">
                                        <input type="text" id="ui_operatorInput" name="q" class="form-control" placeholder="搜索..." />
                                        <span class="input-group-btn">
                                            <button type='submit' name='seach' id='ui_operatorBtn' class="btn btn-flat" data-bind="click: searchOperatorClick"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <div id="ui_operatorSelectDiv" class="form-group" data-bind="visible: needShowOperator">
                                    <select class="form-control select2" style="width: 100%;" data-bind="options: optionOperators, optionsText: 'AgencyName', value: selectedOperator">
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6" data-bind="visible: needShowOperator">
                        <div class="box box-default">
                            <div class="box-header with-border">
                                <i class="fa fa-text-width"></i>
                                <h3 class="box-title">旅行社信息</h3>
                            </div>
                            <div class="box-body">

                                <h4>名  称:<span data-bind="text: selectedOperator() ? selectedOperator().AgencyName : ''"></span></h4>
                                <h4>确认人:<span data-bind="text: selectedOperator() ? selectedOperator().AgencyPrincipal : ''"></span></h4>
                                <h4>负责人电话:<span data-bind="text: selectedOperator() ? selectedOperator().AgencyPrincipalPhone : ''"></span></h4>
                                <h4>传真:<span data-bind="text: selectedOperator() ? selectedOperator().AgencyFax : ''"></span></h4>
                                <h4>地址:<span data-bind="text: selectedOperator() ? selectedOperator().AgencyAddress : ''"></span></h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="box box-danger">
                            <div class="box-header">
                                <h3 class="box-title">信息</h3>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="ui_arriveDate">抵达日期</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <asp:TextBox runat="server" ID="ui_arriveDate" CssClass="form-control" placeholder="yyyy/mm/dd" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ui_arriveTrain">抵达车次</label>
                                    <asp:TextBox runat="server" ID="ui_arriveTrain" CssClass="form-control" placeholder="抵达车次"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_groupType">团型</label>
                                    <asp:TextBox runat="server" ID="ui_groupType" CssClass=" form-control" placeholder="团型"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="ui_durationDay">住宿时间</label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="ui_durationDay" CssClass="form-control" placeholder="几"></asp:TextBox>
                                        <span class="input-group-addon">天</span>
                                        <asp:TextBox runat="server" ID="ui_durationNight" CssClass="form-control" placeholder="几"></asp:TextBox>
                                        <span class="input-group-addon">晚</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ui_hotelStandard">住宿标准</label>
                                    <div class="input-group">
                                        <label>
                                            <input type="radio" name="standard" class="minimal" />
                                        </label>
                                        <label>准三</label>
                                        <label>
                                            <input type="radio" name="standard" class="minimal" />
                                        </label>
                                        <label>准四</label>
                                        <label>
                                            <input type="radio" name="standard" class="minimal" />
                                        </label>
                                        <label>准五</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ui_backDatePlan">计划返程日期</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <asp:TextBox runat="server" ID="ui_backDatePlan" CssClass="form-control" placeholder="yyyy/mm/dd" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <label>
                                        <input type="radio" name="seeOff" class="minimal" />
                                    </label>
                                    <label>送站</label>
                                    <label>
                                        <input type="radio" name="seeOff" class="minimal" />
                                    </label>
                                    <label>不送站</label>
                                </div>
                                <div class="form-group">
                                    <label for="ui_backTicket">返程票</label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="ui_backTicket" CssClass="form-control" placeholder="返程票"></asp:TextBox>
                                        <span class="input-group-addon">车次
                                        </span>
                                    </div>
                                    <label>
                                        <asp:RadioButton runat="server" CssClass="minimal" GroupName="backTicket" />
                                    </label>
                                    <label>我社自理</label>
                                    <label>
                                        <asp:RadioButton runat="server" CssClass="minimal" GroupName="backTicket" />
                                    </label>
                                    <label>贵社出</label>
                                </div>
                                <div class="form-group">
                                    <label for="ui_backTicketPrice">返票价格</label>
                                    <asp:TextBox runat="server" ID="ui_backTicketPrice" CssClass="form-control" placeholder="返票价格"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>价格结算</label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="ui_settlementPriceAdult">成人</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-cny"></i>
                                                </div>
                                                <asp:TextBox runat="server" ID="ui_settlementPriceAdult" CssClass="form-control" placeholder="成人价格"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="ui_settlementPriceChild">儿童</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-cny"></i>
                                                </div>
                                                <asp:TextBox runat="server" ID="ui_settlementPriceChild" CssClass="form-control" placeholder="儿童价格"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <asp:Button runat="server" ID="ui_itemButton" CssClass="btn btn-primary" OnClick="ui_itemButton_Click" Text="提交" />
                </div>
            </div>
        </section>
    </aside>
    <script src="/js/jQuery-2.1.4.min.js"></script>
    <script src="/js/knockout-3.4.0.js"></script>
    <script src="/js/Pages/Page.TravelItemForm.js"></script>
</asp:Content>
