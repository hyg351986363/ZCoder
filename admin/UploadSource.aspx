﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="UploadSource.aspx.cs" Inherits="admin_UploadSource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" runat="Server">
    <link rel="Stylesheet" href="../js/uploadify.css" />
    <script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/js/jquery.uploadify.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#file_upload').uploadify({
                'swf': '/js/uploadify.swf',
                'uploader': '/upload.aspx',
                'uploadLimit' : 1,
             'removeCompleted' : false,
                'fileTypeDesc': '选择压缩包',
                'fileTypeExts': '*.zip;*.rar',
                'formData': { 'ASPSESSID':<%=  Request.Cookies[FormsAuthentication.FormsCookieName]==null ? "''" : Request.Cookies[FormsAuthentication.FormsCookieName].Value %>, 'AUTHID':'<%= Session.SessionID %>'},
                'multi': false,

                'buttonText':'上传工程'
                // Put your options here
            });
            

        });
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <div class="zRadioRec">
        <h2>
            整个工程上传源码</h2>
        <hr />
        <table class="style1">
            <tr>
                <th colspan="3">
                    请选择源码压缩包。暂时只支持rar,zip格式。
                </th>
                <th></th>
            </tr>
            <tr>
                <td class="layPadding">
                    选择要上传的工程：
                </td>
                <td class="layPadding">
                    <asp:DropDownList ID="ddl_Project" runat="server" CssClass="zTextBox" DataSourceID="sds_Project"
                        DataTextField="projectName" DataValueField="id" Height="35px" Width="235px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sds_Project" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
                        SelectCommand="SELECT [id], [projectName] FROM [tb_project]"></asp:SqlDataSource>
                </td>
                <td class="layPadding">
                    *请务必确认工程名，若工程名错误，将覆盖原代码
                </td>
            </tr>
            <tr>
                <td class="layPadding">
                    完整工程上传：
                </td>
                <td class="layPadding" align="center">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="inputbox" />
                   <!--屏蔽 <input type="file" name="file_upload" id="file_upload" />-->
                </td>
                <td class="layPadding">
                    请将整个项目打包成一个zip压缩文件。<br />
                    目前只支持*.zip格式
                </td>
            </tr>
            <tr>
                <td class="layPadding">
                    是否清空原工程：
                </td>
                <td class="layPadding" align="center">
                    <asp:CheckBox ID="cb_Clear" runat="server" Font-Bold="True" ForeColor="Red" Text="清空原工程！" />
                </td>
                <td class="layPadding">
                    选中后原工程中的所有文件将被删除！请注意！
                </td>
            </tr>
            <tr>
                <td class="layPadding">
                    上传进度：
                </td>
                <td align="center">
               <!--     <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>-->
                            <asp:TextBox ID="tb_Progess" runat="server" CssClass="inputbox" Height="104px" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:Button ID="btn_OK" runat="server" CssClass="searchbtn" OnClick="btn_OK_Click"
                                Text="开始上传" />
                    <!--    </ContentTemplate>
                    </asp:UpdatePanel>-->
                </td>
                <td rowspan="2" align="left">
                    已支持的语言： </br>
                    <table style="margin: auto;" width="100%">
                        <tr>
                            <th>
                                语言
                            </th>
                            <th>
                                扩展名
                            </th>
                        </tr>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sds_Langs">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="name" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%#  Eval("ext") %>'></asp:Label>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="sds_Langs" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
                            SelectCommand="SELECT [name], [ext] FROM [tb_lang]"></asp:SqlDataSource>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="layPadding">
                    &nbsp;
                </td>
                <td class="layPadding" align="center">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
