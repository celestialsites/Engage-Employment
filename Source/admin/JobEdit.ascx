<%@ Control language="C#" Inherits="Engage.Dnn.Employment.Admin.JobEdit" AutoEventWireup="false" Codebehind="JobEdit.ascx.cs" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/texteditor.ascx" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<div class="information"><asp:Label ResourceKey="lblJobsHeader.Help" runat="server" /></div>
<table>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblName" controlname="PositionDropDownList" runat="server" />
        </td>
        <td valign="top">
            <asp:DropDownList ID="PositionDropDownList" runat="server"/>
            <asp:CompareValidator runat="server" ControlToValidate="PositionDropDownList" Operator="NotEqual" SetFocusOnError="True" ValueToCompare="-1" Display="None" resourcekey="cvPosition" ValidationGroup="JobEdit"/>
        </td>
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblCategory" controlname="CategoryDropDownList" runat="server" />
        </td>
        <td valign="top">
            <asp:DropDownList ID="CategoryDropDownList" runat="server"/>
            <asp:CompareValidator runat="server" ControlToValidate="CategoryDropDownList" Operator="NotEqual" SetFocusOnError="True" ValueToCompare="-1" Display="None" resourcekey="cvCategory" ValidationGroup="JobEdit"/>
        </td>
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblLocation" controlname="LocationDropDownList" runat="server" />
        </td>
        <td valign="top">
            <asp:DropDownList ID="LocationDropDownList" runat="server" />
            <asp:CompareValidator runat="server" ControlToValidate="LocationDropDownList" Operator="NotEqual" SetFocusOnError="True" ValueToCompare="-1" Display="None" resourcekey="cvLocation" ValidationGroup="JobEdit" />
        </td>
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblSortOrder" controlname="SortOrderTextBox" runat="server" />
        </td>
        <td valign="top">
            <asp:TextBox ID="SortOrderTextBox" runat="server" CssClass="NormalTextBox" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="SortOrderTextBox" SetFocusOnError="True" Display="None" resourcekey="rfvSortOrder" ValidationGroup="JobEdit" />
            <asp:CompareValidator ID="SortOrderIntegerValidator" runat="server" ControlToValidate="SortOrderTextBox" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" Display="None" resourcekey="cvSortOrder" ValidationGroup="JobEdit" />
        </td>
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblIsHot" controlname="IsHotCheckBox" runat="server" />
        </td>
        <td valign="top">
            <asp:CheckBox ID="IsHotCheckBox" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblIsFilled" controlname="IsFilledCheckBox" runat="server" />
        </td>
        <td valign="top">
            <asp:CheckBox ID="IsFilledCheckBox" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblStartDate" controlname="StartDateTextBox" runat="server" />
        </td>
        <td valign="top">
            <telerik:RadDatePicker ID="StartDateTextBox" runat="server" CssClass="NormalTextBox DatePicker" Calendar-ShowRowHeaders="false" Skin="Simple" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="StartDateTextBox" Display="None" resourcekey="StartDateRequiredValidator" ValidationGroup="JobEdit" />
            <asp:CompareValidator runat="server" Type="Date" Operator="LessThan" ControlToValidate="StartDateTextBox" ControlToCompare="ExpireDateTextBox" Display="None" resourcekey="StartExpireDateCompareValidator" ValidationGroup="JobEdit" />
        </td>
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblExpireDate" controlname="ExpireDateTextBox" runat="server" />
        </td>
        <td valign="top">
            <telerik:RadDatePicker ID="ExpireDateTextBox" runat="server" CssClass="NormalTextBox DatePicker" Calendar-ShowRowHeaders="false" Skin="Simple" />
        </td>
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblRequiredQualifications" controlname="RequiredQualificationsTextEditor" runat="server" />
        </td>
        <td valign="top">
            <dnn:TextEditor Height="400px" Width="400px" ID="RequiredQualificationsTextEditor" runat="server" ChooseMode="false" HtmlEncode="false" TextRenderMode="raw" />
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblDesiredQualifications" controlname="DesiredQualificationsTextEditor" runat="server" />
        </td>
        <td valign="top">
            <dnn:TextEditor Height="400px" Width="400px" ID="DesiredQualificationsTextEditor" runat="server" ChooseMode="false" HtmlEncode="false" TextRenderMode="raw"  />
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblEmailAddress" controlname="EmailAddressTextBox" runat="server" />
        </td>
        <td valign="top">
            <asp:TextBox ID="EmailAddressTextBox" runat="server" CssClass="NormalTextBox"/>
            <asp:RegularExpressionValidator ID="EmailAddressRegexValidator" runat="server" Display="None" ControlToValidate="EmailAddressTextBox" resourcekey="regexEmailAddress" ValidationGroup="JobEdit" />
            <asp:RequiredFieldValidator runat="server" Display="None" ControlToValidate="EmailAddressTextBox" resourcekey="rfvEmailAddress" ValidationGroup="JobEdit" />
        </td>
    </tr>
    <tr>
        <td class="SubHead">
            <dnn:label ResourceKey="lblApplicationUrl" controlname="ApplicationUrlTextBox" runat="server" />
        </td>
        <td valign="top">
            <asp:TextBox ID="ApplicationUrlTextBox" runat="server" CssClass="NormalTextBox"/>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="ApplicationUrlTextBox" Display="None" ResourceKey="regexApplicationUrl" ValidationGroup="JobEdit" ValidationExpression=".*:.*|^/.*" />
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:LinkButton ID="UpdateButton" runat="server" CssClass="CommandButton" resourcekey="lnkUpdate" ValidationGroup="JobEdit"/>&nbsp;
            <asp:LinkButton ID="DeleteButton" runat="server" CssClass="CommandButton" CausesValidation="False" resourcekey="lnkDelete"/>&nbsp;
            <asp:LinkButton ID="CancelButton" runat="server" CssClass="CommandButton" CausesValidation="False" resourcekey="lnkCancel"/>
            <asp:ValidationSummary runat="server" DisplayMode="BulletList" ShowMessageBox="true" ShowSummary="false" ValidationGroup="JobEdit" />
        </td>
    </tr>
</table>