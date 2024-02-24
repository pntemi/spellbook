 {{
    config(
        schema='boost_optimism',
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
    'optimism' as reward_network,
    contractAddress as boost_address,
    questId as boost_id,
    null as boost_name,
    null as action_type,
    null as action_network,
    null as project_name,
    contractType as boost_type,
    startTime as start_time,
    endTime as end_time,
    rewardAmountOrTokenId as reward_amount_raw,
    rewardTokenAddress as reward_token_address,
    totalParticipants as max_participants,
    evt_block_time as creation_time,
    creator
from {{source('boost_ethereum', 'QuestFactory_evt_QuestCreated')}}
