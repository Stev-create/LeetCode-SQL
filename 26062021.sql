Problem 1: https://leetcode.com/problems/combine-two-tables/

select FirstName, LastName, City, State
from Person 
left join Address
using (PersonId)

Problem 2: https://leetcode.com/problems/second-highest-salary/

select max(Salary) as SecondHighestSalary
from Employee
where Salary not in (
    select max(Salary) from Employee
)

Problem 3: https://leetcode.com/problems/customers-who-never-order/

select Name as Customers
from Customers
where Name not in (
    select Name as Customers
    from Customers
    join Orders
    on Customers.Id = Orders.CustomerId
)