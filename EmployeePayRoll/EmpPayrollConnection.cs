using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeePayRoll
{
    internal class EmpPayrollConnection
    {
        public const string ConnFile = @"Data Source=(localdb)\MSSQLLocalDB; Initial Catalog =Payroll_Service; Integrated Security = True;";
        SqlConnection sqlConnection = new SqlConnection(ConnFile);
        //UC-1 Check connection
        public void EstablishConnection()
        {
            if (sqlConnection != null && sqlConnection.State.Equals(ConnectionState.Closed))
            {
                try
                {
                    sqlConnection.Open();
                }
                catch (Exception)
                {
                    throw new EmpException(EmpException.ExceptionType.Connection_Failed, "Connection failed..");
                }
            }
            if (sqlConnection != null && sqlConnection.State.Equals(ConnectionState.Open))
            {
                try
                {
                    sqlConnection.Close();
                }
                catch (Exception)
                {
                    throw new EmpException(EmpException.ExceptionType.Connection_Failed, "Connection failed..");
                }
            }
        }
    }
}
