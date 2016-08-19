using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace 渠道客服系统
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            try
            {
                LogHelper.Info(this, "客户机IP：" + System.Web.HttpContext.Current.Request.UserHostAddress);
            }
            catch { }
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            // 在出现未处理的错误时运行的代码
            Exception objExp = HttpContext.Current.Server.GetLastError();
            LogHelper.Error("客户机IP：" + Request.UserHostAddress + " 错误地址：" + Request.Url, objExp);
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}