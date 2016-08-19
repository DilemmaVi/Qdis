using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace 渠道客服系统.Nhome
{
    public partial class suggest : System.Web.UI.Page
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
                string zhiwei;
                SqlConnection Sqlconn = new SqlConnection(connString);
                Sqlconn.Open();
                SqlCommand cmd = Sqlconn.CreateCommand();
                SqlCommand sj = Sqlconn.CreateCommand();
                SqlCommand dp = Sqlconn.CreateCommand();
                cmd.CommandText = string.Format("select * from ISRegister where UserName= '{0}'", name);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    Nlab.Text = HttpContext.Current.Session["uid"].ToString();
                    Nlab2.Text = sdr["姓名"].ToString();
                    zhiwei = sdr["职位"].ToString();
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

        protected void btn_Click(object sender, EventArgs e)
        {
            string time = DateTime.Now.ToString();
            string type = SelectVal.Items[SelectVal.SelectedIndex].Value;
            string text = textbox.InnerText;
            string jj = "未解决";
            string connString = "server=10.233.15.36;database =Qdis;uid =sa;pwd=123";
            try
            {
                SqlConnection Sqlconn = new SqlConnection(connString);
                Sqlconn.Open();
                string sql = "insert into suggest values('" + time + "','" + type + "','" + text + "','" + jj + "')";
                SqlCommand cmd = new SqlCommand(sql, Sqlconn);
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
                Response.Redirect("suggest.aspx");
                
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert(" + ex.Message + ")</script>");
            }
        }
    }
}