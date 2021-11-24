{{
    config(severity='warn')
}}

with customers as (
    select *
    from {{ ref('customers') }}
)

select *
from customers
where number_of_orders = 0
