<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="webappc.WebForm2" %>



<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>



<!DOCTYPE html>
<link rel="stylesheet" href="styles.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <h2><mark>Systems Guild Inc. Entry Level Coding Challenge</mark></h2>
    <form id="form1" runat="server" style="position: absolute; width: 70%; left: 15%; height: 100%; background-color: white; right: 15%;">
        <div style="position: absolute; width: 100%; left: 0%; height: 20px; top: 0px;">
            <asp:Label ID="Label1" runat="server" Text="Postal code" CssClass="center"></asp:Label>
        </div>
        <div style="position: absolute; width: 100%; left: 0%; height: 20px; top: 20px;">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="center"></asp:TextBox>
        </div>
        <div style="position: absolute; width: 100%; left: 0%; height: 20px; top: 40px;"></div>      
        <div style="position: absolute; width: 100%; left: 0%; height: 20px; top: 60px;">
            <asp:Label ID="Label3" runat="server" Text="Range of dates" CssClass="center"></asp:Label>
        </div>
        <div style="position: absolute; width: 50%; left: 0%; height: 20px; top: 80px;">
            <asp:Label ID="Label2" runat="server" Text="Start date:" CssClass="center"></asp:Label>
        </div>
        <div style="position: absolute; width: 50%; left: 50%; height: 20px; top: 80px;">
            <asp:Label ID="Label4" runat="server" Text="End date:" CssClass="center"></asp:Label>
        </div>  
        <div style="position: absolute; width: 50%; left: 00%; height: 20px; top: 100px;">
            <div style="position: absolute; width: 151px; left: 50%; height: 20px; top: 00px; margin-right: -50%; transform: translate(-50%);">
                <asp:TextBox ID="sm" runat="server" placeholder="mm" CssClass="m"></asp:TextBox>
                <asp:TextBox ID="sd" runat="server" placeholder="dd" CssClass="d"></asp:TextBox>
                <asp:TextBox ID="sy" runat="server" placeholder="mm" CssClass="y"></asp:TextBox>
            </div>
        </div>
        <div style="position: absolute; width: 50%; left: 50%; height: 20px; top: 100px;">
            <div style="position: absolute; width: 151px; left: 50%; height: 20px; top: 00px; margin-right: -50%; transform: translate(-50%);">
                 <asp:TextBox ID="em" runat="server" placeholder="mm" CssClass="m"></asp:TextBox>
                 <asp:TextBox ID="ed" runat="server" placeholder="dd" CssClass="d"></asp:TextBox>
                 <asp:TextBox ID="ey" runat="server" placeholder="yyyy" CssClass="y"></asp:TextBox>
            </div>
        </div>
        <div style="position: absolute; width: 100%; left: 0%; height: 40px; top: 120px;">
            <asp:Button ID="Button1" runat="server" Height="27px" OnClick="Button1_Click" Text="Calcuate" Width="128px"  CssClass="center" />
        </div>
        <div style="position: absolute; width: 100%; left: 0%; height: 400px; top: 160px;">
            <asp:Chart ID="Chart1" runat="server" CssClass="center" >
                <series>
                    <asp:Series Name="Average Transfer">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </div>

    </form>
</body>
</html>
