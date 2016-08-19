using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace 渠道客服系统.Nhome
{
    public partial class index_pj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            index_load();
        }

        private void index_load()  //根据登录帐号，获取姓名
        {

            string connString = "server=10.233.15.36;database =Qdis;uid =sa;pwd=123";
            try
            {
                string name = HttpContext.Current.Session["uid"].ToString();
                SqlConnection Sqlconn = new SqlConnection(connString);
                Sqlconn.Open();
                SqlCommand cmd = Sqlconn.CreateCommand();
                SqlCommand sj = Sqlconn.CreateCommand();
                SqlCommand dp = Sqlconn.CreateCommand();
                cmd.CommandText = string.Format("select 姓名 from ISRegister where UserName= '{0}'", name);
                sj.CommandText = "select TOP(1) 日期 from SQdata order by 日期 desc";
                dp.CommandText = "SELECT DISTINCT 主管 from SQdata";
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    Nlab.Text = HttpContext.Current.Session["uid"].ToString();
                    Nlab2.Text = sdr["姓名"].ToString();
                    Session.Add("uid", Nlab.Text.Trim());
                }
                sdr.Close();
                Sqlconn.Close();
            }
            catch
            {
                Response.Redirect("../login.aspx");
            }
        }
    }
}