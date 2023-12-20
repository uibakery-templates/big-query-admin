const assetSymbols = await {{actions.assetSymbols.trigger()}};
{{ui.selectAssetSymbol}}.setValue(assetSymbols[0].assetSymbol);
await {{actions.tradeReportForAsset.trigger()}};