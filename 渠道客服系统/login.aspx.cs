using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace 渠道客服系统
{

    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["login"];
            if (cookie != null)
            {
                string value1 = cookie.Values["uid"];
                string value2 = cookie.Values["psw"];
                Session.Add("uid", value1);
                Session.Add("psw", value2);
                Response.Redirect("/Nhome/index.aspx");
            }
        }





        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (cbox.Checked)
            {
                HttpCookie cookie = new HttpCookie("login");
                cookie.Values.Add("uid",uid.Text.Trim());
                cookie.Values.Add("psw", psw.Text.Trim());
                cookie.Expires = DateTime.Now.AddDays(14);
                Response.Cookies.Add(cookie);
            }
            string connString = "server=10.233.15.36;database =Qdis;uid =sa;pwd=123";
            bool isLogin = false;
            try
            {
                SqlConnection Sqlconn = new SqlConnection(connString);
                Sqlconn.Open();
                SqlCommand cmd = Sqlconn.CreateCommand();
                cmd.CommandText = string.Format("select * from ISRegister where UserName= '{0}' and PassWord = '{1}'", uid.Text.Trim(), psw.Text.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    isLogin = true;
                }
                sdr.Close();
                Sqlconn.Close();

                if (isLogin)
                {
                    Session.Add("uid", uid.Text.Trim());
                    Session.Add("psw", psw.Text.Trim());
                    Response.Redirect("/Nhome/index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('帐号或者密码错误')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ")</script>");
            }
        }


            
        }
    }
