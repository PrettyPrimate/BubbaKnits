<%@ Page Title="" Language="VB" MasterPageFile="~/Site2.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Content_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<h1>
Edit Items
</h1>
<br />

    <asp:GridView ID="allitemsGV" runat="server" AutoGenerateColumns="false" DataSourceID="Sqlall" DataKeyNames="item_id" AllowSorting="true"
        AutoGenerateEditButton="true" Width="100%">
        <Columns>
            <asp:BoundField DataField="item_id" HeaderText="item_id" SortExpression="item_id">
                <HeaderStyle CssClass="HiddenColumn" />
                <ItemStyle CssClass="HiddenColumn" />
            </asp:BoundField>
            <asp:BoundField DataField="Title_Desc" HeaderText="Title" SortExpression="Title_Desc" />
            <asp:TemplateField HeaderText="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image_url") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="itemImage" runat="server" ImageUrl='<%# Eval("image_url")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="colours" HeaderText="Colours" SortExpression="colours" />
            <asp:BoundField DataField="sizes" HeaderText="Sizes" SortExpression="sizes" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:TemplateField HeaderText="Category">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqlcategory" DataTextField="category_desc" DataValueField="category_id"
                        SelectedValue='<%# Eval("category_id") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("category_Desc") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>


  <asp:SqlDataSource ID="Sqlall" runat="server" ConnectionString="<%$ ConnectionStrings:PPConnectionString %>" ProviderName="System.Data.SqlClient"
        SelectCommand="proc_BK_Show_All" SelectCommandType="StoredProcedure" UpdateCommand="proc_BK_Update_item" UpdateCommandType="StoredProcedure">
        <UpdateParameters>
            <asp:Parameter Name="category_id" Type="Int32" />
            <asp:Parameter Name="title_desc" Type="String" />
            <asp:Parameter Name="image_url" Type="String" />
            <asp:Parameter Name="colours" Type="String" />
            <asp:Parameter Name="sizes" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="item_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

      <asp:SqlDataSource ID="Sqlcategory" runat="server" ConnectionString="<%$ ConnectionStrings:PPConnectionString %>" ProviderName="System.Data.SqlClient"
        SelectCommand="proc_BK_Category_DD" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>

</asp:Content>

