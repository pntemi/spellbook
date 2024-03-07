 {{
    config(
        schema='boost_arbitrum',
        alias='claimed',
        materialized='incremental',
        file_format='delta',
        incremental_strategy='merge',
        unique_key=['boost_address', 'claim_tx_hash', 'action_tx_hash'],
    )
}}

{% set network_to_chain_id = {
    '1': 'ethereum',
    '10': 'optimism',
    '137': 'polygon',
    '5000': 'mantle',
    '8453': 'base',
    '42161': 'arbitrum',
    '7777777': 'zora'
} %}

select
    'arbitrum' as reward_network,
    questAddress as boost_address,
    json_extract_scalar(extraData, '$.questId') as boost_id,
    json_extract_scalar(extraData, '$.questName') as boost_name,
    recipient as claimer_address,
    cast(
        json_extract_scalar(extraData, '$.rewardAmount') as uint256
    ) as reward_amount_raw,
    from_hex(
        json_extract_scalar(extraData, '$.rewardTokenAddress')
    ) as reward_token_address,
    evt_tx_hash as claim_tx_hash,
    evt_block_time as block_time,
    cast(
        json_extract_scalar(extraData, '$.claimFee') as int256
    ) / 1e18 as claim_fee_eth,
    json_extract_scalar(extraData, '$.actionType') as action_type,
    from_hex(
        json_extract_scalar(extraData, '$.actionTxHashes[0]')
    ) AS action_tx_hash,
    case
    {% for chain_id, network in network_to_chain_id.items() %}
        when json_extract_scalar(extraData, '$.actionNetworkChainIds[0]')='{{ chain_id }}' then '{{ network }}'
    {% if loop.last %}
    end as action_network
    {% endif %}
    {% endfor %}
from {{source('boost_arbitrum', 'QuestFactory_evt_QuestClaimedData')}}
