Problem 1: https://leetcode.com/problems/big-countries/

select name, population, area
from World
where area > 3000000 or population > 25000000

Problem 2: https://leetcode.com/problems/not-boring-movies/

select id, movie, description, rating
from Cinema
order by rating desc
limit 2

Problem 3: https://leetcode.com/problems/swap-salary/

update Salary
set sex = case 
    when sex = 'm' then 'f'
    else 'm'
    end