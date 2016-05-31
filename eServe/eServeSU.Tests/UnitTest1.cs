﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using eServeSU;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace eServeUnitTest
{
    [TestClass]
    public class UnitTest1
    {
        public TestContext TestContext { get; set; }
        public string ConnectionString = ConfigurationManager.ConnectionStrings["eServeConnection"].ConnectionString;

        [TestMethod]
        [TestCategory("Opportunity")]
        [Description("")]
        public void Test_VerifyUser()
        {
            //Initialize SqlQueryHelper object
            var sqlConnection = new SqlConnection(ConnectionString);
            sqlConnection.Open();

            var command = new SqlCommand("select RoleID from UserLogin where Email = 'stromb@seattleu.edu'", sqlConnection);
            var roleID = Convert.ToInt32(command.ExecuteScalar());

            Int32 roleNum = role();

            Assert.AreEqual(roleID, roleNum);
        }

        
        public int role()
        {
            DatabaseHelper dbHelper = new DatabaseHelper();
            dbHelper.DbConnection = ConfigurationManager.ConnectionStrings["eServeConnection"].ConnectionString;

            var reader = dbHelper.VerifyUser(Constant.sp_VerifyUser, "stromb@seattleu.edu", "Stromb!1");
            int num = 0;
            string name = null;
            string pass = null;
            while (reader.Read())
            {

                name = reader["Email"].ToString();
                pass = reader["Password"].ToString();
                num = Convert.ToInt32(reader["RoleID"]);

            }

            return num;
        }
    }
}
