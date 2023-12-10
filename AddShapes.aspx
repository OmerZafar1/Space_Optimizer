<%@ Page Title="" Language="VB" MasterPageFile="~/Master_pages/Main.master" AutoEventWireup="false" CodeFile="AddShapes.aspx.vb" Inherits="Pages_AddShapes" %>


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
                        <h4 class="font-light mb-4 underline">Setup Shapes</h4>
                        <div class="col-12 row">
                            <div class="col-1"></div>
                            <div class="col-10">
                                <div class="col-12 row">
                                    <div class="col-6">
                                        <div class="col-12 row">
                                            <div class="col-3">
                                                <label style="font-size:15px;padding-top: 16px;">Shape Type: </label>
                                            </div>
                                            <div class="col-9">
                                                <telerik:RadComboBox runat="server" ID="cmbType" Width="100%" CssClass="rounded-4 border py-2 px-5 my-2" EnableEmbeddedSkins="False" Skin="cmb" Filter="Contains" MaxHeight="110">
                                                    <Items>
                                                        <telerik:RadComboBoxItem Text="--Select--" Value="-1" />
                                                        <telerik:RadComboBoxItem Text="Objects" Value="0" />
                                                        <telerik:RadComboBoxItem Text="Container" Value="1" />
                                                    </Items>
                                                </telerik:RadComboBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="col-12 row">
                                            <div class="col-3">
                                                <label style="font-size:15px;padding-top: 16px;">Shape Type: </label>
                                            </div>
                                            <div class="col-9">
                                                <telerik:RadComboBox runat="server" ID="cmbShapeType" Width="100%" CssClass="rounded-4 border py-2 px-5 my-2" EnableEmbeddedSkins="False" Skin="cmb" Filter="Contains" MaxHeight="110">
                                                    <Items>
                                                        <telerik:RadComboBoxItem Text="--Select--" Value="0" />
                                                        <telerik:RadComboBoxItem Text="Rectangle" Value="1" />
                                                        <telerik:RadComboBoxItem Text="Square" Value="2" />
                                                        <telerik:RadComboBoxItem Text="Parallelogram" Value="3" />
                                                        <telerik:RadComboBoxItem Text="Rombous" Value="4" />
                                                        <telerik:RadComboBoxItem Text="Triangle" Value="5" />
                                                        <telerik:RadComboBoxItem Text="Hexagon" Value="6" />
                                                    </Items>
                                                </telerik:RadComboBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 row">
                                    <div class="col-6">
                                        <div class="col-12 row">
                                            <div class="col-3">
                                                <label style="font-size:15px;padding-top: 16px;">Name: </label>
                                            </div>
                                            <div class="col-9">
                                                <telerik:RadTextBox runat="server" ID="txtName" type="text" CssClass="rounded-4 border" Height="40px" Width="100%" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="col-12 row">
                                            <div class="col-3">
                                                <label style="font-size:15px;padding-top: 16px;">Quantity: </label>
                                            </div>
                                            <div class="col-9">
                                                <telerik:RadNumericTextBox runat="server" ID="NumTxtQuantity" CssClass="rounded-4 border" MinValue="1" Type="Number" Height="40px" Width="100%">
                                                    <NumberFormat DecimalDigits="0" />
                                                </telerik:RadNumericTextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div style="height: 10px"></div>

                                <div class="col-12 row">
                                    <div class="col-6">
                                        <div class="col-12 row">
                                            <div class="col-3">
                                                <label style="font-size:15px;padding-top: 16px;">Length: </label>
                                            </div>
                                            <div class="col-9">
                                                <telerik:RadNumericTextBox runat="server" ID="NumTxtLength" CssClass="rounded-4 border" MinValue="1" Type="Number" Height="40px" Width="100%">
                                                    <NumberFormat DecimalDigits="0" />
                                                </telerik:RadNumericTextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="col-12 row">
                                            <div class="col-3">
                                                <label style="font-size:15px;padding-top: 16px;">Width: </label>
                                            </div>
                                            <div class="col-9">
                                                <telerik:RadNumericTextBox runat="server" ID="NumTxtWidth" CssClass="rounded-4 border" MinValue="1" Type="Number" Height="40px" Width="100%">
                                                    <NumberFormat DecimalDigits="0" />
                                                </telerik:RadNumericTextBox>
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
                                <asp:Button ID="btnInsert" runat="server"
                                    CssClass="btn btn-sm btn-yellow rounded-4 fw-semibold py-2 px-5 my-2" Text="Insert"/>
                            </div>
                            <div class="col-5"></div>
                        </div>

                        <div class="col-12">
                            <telerik:RadGrid ID="TgrdDynamicGridEXP" GroupingEnabled="true" ShowGroupPanel="true" AllowFilteringByColumn="true" ShowFooter="true" ShowFilterIcon="False" GroupingSettings-CaseSensitive="false" CurrentFilterFunction="Contains" runat="server" PagerStyle-AlwaysVisible="True"
                        AllowPaging="true" AllowSorting="true" CssClass="grid" AutoGenerateColumns="true" HeaderStyle-Font-Bold="true" Skin="Default">

                            </telerik:RadGrid>
                        </div>
                    </div>
                </div>
            </section>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

