{% set blockchain = 'avalanche_c' %}

{{
    config(
        schema = 'balancer_v2_avalanche_c',
        alias = 'bpt_supply',
        materialized = 'table',
        file_format = 'delta'

    )
}}

{{ 
    balancer_bpt_supply_macro(
        blockchain = blockchain,
        version = '2'
    )
}}