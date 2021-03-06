﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace 渠道客服系统.Nhome.Ajax
{
    /// <summary>
    /// JDYGdata 的摘要说明
    /// </summary>
    public class JDYGdata : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var date = context.Request["date"].ToString();
            if (date == "0")
            {
                string connString = "server=10.233.15.36;database =Qdis;uid =sa;pwd=123";
                SqlConnection Sqlconn = new SqlConnection(connString);
                Sqlconn.Open();
                SqlCommand cmd = Sqlconn.CreateCommand();
                cmd.CommandText = string.Format("select TOP(1) 日期 from JDYGdata order by CONVERT(date,日期) desc");
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    date = sdr["日期"].ToString();
                }
                sdr.Close();
                Sqlconn.Close();
            }
            string sql = "select * from JDYGdata where 日期='" + date + "'";
            DataTable table = SqlHelper.ExecuteDataTable(SqlHelper.connstr, CommandType.Text, sql, null);
            context.Response.ContentType = "text/plain";
            context.Response.Write(JSONHelper.DataTableToJSON(table));
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}