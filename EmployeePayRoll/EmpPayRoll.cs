using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeePayRoll
{
    internal class EmpPayRoll
    {
        public string EmpName { get; set; }
        public long Salary { get; set; }
        public string StartDate { get; set; }
        public string Gender { get; set; }
        public int Phone { get; set; }
        public string Department { get; set; }
        public string Address { get; set; }
        public double Basic_Pay { get; set; }
        public double Deductions { get; set; }
        public double Taxable_Pay { get; set; }
        public double Income_Tax { get; set; }
        public double Net_Pay { get; set; }
        public int Dept_Id { get; set; }
    }

}
