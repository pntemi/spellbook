{{
    config(
        unique_key='claimer_address',
        schema='boost',
    )
}}

{% set boost_claimed_models = [
    ref('boost_arbitrum_claimed'),
    ref('boost_base_claimed'),
    ref('boost_ethereum_claimed'),
    ref('boost_optimism_claimed'),
    ref('boost_polygon_claimed'),
] %}

with quest_claimed_data as (
    {% for model in boost_claimed_models %}
    SELECT *
    FROM {{ model }}
    {% if not loop.last %}
    UNION ALL
    {% endif %}
    {% endfor %}
),
quest_claims_enriched as (
    select 
        c.reward_network,
        c.boost_address,
        coalesce(b.boost_id, c.boost_id) boost_id,
        coalesce(b.boost_name, c.boost_name) boost_name,
        b.project_name,
        claimer_address,
        coalesce(b.reward_amount_raw, c.reward_amount_raw) reward_amount_raw,
        coalesce(b.reward_token_address, c.reward_token_address) reward_token_address,
        claim_tx_hash,
        c.block_time,
        coalesce(claim_fee_eth, 0.000075) claim_fee_eth,
        coalesce(b.action_type, c.action_type) action_type,
        action_tx_hash,
        coalesce(b.action_network, c.action_network) action_network
    from quest_claimed_data c
    left join {{ref("boost_deployed")}} b
    on c.boost_address = b.boost_address
    where block_time > date '2023-11-12'
),
unified_claims as (
    select
        blockchain as reward_network, 
        quest_address as boost_address,
        quest_id as boost_id,
        quest_name as boost_name,
        project_name,
        claimer_address,
        reward_amount_raw,
        reward_token_address,
        tx_hash as claim_tx_hash,
        block_time,
        claim_fee_eth,
        action_type,
        action_tx_hash,
        action_network
    from "dune"."boost_xyz"."result_dashboard_quest_claims_legacy"
    union all
    select 
        reward_network, 
        boost_address,
        boost_id,
        boost_name,
        project_name,
        claimer_address,
        reward_amount_raw,
        reward_token_address,
        claim_tx_hash,
        block_time,
        claim_fee_eth,
        action_type,
        action_tx_hash,
        action_network
    from quest_claims_enriched
)

select 
    reward_network, 
    boost_address,
    boost_id,
    boost_name,
    project_name,
    claimer_address,
    reward_token_address,
    reward_amount_raw,
    (u.reward_amount_raw / pow(10, p.decimals)) * p.price AS reward_usd,
    claim_tx_hash,
    block_time,
    claim_fee_eth,
    action_type,
    action_tx_hash,
    action_network
from unified_claims u
left join {{source('prices','usd')}} p
on date_trunc('hour', block_time) = p.minute
    and reward_token_address = p.contract_address
order by block_time desc
