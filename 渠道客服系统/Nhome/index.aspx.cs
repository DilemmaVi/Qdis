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
    public partial class index : System.Web.UI.Page
    {



        protected void Page_Load()
        {
            if (!IsPostBack)
            {
                index_load();
                string sj = Gload();
                #region 个人数据显示
                if (sj == "天猫客服专员")
                {
                    try
                    {
                        Jdl.Text = JDdata(Nlab.Text, "接待人数");
                        CPH.Text = (Convert.ToDecimal(SQdata(Nlab.Text, "CPH"))).ToString("0") + SQdataPM(Nlab.Text, "CPH");
                        ZHL.Text = (Convert.ToDecimal(SQdata(Nlab.Text, "转化率"))).ToString("0.00%") + SQdataPM(Nlab.Text, "转化率");
                        SCXY.Text = (Convert.ToDecimal(SQdata(Nlab.Text, "首次响应时长"))).ToString("0") + "s" + SQdataPML(Nlab.Text, "首次响应时长");
                        PJXY.Text = (Convert.ToDecimal(SQdata(Nlab.Text, "平均响应时长"))).ToString("0") + "s" + SQdataPML(Nlab.Text, "平均响应时长");
                        PJJD.Text = (Convert.ToDecimal(SQdata(Nlab.Text, "平均接待时长"))).ToString("0") + "s" + SQdataPML(Nlab.Text, "平均接待时长");
                        sbox.Visible = false;
                        cxbtn.Visible = false;
                        GL_sjzs.Visible = false;
                    }
                    catch 
                    {
                        Response.Redirect("../login.aspx");
                    }
                }
                else if (sj == "阿里售后专员" || sj == "升级投诉专员")
                {
                    Response.Redirect("index-sh.aspx");
                }
                else if (sj == "京东业务专员" || sj == "京东业务组长")
                {
                    Response.Redirect("index-jd.aspx");
                }
                else if (sj == "商品评论组长" || sj == "商品评论专员")
                {
                    Response.Redirect("index-pj.aspx");
                }
                else if (sj == "淘宝客服专员" || sj == "淘宝客服组长")
                {
                    Response.Redirect("index-tb.aspx");
                }

                else if (sj == "错误")
                {
                    Response.Redirect("../login.aspx");
                }
                else 
                {
                    try
                    {
                        Jdl.Text = "---";
                        CPH.Text = "---";
                        ZHL.Text = "---";
                        SCXY.Text = "---";
                        PJXY.Text = "---";
                        PJJD.Text = "---";
                        sbox.Visible = true;
                        tdyc.Visible = false;
                    }
                    catch 
                    {
                        Response.Redirect("../login.aspx");
                    }
                }
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

              SqlDataReader sjt = sj.ExecuteReader();
                if (sjt.Read())
                {
                    gxsj.InnerHtml = "数据更新时间：" +Convert.ToDateTime(sjt["日期"]).ToString("yyyy-MM-dd");  
                }
                sjt.Close();

                SqlDataReader dpj=dp.ExecuteReader();
                DDL_zg.Items.Clear();
                DDL_zz.Items.Clear();
                DDL_yg.Items.Clear();
                DDL_zg.Items.Add("所有主管");
                DDL_zz.Items.Add("所有组长");
                DDL_yg.Items.Add("所有员工");
                while(dpj.Read())
                {
                    DDL_zg.Items.Add(dpj["主管"].ToString());
                }
                dpj.Close();
                Sqlconn.Close();
                DDL_zg.SelectedIndex = 0;
                DDL_zz.SelectedIndex = 0;
                DDL_yg.SelectedIndex = 0;
            }
            catch
            {
                Response.Redirect("../login.aspx");
            }
        }
        
        public string Gload()
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
                 cmd.CommandText = string.Format("select 职位 from ISRegister where UserName= '{0}'", name);
                 SqlDataReader sdr = cmd.ExecuteReader();
                 string db;
                 if (sdr.Read())
                 {
                     db = sdr["职位"].ToString();
                     return db;
                 }
                 else
                 {
                     sdr.Close();
                     return "错误";
                 }
                
             }
             catch 
             {
                 return "错误";
             }
        }

        private string SQdata(string miliao, string type)
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
                cmd.CommandText = string.Format("select * from SQdata where 米聊号= '{0}' and 日期 Between '" + start + "' And '" + end + "'", name);
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
        private string SQdataPM(string miliao, string type)
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
                cmd.CommandText = string.Format("select * from (select 米聊号,AVG({0}) as CPH,ROW_NUMBER() over(order by AVG({1}) desc) as 排名 from SQdata where 日期 between  '" + start + "' and '" + end + "'  group by 米聊号)t1 where 米聊号='{2}'",type,type, name);
                SqlDataAdapter sdr = new SqlDataAdapter(cmd.CommandText, Sqlconn);
                sdr.Fill(dr);
                string dd1 = "   " + "(排名:" + dr.Tables[0].Rows[0]["排名"].ToString()+")";
                return dd1;
            }
            catch
            {
                return "错误";
            }
        } //个人CPH、转化率、排名显示用

        private string SQdataPML(string miliao, string type)
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
                cmd.CommandText = string.Format("select * from (select 米聊号,AVG({0}) as CPH,ROW_NUMBER() over(order by AVG({1}) asc) as 排名 from SQdata where 日期 between  '" + start + "' and '" + end + "'  group by 米聊号)t1 where 米聊号='{2}'", type, type, name);
                SqlDataAdapter sdr = new SqlDataAdapter(cmd.CommandText, Sqlconn);
                sdr.Fill(dr);
                string dd1 = "   " + "(排名:" + dr.Tables[0].Rows[0]["排名"].ToString() + ")";
                return dd1;
            }
            catch
            {
                return "错误";
            }
        } //个人CPH、转化率、首响、平响、平均接待排名显示用
        private string JDdata(string miliao, string type)
        {

            DataSet dr = new DataSet();
            DataSet ddr = new DataSet();
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
                SqlCommand rd = Sqlconn.CreateCommand();
                cmd.CommandText = string.Format("select * from SQdata where 米聊号= '{0}' and 日期 Between '" + start + "' And '" + end + "'", name);
                rd.CommandText = string.Format("select * from (select 米聊号,sum(接待人数) as 接待人数,ROW_NUMBER() over(order by sum(接待人数) desc) as 排名 from SQdata where 日期 between  '" + start + "' and '" + end + "'  group by 米聊号)t1 where 米聊号='{0}'", name);
                SqlDataAdapter sdr = new SqlDataAdapter(cmd.CommandText, Sqlconn);
                sdr.Fill(dr);
                SqlDataAdapter srd = new SqlDataAdapter(rd.CommandText, Sqlconn);
                srd.Fill(ddr);
                string rank = ddr.Tables[0].Rows[0]["排名"].ToString();
                String[] str = new String[dr.Tables[0].Rows.Count];
                for (int i = 0; i < dr.Tables[0].Rows.Count; i++)
                {
                    str[i] = dr.Tables[0].Rows[i][type].ToString();
                }
                Sqlconn.Close();
                var data = sum(str);
                string dd1 = data.ToString()+"   "+"(排名:"+rank+")";
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
                cmd.CommandText = string.Format("select * from SQdata where  日期 Between '" + start + "' And '" + end + "'");
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
                cmd.CommandText = string.Format("select * from SQdata where  日期 Between '" + start + "' And '" + end + "'");
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

        protected void cxbtn_Click(object sender, EventArgs e)
        {

            string connString = "server=10.233.15.36;database =Qdis;uid =sa;pwd=123";
            string zhuguan = Request.Form["DDL_zg"];
            string zuzhang = Request.Form["DDL_zz"];
            string name = Request.Form["DDL_yg"];
            string yuangong;
            SqlConnection Sqlconn = new SqlConnection(connString);
            Sqlconn.Open();
            SqlCommand cmd = Sqlconn.CreateCommand();
            cmd.CommandText = string.Format("select UserName from ISRegister where 姓名= '{0}'", name);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                yuangong = sdr["UserName"].ToString();
                Jdl.Text = JDdata(yuangong, "接待人数");
                CPH.Text = (Convert.ToDecimal(SQdata(yuangong, "CPH"))).ToString("0") + SQdataPM(yuangong, "CPH");
                ZHL.Text = (Convert.ToDecimal(SQdata(yuangong, "转化率"))).ToString("0.00%") + SQdataPM(yuangong, "转化率");
                SCXY.Text = (Convert.ToDecimal(SQdata(yuangong, "首次响应时长"))).ToString("0") + "s" + SQdataPML(yuangong, "首次响应时长");
                PJXY.Text = (Convert.ToDecimal(SQdata(yuangong, "平均响应时长"))).ToString("0") + "s" + SQdataPML(yuangong, "平均响应时长");
                PJJD.Text = (Convert.ToDecimal(SQdata(yuangong, "平均接待时长"))).ToString("0") + "s" + SQdataPML(yuangong, "平均接待时长");
            }
            sdr.Close();
            Sqlconn.Close();           

        }

    }
}