SELECT
  Sides[0].PartyIDs[0].PartyID as firmId,
  COUNT(OrderID) as tradeIdCount
from
  uibakery_big_query_sample_dataset.trade
GROUP BY
  firmId;