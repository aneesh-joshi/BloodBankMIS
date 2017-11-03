<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="HospitalReq.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2> Hospital Registration </h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Post a requirement for your hospital</h4>
        <hr />

		<asp:Label ID="Debuf" runat="server" />


        <asp:ValidationSummary runat="server" CssClass="text-danger" />
		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Name of Patient</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Name" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The name field is required." />
            </div>
        </div>


		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Blood Group</b></asp:Label>
            <div class="col-md-10">
				<asp:DropDownList ID="ddlBloodGroup" runat="server">
					<asp:ListItem>A</asp:ListItem>
					<asp:ListItem>B</asp:ListItem>
					<asp:ListItem>O</asp:ListItem>
					<asp:ListItem>AB</asp:ListItem>
				</asp:DropDownList>
				<asp:DropDownList ID="ddlRhesus" runat="server">
					<asp:ListItem>+</asp:ListItem>
					<asp:ListItem>-</asp:ListItem>
				</asp:DropDownList>
				<asp:RequiredFieldValidator runat="server" ControlToValidate="ddlRhesus"
                    CssClass="text-danger" ErrorMessage="Rhesus Group is required." />
            </div>
        </div>

		
		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtHospitalName" CssClass="col-md-2 control-label">Name of Hospital</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtHospitalName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtHospitalName"
                    CssClass="text-danger" ErrorMessage="The name field is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Hospital Address</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtHospitalAddress" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtHospitalAddress"
                    CssClass="text-danger" ErrorMessage="Address is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>City</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtCity" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity"
                    CssClass="text-danger" ErrorMessage="City is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Name of Doctor</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtDoctorName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDoctorName"
                    CssClass="text-danger" ErrorMessage="The name field is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Date of Requirement</asp:Label>
            <div class="col-md-10">
				<asp:Calendar ID="DOR" runat="server"   SelectionMode="DayWeekMonth"  onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Contact Name</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtContactName" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtContactName"
                    CssClass="text-danger" ErrorMessage="Contact Name is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Contact Mobile Number</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtContactMobileNumber" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtContactMobileNumber"
                    CssClass="text-danger" ErrorMessage="Contact Mobile Number is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Contact Email ID</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtContactEmailID" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtContactEmailID"
                    CssClass="text-danger" ErrorMessage="Contact email id is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Contact Address</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtContactAddress" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtContactAddress"
                    CssClass="text-danger" ErrorMessage="Contact email id is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Patient City</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtPatientCity" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtPatientCity"
                    CssClass="text-danger" ErrorMessage="Contact email id is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Patient State</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtPatientState" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtPatientState"
                    CssClass="text-danger" ErrorMessage="Contact email id is required." />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>

