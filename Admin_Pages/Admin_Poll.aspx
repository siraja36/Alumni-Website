﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin.master" AutoEventWireup="true" CodeFile="Admin_Poll.aspx.cs" Inherits="Admin_Pages_Admin_Poll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- poll div starts here-->
<h2 style="float:right;font-size:23px"><img src="../images/logobig3.png" /> Poll Details</h2>
<img src="../images/active.png" width="100%" height="3px" />
    <!--poll menu-->
    <br /><br />
    <center>

<ul class="menu">
<li><a href="Admin_Poll.aspx?sh=view1" id="addpoll" title="1" class="active" runat="server" >Add</a></li>
			<li><a id="editpoll" title="2" href="Admin_Poll.aspx?sh=view2" runat="server" >Edit / Delete</a></li>
			</ul><!-- Menu end -->
        <br /><br /><br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="view1" runat="server">
        
<div id="div1" class="polldiv" style="width:100%">
    
    <div id="did_you_know" style="height:inherit">
    <table cellpadding="5" style="text-align:left">
        <tr><td>Poll Question</td><td>:</td><td>
            <textarea id="pollquest" cols="30" rows="3" runat="server"></textarea><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a question please" ForeColor="Red" ControlToValidate="pollquest" SetFocusOnError="true"></asp:RequiredFieldValidator>
            </td></tr>
            <tr><td>Option1</td><td>:</td><td>
                <asp:TextBox ID="opt1" runat="server"></asp:TextBox></td></tr>
            <tr><td>Option2</td><td>:</td><td><asp:TextBox ID="opt2" runat="server"></asp:TextBox></td></tr>
            <tr><td>Option3</td><td>:</td><td><asp:TextBox ID="opt3" runat="server"></asp:TextBox></td></tr>
            <tr><td>Option4</td><td>:</td><td><asp:TextBox ID="opt4" runat="server"></asp:TextBox></td></tr>
            <tr><td>Activate Poll</td><td>:</td><td><asp:RadioButtonList ID="pollactivate" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem Selected="True">No</asp:ListItem>
                </asp:RadioButtonList> </td></tr> 
            <tr><td></td><td></td><td>  <asp:Label ID="success" runat="server" Text="" ForeColor="GreenYellow"></asp:Label>  
                </td>
                   </tr>
            </table>
    <br />    
    <asp:Button ID="submit" runat="server" Text="Add Poll" CssClass="submitbutton" onclick="submit_Click" />
    <br /><br />
    </div>
</div>
</asp:View>
 <asp:View ID="view2" runat="server">
 
<div id="div2" class="polldiv" style="width:100%">

 <asp:GridView ID="PollGridView1" ShowHeaderWhenEmpty="true" runat="server" AllowPaging="True" EnableSortingAndPagingCallbacks="true"
           GridLines="None" CellPadding="5" ForeColor="#333333" onpageindexchanging="PollGridView1_PageIndexChanging" DataKeyNames="rowid"
        AutoGenerateColumns="False" PageIndex="1" ShowFooter="True" onrowcancelingedit="PollGridView1_RowCancelingEdit" 
        onrowdeleting="PollGridView1_RowDeleting" onrowediting="PollGridView1_RowEditing" onrowupdating="PollGridView1_RowUpdating"
         AutoGenerateEditButton="true" AutoGenerateDeleteButton="true"   >
      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<RowStyle BackColor="#EFF3FB" />
<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<AlternatingRowStyle BackColor="White" />
<PagerSettings PageButtonCount="5" />
<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <Columns>
    <asp:BoundField DataField="rowid" HeaderText="Id" />
    <asp:BoundField DataField="pollquest" HeaderText="Question" />
    <asp:BoundField DataField="opt1" HeaderText="Opt1" />
    <asp:BoundField DataField="opt2" HeaderText="Opt2" />
    <asp:BoundField DataField="opt3" HeaderText="Opt3" />
    <asp:BoundField DataField="opt4" HeaderText="Opt4" />
    <asp:BoundField DataField="activate" HeaderText="Activate" />
  </Columns>
       </asp:GridView>

</div>
</asp:View>
</asp:MultiView>
</center>
<!-- poll div ends here-->

</asp:Content>
