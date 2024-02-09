 {{
    config(
        schema='boost_arbitrum',
    )
}}
 select
      'arbitrum' as blockchain,
      contractAddress,
      questId,
      contractType,
      startTime,
      endTime,
      rewardAmountOrTokenId,
      rewardTokenAddress,
      totalParticipants,
      evt_block_time,
      creator
from {{source('rabbithole_arbitrum', 'QuestFactory_evt_QuestCreated')}}
