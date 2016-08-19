using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Threading;

namespace 渠道客服系统.Nhome
{
    /// <summary>
    /// TestService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
     [System.Web.Script.Services.ScriptService]
    public class TestService : System.Web.Services.WebService
    {

        [WebMethod]
        public string GetWeekName(string date)
        {
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
            DataTable table = 渠道客服系统.Nhome.Ajax.SqlHelper.ExecuteDataTable(渠道客服系统.Nhome.Ajax.SqlHelper.connstr, CommandType.Text, sql, null);
            string re = 渠道客服系统.Nhome.Ajax.JSONHelper.DataTableToJSON(table);
            Thread.Sleep(10000);
            return re;
        }
    }
}
