 {{
    config(
        schema='boost_ethereum',
    )
}}
select
     'ethereum' as blockchain,
      contractAddress,
      questId,
      questType as contractType,
      startTime,
      endTime,
      rewardAmountOrTokenId,
      rewardTokenAddress,
      totalParticipants,
      evt_block_time,
      creator
from {{source('rabbithole_ethereum', 'QuestFactory_evt_QuestCreated')}}
