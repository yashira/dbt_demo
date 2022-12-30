
with customer as (
    SELECT * FROM {{ source('staging', 'dim_customer') }}
),

product as (
    SELECT * FROM {{ source('staging', 'dim_products') }}
),

p_order as (
    SELECT * FROM {{ source('staging', 'dim_order') }}
)

SELECT c.e_name, p.name, o.qty, o.order_date FROM customer c 
    INNER JOIN p_order o ON o.eid = c.id 
    INNER JOIN product p ON o.pid = p.id