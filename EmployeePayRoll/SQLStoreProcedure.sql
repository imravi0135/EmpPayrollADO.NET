
CREATE PROCEDURE sp_insertrecords 
@Emp_name varchar(100),@Salary bigint,@Date Date,@Gender varchar(10),@phone bigint,@Department varchar(100),@Address varchar(100),@Basic_pay float,@Deductions float,
@Taxable_pay float,@Income_tax float,@Net_pay float,@Dept_id int
AS
BEGIN
insert into Employee_payroll Values(@Emp_name,@Salary,@Date,@Gender,@phone,@Department,@Address,@Basic_pay,@Deductions,@Taxable_pay,@Income_tax,@Net_pay,@Dept_id)
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   
END
GO
