<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Khoon Blood Bank System</h1>
        <p class="lead">Khoon is a system for you to manage your blood needs. </p>
		<p class="lead">Find donors close to you or register yourself as a donor.</p>
		<p class="lead">&nbsp;Feel the joy of giving.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
		 <div class="col-md-4">
            <h2>Register as a Donor</h2>
            <p>
                Give the gift of life to somebody. By simply registering as a donor, you may be able to help</p>
			 <p>
                 someone in their time of need.</p>
            <p>
				<asp:Button CssClass="btn btn-default" runat="server" Text="Register &raquo;" OnClick="btnRegister"/>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Post Hospital Requirements</h2>
            <p>
                Are you a hospital looking for blood?</p>
			<p>
                Register here and if a match is found, you will be notified.</p>
            <p>
                <asp:Button CssClass="btn btn-default" runat="server" Text="Post Requirement &raquo;" OnClick="btnPostHReq"/>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Post Patient Requirements</h2>
            <p>
                Are you a patient in desperate need of blood.</p>
			<p>
                Register here and you can get into direct touch with your donor.</p>
            <p>
                <asp:Button CssClass="btn btn-default" runat="server" Text="Post Requirement &raquo;" OnClick="btnPostPReq"/>
            </p>
        </div>
		<br />
    </div>
	<div class="row">
			<h2>Search:</h2>
			<div>
				<p>
					<h3>Search By Blood Type</h3>
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
					</p>
					<p>
						<h3>Search By City</h3>
						<asp:TextBox ID="txtSBCity" runat="server"/>
					</p>
		     </div>
			<asp:Button CssClass="btn btn-default" Text="Search" runat="server" OnClick="SearchButton_Click" />
			(Search for B+; many examples)
			<asp:GridView runat="server" ID="ResultsGridView" />
		</div>
</asp:Content>
