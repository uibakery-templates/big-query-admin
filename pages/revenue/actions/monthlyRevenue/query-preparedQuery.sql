SELECT
  TradeDate,
  SUM(
   	CASE (Sides[0].Side)
      WHEN 'LONG' THEN (StrikePrice - LastPx)
      WHEN 'SHORT' THEN (LastPx - StrikePrice)
  	END
  )  AS TradeProfitLoss
FROM
  uibakery_big_query_sample_dataset.trade
GROUP BY
  TradeDate
ORDER BY
  TradeDate;