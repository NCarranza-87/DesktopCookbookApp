using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesktopRecipeCookBookApp
{
    static class DBHelper
    {
        public static SqlConnection GetSqlConnectionString()
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=localhost;Initial Catalog=TreamDB; Integrated Security=True");
            return sqlConnection;
        }
    }
}
