<%@ Page Title="" Language="VB" MasterPageFile="~/Master_pages/Main.master" AutoEventWireup="false" CodeFile="Test.aspx.vb" Inherits="Pages_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
    </style>
    <asp:UpdatePanel runat="server">
        <ContentTemplate runat="server">
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <section class="container mb-5">
                <div class="row justify-content-center contact gap-5 gap-lg-0">
                    <div class="col-8 col-md-12 pt-5 d-flex flex-column align-items-center position-relative shadow mt-5 h-custom" style="height: fit-content;">
                        <h4 class="font-light mb-4 underline">Optimize Solution</h4>
                        <div class="col-12 row">
                            <div class="col-1"></div>
                            <div class="col-10">
                                <div class="col-12 row">
                                    <div class="col-6">
                                        <div class="col-12 row">
                                            <div class="col-3">
                                                <label style="font-size:15px;padding-top: 16px;">Container: </label>
                                            </div>
                                            <div class="col-9">
                                                <telerik:RadComboBox runat="server" ID="RadComboBox1" Width="100%" CssClass="rounded-4 border py-2 px-5 my-2" EnableEmbeddedSkins="False" Skin="cmb" Filter="Contains" MaxHeight="110" AutoPostBack="true">
                                                    <Items>
                                                        <telerik:RadComboBoxItem Text="--Select--" Value="0" />
                                                        <telerik:RadComboBoxItem Text="Container" Value="1" />
                                                        <telerik:RadComboBoxItem Text="Objects" Value="2" />
                                                    </Items>
                                                </telerik:RadComboBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="col-12 row">
                                            <div class="col-3">
                                                <label style="font-size:15px;padding-top: 16px;">Object: </label>
                                            </div>
                                            <div class="col-9">
                                                <telerik:RadComboBox runat="server" ID="cmbShapeType" CssClass="rounded-4 border py-2 px-5 my-2" Width="100%" EnableEmbeddedSkins="False" Skin="cmb" Filter="Contains" MaxHeight="110" CheckBoxes="true" EnableCheckAllItemsCheckBox="true" AllowCustomText="True">
                                                    <Items>
                                                        <telerik:RadComboBoxItem Text="Item1" Value="1" />
                                                        <telerik:RadComboBoxItem Text="Item2" Value="2" />
                                                        <telerik:RadComboBoxItem Text="Other" Value="3" />
                                                    </Items>
                                                </telerik:RadComboBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-1"></div>
                        </div>
                        <div class="col-12 row">
                            <div class="col-5"></div>
                            <div class="col-2">
                                <button
                                    class="btn btn-sm btn-yellow rounded-4 fw-semibold py-2 px-5 my-2">
                                    Optimize
                                </button>
                            </div>
                            <div class="col-5"></div>
                        </div>
                    </div>
                </div>
            </section>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

