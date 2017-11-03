<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2> Donor Registration </h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
	<asp:Label Text="DEbug" ID="debug" runat="server" />
    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        
		<asp:ValidationSummary runat="server" CssClass="text-danger" />

		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Name" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The name field is required." />
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">UserName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The username field is required." />
            </div>
        </div>


		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">DOB</asp:Label>
            <div class="col-md-10">
				<asp:Calendar ID="DOB" runat="server" />
            </div>
        </div>

		

		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Gender</asp:Label>
            <div class="col-md-10">
                     <asp:DropDownList ID="ddlGender" runat="server">
						<asp:ListItem>Male</asp:ListItem>
						<asp:ListItem>Female</asp:ListItem>
					</asp:DropDownList>
            </div>
        </div>




		<div class="form-group">
						<asp:DropDownList ID="ddlBloodGroup" runat="server">
							<asp:ListItem>A</asp:ListItem>
							<asp:ListItem>B</asp:ListItem>
							<asp:ListItem>AB</asp:ListItem>
							<asp:ListItem>o</asp:ListItem>
						</asp:DropDownList>
						<asp:DropDownList ID="ddlRhesus" runat="server">
							<asp:ListItem>+</asp:ListItem>
							<asp:ListItem>-</asp:ListItem>
						</asp:DropDownList>
		</div>
		
		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Weight</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Weight" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Weight"
                    CssClass="text-danger" ErrorMessage="The weight field is required." />
            </div>
        </div>

		
		
		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">MobileNo</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="MobileNo" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="MobileNo"
                    CssClass="text-danger" ErrorMessage="The mobile number is required." />
            </div>
        </div>


		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">EmailId</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="EmailID" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="EmailID"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
				<asp:RegularExpressionValidator ID="regexEmailValid" runat="server" 
					ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
					ControlToValidate="EmailID" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Address" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                    CssClass="text-danger" ErrorMessage="The address field is required." />
            </div>
        </div>


		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">City</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="City" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="City"
                    CssClass="text-danger" ErrorMessage="The city field is required." />
            </div>
        </div>




		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">State</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="State" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="State"
                    CssClass="text-danger" ErrorMessage="The state field is required." />
            </div>
        </div>



		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">UserName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The username field is required." />
            </div>
        </div>



		 Date of Last Dontaion: <asp:Calendar ID="DOLD" runat="server" />


				<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox TextMode="Password" runat="server" ID="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
		<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Confirm Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox TextMode="Password" runat="server" ID="TextBox2" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>



        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>

