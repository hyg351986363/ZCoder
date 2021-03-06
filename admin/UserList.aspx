﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="UserList.aspx.cs" Inherits="admin_UserList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <h2>用户列表</h2>
    <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
        
        
        SelectCommand="SELECT [userName], [email], [qq], [sex], [isadmin], [regTime], [id] FROM [tb_user]" 
        >
    </asp:SqlDataSource>
    <br />
    <table width="95%" class="zTable" style="margin: auto">
        <tr>
            <th>
                ID
            </th>
            <th>
                用户名
            </th>
            <th>
                电子邮箱
            </th>
            <th>
                QQ
            </th>
            <th align="center" width="50px">
                性别
            </th>
            <th align="center" width="50px">
                管理员
            </th>
            <th>
                注册日期
            </th>
            <th align="center" width="70px">操作</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qqLabel" runat="server" Text='<%# Eval("qq") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sexLabel" runat="server" Text='<%# Eval("sex") %>' OnDataBinding="fixSex" />
                    </td>
                    <td>
                        <asp:Label ID="isadminLabel" runat="server" Text='<%# Eval("isadmin") %>' OnDataBinding="fixAdmin" />
                    </td>
                    <td>
                        <asp:Label ID="regTimeLabel" runat="server" Text='<%# Eval("regTime") %>' />
                    </td>
                    <td> <asp:HyperLink ID="hlEdit" runat="server" Text="编辑" NavigateUrl='<%# Eval("id", "edituser.aspx?id={0}") %>' ForeColor="#666666"></asp:HyperLink> <asp:HyperLink ID="HyperLink1" runat="server" Text="删除"  NavigateUrl='<%# Eval("id", "deluser.aspx?id={0}") %>' ForeColor="#666666"></asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <br />
    <br />
</asp:Content>
