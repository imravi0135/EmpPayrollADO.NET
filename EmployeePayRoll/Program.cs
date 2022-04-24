using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeePayRoll
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to the EmployeeParoll Ado.NET program");
            EmpPayrollConnection details = new EmpPayrollConnection();
            EmpPayRoll empPayRoll = new EmpPayRoll();
            details.EstablishConnection();
            Console.WriteLine("Data added Successfully");
            Console.ReadKey();
        }
    }
}
