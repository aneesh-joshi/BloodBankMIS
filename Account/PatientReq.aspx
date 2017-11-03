<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="PatientReq.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

		<asp:Label ID="Debuf" runat="server" />

		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Name of Patient</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Name" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The name field is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPatientAge" CssClass="col-md-2 control-label">Age of Patient</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPatientAge" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The patient age is required." />
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
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Gender</b></asp:Label>
            <div class="col-md-10">
				<asp:DropDownList runat="server" ID="Gender">
					<asp:ListItem>Male</asp:ListItem>
					<asp:ListItem>Female</asp:ListItem>
				</asp:DropDownList>
				<asp:RequiredFieldValidator runat="server" ControlToValidate="Gender"
                    CssClass="text-danger" ErrorMessage="Gender is required." />
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
            <asp:Label runat="server" AssociatedControlID="txtROR" CssClass="col-md-2 control-label">Reason For Requirement</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtROR" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtROR"
                    CssClass="text-danger" ErrorMessage="The Reason for Requirement Field is required." />
            </div>
        </div>


		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Calendar2" CssClass="col-md-2 control-label">Required Before</asp:Label>
            <div class="col-md-10">
				<asp:Calendar ID="Calendar2" runat="server"   SelectionMode="DayWeekMonth"  onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
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
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>Contact Mobile Number</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtContactMobileNumber" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtContactMobileNumber"
                    CssClass="text-danger" ErrorMessage="Contact Mobile Number is required." />
				<br />
				<asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
					CssClass="text-danger" ControlToValidate="txtContactMobileNumber" ErrorMessage="Value must be a whole number" />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>State</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtState" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtState"
                    CssClass="text-danger" ErrorMessage="State Name is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><b>City</b></asp:Label>
            <div class="col-md-10">
				<asp:TextBox runat="server" ID="txtCity" CssClass="form-control" />
				<asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity"
                    CssClass="text-danger" ErrorMessage="Country Name is required." />
            </div>
        </div>


        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Post Your Requirement" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>

