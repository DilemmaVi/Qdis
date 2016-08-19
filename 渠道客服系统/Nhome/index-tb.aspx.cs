using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace 渠道客服系统.Nhome
{
    public partial class index_tb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            index_load();
            #region 员工数据显示
            try
            {
                Jdl.Text = JDdata(Nlab.Text, "接待人数");
                CPH.Text = (Convert.ToDecimal(SQdatatb(Nlab.Text, "CPH"))).ToString("0");
                ZHL.Text = (Convert.ToDecimal(SQdatatb(Nlab.Text, "转化率"))).ToString("0.00%");
                SCXY.Text = (Convert.ToDecimal(SQdatatb(Nlab.Text, "首次响应时长"))).ToString("0") + "s";
                PJXY.Text = (Convert.ToDecimal(SQdatatb(Nlab.Text, "平均响应时长"))).ToString("0") + "s";
                PJJD.Text = (Convert.ToDecimal(SQdatatb(Nlab.Text, "平均接待时长"))).ToString("0") + "s";
            }

            catch
            {
                Response.Redirect("../login.aspx");
            }
            #endregion
            #region 团队数据显示
            try
            {
                Jdljz.Text = "团队累计：" + TDjdata(Nlab.Text, "接待人数");
                CPHjz.Text = "团队均值：" + (Convert.ToDecimal(TDdata(Nlab.Text, "CPH"))).ToString("0");
                Zhljz.Text = "团队均值：" + (Convert.ToDecimal(TDdata(Nlab.Text, "转化率"))).ToString("0.00%");
                FirstXY.Text = "团队均值：" + (Convert.ToDecimal(TDdata(Nlab.Text, "首次响应时长"))).ToString("0") + "s";
                AVGXY.Text = "团队均值：" + (Convert.ToDecimal(TDdata(Nlab.Text, "平均响应时长"))).ToString("0") + "s";
                AVGjd.Text = "团队均值：" + (Convert.ToDecimal(TDdata(Nlab.Text, "平均接待时长"))).ToString("0") + "s";
            }
            catch (SqlException ex)
            {
                Response.Redirect("../login.aspx");
            }
            #endregion
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
                cmd.CommandText = string.Format("select 姓名 from ISRegister where UserName= '{0}'", name);
                sj.CommandText = "select TOP(1) 日期 from SQdatatb order by 日期 desc";
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    Nlab.Text = HttpContext.Current.Session["uid"].ToString();
                    Nlab2.Text = sdr["姓名"].ToString();
                    Session.Add("uid", Nlab.Text.Trim());
                }
                sdr.Close();

                SqlDataReader sjt = sj.ExecuteReader();
                if (sjt.Read())
                {
                    gxsj.InnerHtml = "数据更新时间：" + Convert.ToDateTime(sjt["日期"]).ToString("yyyy-MM-dd");
                }
                sjt.Close();
                Sqlconn.Close();
            }
            catch
            {
                Response.Redirect("../login.aspx");
            }
        }
        private string SQdatatb(string miliao, string type)
        {

            DataSet dr = new DataSet();
            string name = miliao;
            string year = DateTime.Today.Year.ToString();
            string month = (Convert.ToInt32(DateTime.Today.Month.ToString()) - 1).ToString();
            string month1 = DateTime.Today.Month.ToString();
            var day = Convert.ToInt32(DateTime.Today.Day.ToString());
            string start;
            if (day > 19)
            {
                start = string.Format(year + "/" + month1 + "/" + "20");
            }
            else
            {
                start = string.Format(year + "/" + month + "/" + "20");
            }

            string end = DateTime.Today.ToString();
            string connString = "server=10.233.15.36;database =Qdis;uid =sa;pwd=123";
            try
            {
                SqlConnection Sqlconn = new SqlConnection(connString);
                Sqlconn.Open();
                SqlCommand cmd = Sqlconn.CreateCommand();
                cmd.CommandText = string.Format("select * from SQdatatb where 米聊号= '{0}' and 日期 Between '" + start + "' And '" + end + "'", name);
                SqlDataAdapter sdr = new SqlDataAdapter(cmd.CommandText, Sqlconn);
                sdr.Fill(dr);
                String[] str = new String[dr.Tables[0].Rows.Count];
                for (int i = 0; i < dr.Tables[0].Rows.Count; i++)
                {
                    str[i] = dr.Tables[0].Rows[i][type].ToString();
                }
                Sqlconn.Close();
                var data = AVG(str);
                string dd1 = data.ToString();
                return dd1;
            }
            catch
            {
                return "错误";
            }
        } //个人CPH、转化率、首响、平响、平均接待显示用

        private string JDdata(string miliao, string type)
        {

            DataSet dr = new DataSet();
            string name = miliao;
            string year = DateTime.Today.Year.ToString();
            string month = (Convert.ToInt32(DateTime.Today.Month.ToString()) - 1).ToString();
            string month1 = DateTime.Today.Month.ToString();
            var day = Convert.ToInt32(DateTime.Today.Day.ToString());
            string start;
            if (day > 19)
            {
                start = string.Format(year + "/" + month1 + "/" + "20");
            }
            else
            {
                start = string.Format(year + "/" + month + "/" + "20");
            }

            string end = DateTime.Today.ToString();
            string connString = "server=10.233.15.36;database =Qdis;uid =sa;pwd=123";
            try
            {
                SqlConnection Sqlconn = new SqlConnection(connString);
                Sqlconn.Open();
                SqlCommand cmd = Sqlconn.CreateCommand();
                cmd.CommandText = string.Format("select * from SQdatatb where 米聊号= '{0}' and 日期 Between '" + start + "' And '" + end + "'", name);
                SqlDataAdapter sdr = new SqlDataAdapter(cmd.CommandText, Sqlconn);
                sdr.Fill(dr);
                String[] str = new String[dr.Tables[0].Rows.Count];
                for (int i = 0; i < dr.Tables[0].Rows.Count; i++)
                {
                    str[i] = dr.Tables[0].Rows[i][type].ToString();
                }
                Sqlconn.Close();
                var data = sum(str);
                string dd1 = data.ToString();
                return dd1;
            }
            catch
            {
                return "错误";
            }
        }//个人接待人数显示使用
        private string TDdata(string miliao, string type)
        {

            DataSet dr = new DataSet();
            string name = miliao;
            string year = DateTime.Today.Year.ToString();
            string month = (Convert.ToInt32(DateTime.Today.Month.ToString()) - 1).ToString();
            string month1 = DateTime.Today.Month.ToString();
            var day = Convert.ToInt32(DateTime.Today.Day.ToString());
            string start;
            if (day > 19)
            {
                start = string.Format(year + "/" + month1 + "/" + "20");
            }
            else
            {
                start = string.Format(year + "/" + month + "/" + "20");
            }

            string end = DateTime.Today.ToString();
            string connString = "server=10.233.15.36;database =Qdis;uid =sa;pwd=123";
            try
            {
                SqlConnection Sqlconn = new SqlConnection(connString);
                Sqlconn.Open();
                SqlCommand cmd = Sqlconn.CreateCommand();
                cmd.CommandText = string.Format("select * from SQdatatb where  日期 Between '" + start + "' And '" + end + "'");
                SqlDataAdapter sdr = new SqlDataAdapter(cmd.CommandText, Sqlconn);
                sdr.Fill(dr);
                String[] str = new String[dr.Tables[0].Rows.Count];
                for (int i = 0; i < dr.Tables[0].Rows.Count; i++)
                {
                    str[i] = dr.Tables[0].Rows[i][type].ToString();
                }
                Sqlconn.Close();
                var data = AVG(str);
                string dd1 = data.ToString();
                return dd1;
            }
            catch
            {
                return "错误";
            }
        } //团队CPH、转化率、首响、平响、平均接待显示用
        private string TDjdata(string miliao, string type)
        {

            DataSet dr = new DataSet();
            string name = miliao;
            string year = DateTime.Today.Year.ToString();
            string month = (Convert.ToInt32(DateTime.Today.Month.ToString()) - 1).ToString();
            string month1 = DateTime.Today.Month.ToString();
            var day = Convert.ToInt32(DateTime.Today.Day.ToString());
            string start;
            if (day > 19)
            {
                start = string.Format(year + "/" + month1 + "/" + "20");
            }
            else
            {
                start = string.Format(year + "/" + month + "/" + "20");
            }

            string end = DateTime.Today.ToString();
            string connString = "server=10.233.15.36;database =Qdis;uid =sa;pwd=123";
            try
            {
                SqlConnection Sqlconn = new SqlConnection(connString);
                Sqlconn.Open();
                SqlCommand cmd = Sqlconn.CreateCommand();
                cmd.CommandText = string.Format("select * from SQdatatb where  日期 Between '" + start + "' And '" + end + "'");
                SqlDataAdapter sdr = new SqlDataAdapter(cmd.CommandText, Sqlconn);
                sdr.Fill(dr);
                String[] str = new String[dr.Tables[0].Rows.Count];
                for (int i = 0; i < dr.Tables[0].Rows.Count; i++)
                {
                    str[i] = dr.Tables[0].Rows[i][type].ToString();
                }
                Sqlconn.Close();
                var data = sum(str);
                string dd1 = data.ToString();
                return dd1;
            }
            catch
            {
                return "错误";
            }
        } //团队接待人数显示使用
        private decimal AVG(String[] str)
        {
            decimal sum = 0;
            for (int i = 0; i < str.Length; i++)
            {
                sum += Convert.ToDecimal(str[i]);
            }
            if (str.Length == sum)
            {
                return sum;
            }
            else
            {
                decimal agv = sum / str.Length;
                return agv;
            }
        }//数组求平均的方法

        private decimal sum(String[] str)
        {
            decimal sum = 0;
            for (int i = 0; i < str.Length; i++)
            {
                sum += Convert.ToDecimal(str[i]);
            }
            return sum;
        }//数组求和的方法
    }
}