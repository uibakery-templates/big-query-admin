SELECT
  TradeDate AS date,
  MIN_BY(LastPx, TransactTime) AS open,
  MAX_BY(StrikePrice, TransactTime) AS close,
  LEAST (MIN(StrikePrice), MIN(LastPx)) AS lowest,
  GREATEST (MAX(LastPx), MAX(StrikePrice)) AS highest,
FROM
  uibakery_big_query_sample_dataset.trade
WHERE
  Symbol = {{ui.selectAssetSymbol.value}}
GROUP BY
  TradeDate;