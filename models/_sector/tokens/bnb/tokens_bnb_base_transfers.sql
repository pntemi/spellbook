{{config(
    tags = ['base_transfers_macro'],
    schema = 'tokens_bnb',
    alias = 'base_transfers',
    partition_by = ['block_date'],
    materialized = 'incremental',
    file_format = 'delta',
    incremental_strategy = 'merge',
    incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')],
    unique_key = ['unique_key'],
)
}}

{{transfers_base(
    blockchain='bnb',
    traces = source('bnb','traces'),
    transactions = source('bnb','transactions'),
    erc20_transfers = source('erc20_bnb','evt_transfer'),
    native_contract_address = null
)
}}