with payment as (
    select * from {{ ref('stg_payments') }}
)

select orderid, sum(amount)
from payment
group by orderid
having sum(amount) < 0

-- use dbt test -s <model name>  : to run the test.
/*
    execute dbt test to run all generic and singular test
    execute dbt test --select test_type:generic to run only generic tests 
    execute dbt test --select test_type:singluar to run only singular tests
    
*/