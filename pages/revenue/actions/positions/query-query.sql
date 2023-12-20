SELECT
	Sides[0].Side as side,
  COUNT(OrderID) as tradeIdCount
FROM uibakery_big_query_sample_dataset.trade 
GROUP BY 
	Side;