﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allbooksadmin.aspx.cs" Inherits="library.allbooksadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .hf{
            background: rgba(0, 0, 0, 0.5);
        }
        .dropdownlist1 {
    background: rgba(0, 0, 0, 0.5);
    color:white;

}
        </style>
</head>
<body style="height:657px; width:1366px;margin:0px;background-image:url('allbookadminup.png'); background-repeat:no-repeat; background-size:100% 100%;">
    <form id="form1" runat="server">
            <div style="height: 53px;margin-top:0px;margin-bottom:0px;z-index:1000;background: rgba(0, 0, 0, 0.5);position:sticky;">
                
                <asp:Button ID="home" runat="server" Text="HOME" style="border-style: none; border-color: inherit; border-width: medium; position:absolute; top: 8px; left: 514px; z-index:1000; color:white; height: 36px; width: 76px; font-size:18px; background:none; " OnClick="home_Click" />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logout.png" style="position:absolute; top: 7px; left: 1294px; z-index:1000; height: 36px; width: 36px;" OnClick="ImageButton1_Click" />
                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList1" runat="server" style="position:absolute; top: 12px; left: 600px; height: 29px; width: 111px; right: 383px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Librarian</asp:ListItem>
                    <asp:ListItem>Add Librarian</asp:ListItem>
                    <asp:ListItem>Remove Librarian</asp:ListItem>
                    <asp:ListItem>Update Librarian</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList2" runat="server" style="position:absolute; top: 12px; left: 741px; height: 29px; width: 125px; right: 226px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Issue Books</asp:ListItem>
                    <asp:ListItem>Issued Booklist</asp:ListItem>
                    
                </asp:DropDownList>

                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList3" runat="server" style="position:absolute; top: 12px; left: 895px; height: 29px; width: 125px; right: 72px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Books</asp:ListItem>
                    <asp:ListItem>All Books</asp:ListItem>
                    <asp:ListItem>Available Books</asp:ListItem>
                    
                </asp:DropDownList>
          
            </div>
            
            <div class="hf" style="height: 53px;margin-top:0px;margin-bottom:0px;z-index:1000;position:absolute; width: 162px; margin-left: 657px; top: 53px; left: 0px;">
            <asp:Label ID="Label2" runat="server" style="position:absolute; top: 16px; left: 19px; height: 20px; width: 124px; z-index:1000;color:white; right: 19px;"></asp:Label>
            </div>
            <div class="hf" style="height: 53px;margin-top:0px;top:604px; margin-bottom:0px;z-index:1000;position:absolute; width: 100%; left: 0px;">
            <asp:Label ID="Label1" runat="server" style="position:absolute; top: 15px; left: 567px; height: 20px; width: 317px; z-index:1000;color:white; right: 482px;">Copyright ©️ DDN LIbrary. All Rights Reserved.</asp:Label>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" SelectCommand="SELECT [price], [booktype], [isbnnumber], [authorname], [bookname], [bookid] FROM [BOOK]"></asp:SqlDataSource>
            <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="ALL BOOKS" style="position:absolute; top: 199px; left: 673px;"></asp:Label>
        <asp:ImageButton ID="ImageButton2" ImageUrl="~/go.png" runat="server" style="position:absolute; top: 227px; left: 905px; height: 20px; width: 21px;" OnClick="ImageButton2_Click"/>
            <asp:Label ID="Label4" runat="server" Text="Search" style="position:absolute; top: 230px; left: 653px; right: 226px; height: 19px;width:52px;" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="bookid" runat="server" style="position:absolute; top: 227px; left: 717px;" ToolTip="Enter Book id"></asp:TextBox>    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="bookid"  ForeColor="Black" style="position:absolute; top: 262px; left: 475px;">
                <Columns>
                    <asp:BoundField DataField="bookid" HeaderText="bookid" ReadOnly="True" SortExpression="bookid" />
                    <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                    <asp:BoundField DataField="authorname" HeaderText="authorname" SortExpression="authorname" />
                    <asp:BoundField DataField="isbnnumber" HeaderText="isbnnumber" SortExpression="isbnnumber" />
                    <asp:BoundField DataField="booktype" HeaderText="booktype" SortExpression="booktype" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="bookid"  ForeColor="Black" style="position:absolute; top: 267px; left: 477px;" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="bookid" HeaderText="bookid" ReadOnly="True" SortExpression="bookid" />
                    <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                    <asp:BoundField DataField="authorname" HeaderText="authorname" SortExpression="authorname" />
                    <asp:BoundField DataField="isbnnumber" HeaderText="isbnnumber" SortExpression="isbnnumber" />
                    <asp:BoundField DataField="booktype" HeaderText="booktype" SortExpression="booktype" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

        </form>
    </body>
    </html>