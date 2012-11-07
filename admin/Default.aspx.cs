﻿/***************************************************************************************************
 *                    (c) Copyright 1992-2009 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          usdl_xxx.h
 *\Description   XXXXXXXXXXXXX
 *\Log           2008.XX.XX    Ver 1.0    张三
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        DataBase db = new DataBase();
        
        /*  统计现有代码数 */
        DataSet rs2 = db.ExCommand("SELECT COUNT(*) FROM tb_code");
        string intNum2 = rs2.Tables[0].Rows[0][0].ToString();
        code_num.Text = intNum2;
        
        /*  统计现有注释数 */
        DataSet rs3 = db.ExCommand("SELECT COUNT(*) FROM tb_note");
        string intNum3 = rs3.Tables[0].Rows[0][0].ToString();
        note_num.Text = intNum3;
        
        /*  统计现有评论数 */
        DataSet rs1 = db.ExCommand("SELECT COUNT(*) FROM tb_comment");
        string intNum1 = rs1.Tables[0].Rows[0][0].ToString();
        comment_num.Text = intNum1;
        
        /*  统计现有会员数 */
        DataSet rs = db.ExCommand("SELECT COUNT(*) FROM tb_user");
        string intNum = rs.Tables[0].Rows[0][0].ToString();
        user_num.Text = intNum;


    }
}