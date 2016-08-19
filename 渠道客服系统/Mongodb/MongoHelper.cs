using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB;

namespace 渠道客服系统.Mongodb
{

    public class MongoHelper
    {
        private static string _connectionString = "Server=10.233.15.36";  //数据库服务器ip或地址  

        private static string _dbName = "dbmy";

        public static void Insert(User user)
        {
            user.UID = Guid.NewGuid().ToString("N");

            // 首先创建一个连接  
            using (Mongo mongo = new Mongo(_connectionString))
            {

                // 打开连接  
                mongo.Connect();

                // 切换到指定的数据库  
                var db = mongo.GetDatabase(_dbName);

                // 根据类型获取相应的集合  
                var collection = db.GetCollection<User>();

                // 向集合中插入对象  
                collection.Insert(user);
            }
        }
    }
}