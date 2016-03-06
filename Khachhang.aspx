<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Khachhang.aspx.cs" Inherits="Khachhang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Bảng Khách Hàng" Font-Size="18pt" ForeColor="#003366"></asp:Label>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_khach_hang" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID_khach_hang" HeaderText="ID_khach_hang" InsertVisible="False" ReadOnly="True" SortExpression="ID_khach_hang" />
                <asp:BoundField DataField="Ten_khach_hang" HeaderText="Ten_khach_hang" SortExpression="Ten_khach_hang" />
                <asp:BoundField DataField="Dia_chi" HeaderText="Dia_chi" SortExpression="Dia_chi" />
                <asp:BoundField DataField="So_dien_thoai" HeaderText="So_dien_thoai" SortExpression="So_dien_thoai" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Chỉnh sửa" InsertText="Thêm mới" NewText="Mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlybanhangConnectionString %>" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [ID_khach_hang] = @ID_khach_hang" InsertCommand="INSERT INTO [Khach_Hang] ([Ten_khach_hang], [Dia_chi], [So_dien_thoai]) VALUES (@Ten_khach_hang, @Dia_chi, @So_dien_thoai)" SelectCommand="SELECT * FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [Ten_khach_hang] = @Ten_khach_hang, [Dia_chi] = @Dia_chi, [So_dien_thoai] = @So_dien_thoai WHERE [ID_khach_hang] = @ID_khach_hang">
            <DeleteParameters>
                <asp:Parameter Name="ID_khach_hang" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ten_khach_hang" Type="String" />
                <asp:Parameter Name="Dia_chi" Type="String" />
                <asp:Parameter Name="So_dien_thoai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_khach_hang" Type="String" />
                <asp:Parameter Name="Dia_chi" Type="String" />
                <asp:Parameter Name="So_dien_thoai" Type="String" />
                <asp:Parameter Name="ID_khach_hang" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_khach_hang" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ID_khach_hang:
                <asp:Label ID="ID_khach_hangLabel1" runat="server" Text='<%# Eval("ID_khach_hang") %>' />
                <br />
                Ten_khach_hang:
                <asp:TextBox ID="Ten_khach_hangTextBox" runat="server" Text='<%# Bind("Ten_khach_hang") %>' />
                <br />
                Dia_chi:
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                So_dien_thoai:
                <asp:TextBox ID="So_dien_thoaiTextBox" runat="server" Text='<%# Bind("So_dien_thoai") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ten_khach_hang:
                <asp:TextBox ID="Ten_khach_hangTextBox" runat="server" Text='<%# Bind("Ten_khach_hang") %>' />
                <br />
                Dia_chi:
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                So_dien_thoai:
                <asp:TextBox ID="So_dien_thoaiTextBox" runat="server" Text='<%# Bind("So_dien_thoai") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID_khach_hang:
                <asp:Label ID="ID_khach_hangLabel" runat="server" Text='<%# Eval("ID_khach_hang") %>' />
                <br />
                Ten_khach_hang:
                <asp:Label ID="Ten_khach_hangLabel" runat="server" Text='<%# Bind("Ten_khach_hang") %>' />
                <br />
                Dia_chi:
                <asp:Label ID="Dia_chiLabel" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                So_dien_thoai:
                <asp:Label ID="So_dien_thoaiLabel" runat="server" Text='<%# Bind("So_dien_thoai") %>' />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="18pt" ForeColor="#003366" Text="Bảng Sản Phẩm"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_san_pham" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID_san_pham" HeaderText="ID_san_pham" InsertVisible="False" ReadOnly="True" SortExpression="ID_san_pham" />
                <asp:BoundField DataField="Ten_san_pham" HeaderText="Ten_san_pham" SortExpression="Ten_san_pham" />
                <asp:BoundField DataField="ID_Loai_san_pham" HeaderText="ID_Loai_san_pham" SortExpression="ID_Loai_san_pham" />
                <asp:BoundField DataField="Mo_ta" HeaderText="Mo_ta" SortExpression="Mo_ta" />
                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Chỉnh sửa" InsertText="Thêm" NewText="Mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:quanlybanhangConnectionString %>" DeleteCommand="DELETE FROM [San_Pham] WHERE [ID_san_pham] = @ID_san_pham" InsertCommand="INSERT INTO [San_Pham] ([Ten_san_pham], [ID_Loai_san_pham], [Mo_ta], [Gia]) VALUES (@Ten_san_pham, @ID_Loai_san_pham, @Mo_ta, @Gia)" SelectCommand="SELECT * FROM [San_Pham]" UpdateCommand="UPDATE [San_Pham] SET [Ten_san_pham] = @Ten_san_pham, [ID_Loai_san_pham] = @ID_Loai_san_pham, [Mo_ta] = @Mo_ta, [Gia] = @Gia WHERE [ID_san_pham] = @ID_san_pham">
            <DeleteParameters>
                <asp:Parameter Name="ID_san_pham" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ten_san_pham" Type="String" />
                <asp:Parameter Name="ID_Loai_san_pham" Type="Int32" />
                <asp:Parameter Name="Mo_ta" Type="String" />
                <asp:Parameter Name="Gia" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_san_pham" Type="String" />
                <asp:Parameter Name="ID_Loai_san_pham" Type="Int32" />
                <asp:Parameter Name="Mo_ta" Type="String" />
                <asp:Parameter Name="Gia" Type="Decimal" />
                <asp:Parameter Name="ID_san_pham" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="ID_san_pham" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                ID_san_pham:
                <asp:Label ID="ID_san_phamLabel1" runat="server" Text='<%# Eval("ID_san_pham") %>' />
                <br />
                Ten_san_pham:
                <asp:TextBox ID="Ten_san_phamTextBox" runat="server" Text='<%# Bind("Ten_san_pham") %>' />
                <br />
                ID_Loai_san_pham:
                <asp:TextBox ID="ID_Loai_san_phamTextBox" runat="server" Text='<%# Bind("ID_Loai_san_pham") %>' />
                <br />
                Mo_ta:
                <asp:TextBox ID="Mo_taTextBox" runat="server" Text='<%# Bind("Mo_ta") %>' />
                <br />
                Gia:
                <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ten_san_pham:
                <asp:TextBox ID="Ten_san_phamTextBox" runat="server" Text='<%# Bind("Ten_san_pham") %>' />
                <br />
                ID_Loai_san_pham:
                <asp:TextBox ID="ID_Loai_san_phamTextBox" runat="server" Text='<%# Bind("ID_Loai_san_pham") %>' />
                <br />
                Mo_ta:
                <asp:TextBox ID="Mo_taTextBox" runat="server" Text='<%# Bind("Mo_ta") %>' />
                <br />
                Gia:
                <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID_san_pham:
                <asp:Label ID="ID_san_phamLabel" runat="server" Text='<%# Eval("ID_san_pham") %>' />
                <br />
                Ten_san_pham:
                <asp:Label ID="Ten_san_phamLabel" runat="server" Text='<%# Bind("Ten_san_pham") %>' />
                <br />
                ID_Loai_san_pham:
                <asp:Label ID="ID_Loai_san_phamLabel" runat="server" Text='<%# Bind("ID_Loai_san_pham") %>' />
                <br />
                Mo_ta:
                <asp:Label ID="Mo_taLabel" runat="server" Text='<%# Bind("Mo_ta") %>' />
                <br />
                Gia:&nbsp;<asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="18pt" ForeColor="#003366" Text="Bảng Loại Sản Phẩm"></asp:Label>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_loai_san_pham" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID_loai_san_pham" HeaderText="ID_loai_san_pham" InsertVisible="False" ReadOnly="True" SortExpression="ID_loai_san_pham" />
                <asp:BoundField DataField="Ten_loai" HeaderText="Ten_loai" SortExpression="Ten_loai" />
                <asp:BoundField DataField="Mo_ta" HeaderText="Mo_ta" SortExpression="Mo_ta" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Chỉnh sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:FormView ID="FormView3" runat="server" DataKeyNames="ID_loai_san_pham" DataSourceID="SqlDataSource3">
            <EditItemTemplate>
                ID_loai_san_pham:
                <asp:Label ID="ID_loai_san_phamLabel1" runat="server" Text='<%# Eval("ID_loai_san_pham") %>' />
                <br />
                Ten_loai:
                <asp:TextBox ID="Ten_loaiTextBox" runat="server" Text='<%# Bind("Ten_loai") %>' />
                <br />
                Mo_ta:
                <asp:TextBox ID="Mo_taTextBox" runat="server" Text='<%# Bind("Mo_ta") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ten_loai:
                <asp:TextBox ID="Ten_loaiTextBox" runat="server" Text='<%# Bind("Ten_loai") %>' />
                <br />
                Mo_ta:
                <asp:TextBox ID="Mo_taTextBox" runat="server" Text='<%# Bind("Mo_ta") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID_loai_san_pham:
                <asp:Label ID="ID_loai_san_phamLabel" runat="server" Text='<%# Eval("ID_loai_san_pham") %>' />
                <br />
                Ten_loai:
                <asp:Label ID="Ten_loaiLabel" runat="server" Text='<%# Bind("Ten_loai") %>' />
                <br />
                Mo_ta:
                <asp:Label ID="Mo_taLabel" runat="server" Text='<%# Bind("Mo_ta") %>' />
                <br />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:quanlybanhangConnectionString %>" DeleteCommand="DELETE FROM [Loai_san_pham] WHERE [ID_loai_san_pham] = @ID_loai_san_pham" InsertCommand="INSERT INTO [Loai_san_pham] ([Ten_loai], [Mo_ta]) VALUES (@Ten_loai, @Mo_ta)" SelectCommand="SELECT * FROM [Loai_san_pham]" UpdateCommand="UPDATE [Loai_san_pham] SET [Ten_loai] = @Ten_loai, [Mo_ta] = @Mo_ta WHERE [ID_loai_san_pham] = @ID_loai_san_pham">
            <DeleteParameters>
                <asp:Parameter Name="ID_loai_san_pham" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ten_loai" Type="String" />
                <asp:Parameter Name="Mo_ta" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_loai" Type="String" />
                <asp:Parameter Name="Mo_ta" Type="String" />
                <asp:Parameter Name="ID_loai_san_pham" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="18pt" ForeColor="#003366" Text="Bảng Hóa Đơn"></asp:Label>
        <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_Hoa_don" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID_Hoa_don" HeaderText="ID_Hoa_don" InsertVisible="False" ReadOnly="True" SortExpression="ID_Hoa_don" />
                <asp:BoundField DataField="ID_khach_hang" HeaderText="ID_khach_hang" SortExpression="ID_khach_hang" />
                <asp:BoundField DataField="ID_chi_tiet_hd" HeaderText="ID_chi_tiet_hd" SortExpression="ID_chi_tiet_hd" />
                <asp:BoundField DataField="Ngay" HeaderText="Ngay" SortExpression="Ngay" />
                <asp:BoundField DataField="Ghi_chu" HeaderText="Ghi_chu" SortExpression="Ghi_chu" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Chỉnh sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:FormView ID="FormView4" runat="server" DataKeyNames="ID_Hoa_don" DataSourceID="SqlDataSource4">
            <EditItemTemplate>
                ID_Hoa_don:
                <asp:Label ID="ID_Hoa_donLabel1" runat="server" Text='<%# Eval("ID_Hoa_don") %>' />
                <br />
                ID_khach_hang:
                <asp:TextBox ID="ID_khach_hangTextBox" runat="server" Text='<%# Bind("ID_khach_hang") %>' />
                <br />
                ID_chi_tiet_hd:
                <asp:TextBox ID="ID_chi_tiet_hdTextBox" runat="server" Text='<%# Bind("ID_chi_tiet_hd") %>' />
                <br />
                Ngay:
                <asp:TextBox ID="NgayTextBox" runat="server" Text='<%# Bind("Ngay") %>' />
                <br />
                Ghi_chu:
                <asp:TextBox ID="Ghi_chuTextBox" runat="server" Text='<%# Bind("Ghi_chu") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EmptyDataTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </EmptyDataTemplate>
            <InsertItemTemplate>
                ID_khach_hang:
                <asp:TextBox ID="ID_khach_hangTextBox" runat="server" Text='<%# Bind("ID_khach_hang") %>' />
                <br />
                ID_chi_tiet_hd:
                <asp:TextBox ID="ID_chi_tiet_hdTextBox" runat="server" Text='<%# Bind("ID_chi_tiet_hd") %>' />
                <br />
                Ngay:
                <asp:TextBox ID="NgayTextBox" runat="server" Text='<%# Bind("Ngay") %>' />
                <br />
                Ghi_chu:
                <asp:TextBox ID="Ghi_chuTextBox" runat="server" Text='<%# Bind("Ghi_chu") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID_Hoa_don:
                <asp:Label ID="ID_Hoa_donLabel" runat="server" Text='<%# Eval("ID_Hoa_don") %>' />
                <br />
                ID_khach_hang:
                <asp:Label ID="ID_khach_hangLabel" runat="server" Text='<%# Bind("ID_khach_hang") %>' />
                <br />
                ID_chi_tiet_hd:
                <asp:Label ID="ID_chi_tiet_hdLabel" runat="server" Text='<%# Bind("ID_chi_tiet_hd") %>' />
                <br />
                Ngay:
                <asp:Label ID="NgayLabel" runat="server" Text='<%# Bind("Ngay") %>' />
                <br />
                Ghi_chu:
                <asp:Label ID="Ghi_chuLabel" runat="server" Text='<%# Bind("Ghi_chu") %>' />
                <br />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:quanlybanhangConnectionString %>" DeleteCommand="DELETE FROM [Hoa_Don] WHERE [ID_Hoa_don] = @ID_Hoa_don" InsertCommand="INSERT INTO [Hoa_Don] ([ID_khach_hang], [ID_chi_tiet_hd], [Ngay], [Ghi_chu]) VALUES (@ID_khach_hang, @ID_chi_tiet_hd, @Ngay, @Ghi_chu)" SelectCommand="SELECT * FROM [Hoa_Don]" UpdateCommand="UPDATE [Hoa_Don] SET [ID_khach_hang] = @ID_khach_hang, [ID_chi_tiet_hd] = @ID_chi_tiet_hd, [Ngay] = @Ngay, [Ghi_chu] = @Ghi_chu WHERE [ID_Hoa_don] = @ID_Hoa_don">
            <DeleteParameters>
                <asp:Parameter Name="ID_Hoa_don" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_khach_hang" Type="Int32" />
                <asp:Parameter Name="ID_chi_tiet_hd" Type="Int32" />
                <asp:Parameter Name="Ngay" Type="DateTime" />
                <asp:Parameter Name="Ghi_chu" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_khach_hang" Type="Int32" />
                <asp:Parameter Name="ID_chi_tiet_hd" Type="Int32" />
                <asp:Parameter Name="Ngay" Type="DateTime" />
                <asp:Parameter Name="Ghi_chu" Type="String" />
                <asp:Parameter Name="ID_Hoa_don" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Size="18pt" ForeColor="#003366" Text="Bảng chi tiết hóa đơn"></asp:Label>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_chi_tiet_hoa_don" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID_chi_tiet_hoa_don" HeaderText="ID_chi_tiet_hoa_don" InsertVisible="False" ReadOnly="True" SortExpression="ID_chi_tiet_hoa_don" />
                <asp:BoundField DataField="ID_san_pham" HeaderText="ID_san_pham" SortExpression="ID_san_pham" />
                <asp:BoundField DataField="Mo_ta" HeaderText="Mo_ta" SortExpression="Mo_ta" />
                <asp:BoundField DataField="Ngay_tao" HeaderText="Ngay_tao" SortExpression="Ngay_tao" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Chỉnh sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:FormView ID="FormView5" runat="server" DataKeyNames="ID_chi_tiet_hoa_don" DataSourceID="SqlDataSource5">
            <EditItemTemplate>
                ID_chi_tiet_hoa_don:
                <asp:Label ID="ID_chi_tiet_hoa_donLabel1" runat="server" Text='<%# Eval("ID_chi_tiet_hoa_don") %>' />
                <br />
                ID_san_pham:
                <asp:TextBox ID="ID_san_phamTextBox" runat="server" Text='<%# Bind("ID_san_pham") %>' />
                <br />
                Mo_ta:
                <asp:TextBox ID="Mo_taTextBox" runat="server" Text='<%# Bind("Mo_ta") %>' />
                <br />
                Ngay_tao:
                <asp:TextBox ID="Ngay_taoTextBox" runat="server" Text='<%# Bind("Ngay_tao") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EmptyDataTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </EmptyDataTemplate>
            <InsertItemTemplate>
                ID_san_pham:
                <asp:TextBox ID="ID_san_phamTextBox" runat="server" Text='<%# Bind("ID_san_pham") %>' />
                <br />
                Mo_ta:
                <asp:TextBox ID="Mo_taTextBox" runat="server" Text='<%# Bind("Mo_ta") %>' />
                <br />
                Ngay_tao:
                <asp:TextBox ID="Ngay_taoTextBox" runat="server" Text='<%# Bind("Ngay_tao") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID_chi_tiet_hoa_don:
                <asp:Label ID="ID_chi_tiet_hoa_donLabel" runat="server" Text='<%# Eval("ID_chi_tiet_hoa_don") %>' />
                <br />
                ID_san_pham:
                <asp:Label ID="ID_san_phamLabel" runat="server" Text='<%# Bind("ID_san_pham") %>' />
                <br />
                Mo_ta:
                <asp:Label ID="Mo_taLabel" runat="server" Text='<%# Bind("Mo_ta") %>' />
                <br />
                Ngay_tao:
                <asp:Label ID="Ngay_taoLabel" runat="server" Text='<%# Bind("Ngay_tao") %>' />
                <br />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:quanlybanhangConnectionString %>" DeleteCommand="DELETE FROM [Chi_Tiet_Hoa_Don] WHERE [ID_chi_tiet_hoa_don] = @ID_chi_tiet_hoa_don" InsertCommand="INSERT INTO [Chi_Tiet_Hoa_Don] ([ID_san_pham], [Mo_ta], [Ngay_tao]) VALUES (@ID_san_pham, @Mo_ta, @Ngay_tao)" SelectCommand="SELECT * FROM [Chi_Tiet_Hoa_Don]" UpdateCommand="UPDATE [Chi_Tiet_Hoa_Don] SET [ID_san_pham] = @ID_san_pham, [Mo_ta] = @Mo_ta, [Ngay_tao] = @Ngay_tao WHERE [ID_chi_tiet_hoa_don] = @ID_chi_tiet_hoa_don">
            <DeleteParameters>
                <asp:Parameter Name="ID_chi_tiet_hoa_don" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_san_pham" Type="Int32" />
                <asp:Parameter Name="Mo_ta" Type="String" />
                <asp:Parameter Name="Ngay_tao" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_san_pham" Type="Int32" />
                <asp:Parameter Name="Mo_ta" Type="String" />
                <asp:Parameter Name="Ngay_tao" Type="DateTime" />
                <asp:Parameter Name="ID_chi_tiet_hoa_don" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
