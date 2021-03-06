module Explorer.I18n.Types where

-- Add all i18n types here to generate lenses from it

type Translation =
    { common :: Common
    , navigation :: Nav
    , hero :: Hero
    , dashboard :: Dashboard
    , address :: Address
    , footer :: Footer
    }

-- common translations

type Common =
    { cBack :: String
    , cADA :: String
    , cBCshort :: String
    , cBCong :: String
    , cApi :: String
    , cTransaction :: String
    , cTransactions :: String
    , cTransactionFeed :: String
    , cCalculator :: String
    , cNetwork :: String
    , cVersion :: String
    , cAddress :: String
    , cSummary :: String
    , cBlock :: String
    , cHashes :: String
    , cHeight :: String
    , cAge :: String
    , cTotalSent :: String
    , cRelayedBy :: String
    , cSizeKB :: String
    , cExpand :: String
    , cCollapse :: String
    , cNoData :: String
    , cCopyright :: String
    , cUnknown :: String
    }

-- translations of main navigation

type Nav =
    { navHome :: String
    , navBlockchain :: String
    , navMarket :: String
    , navCharts :: String
    , navTools :: String
    }

-- translations of hero

type Hero =
    { hrTitle :: String
    , hrSubtitle :: String
    , hrSearch :: String
    }

-- translations of dashboard

type Dashboard =
    { dbLastBlocks :: String
    , dbLastBlocksDescription :: String
    , dbNetworkDifficulty :: String
    , dbNetworkDifficultyDescription :: String
    , dbPriceAverage :: String
    , dbPriceForOne :: String
    , dbPriceSince :: String
    , dbTotalSupply :: String
    , dbTotalAmountOf :: String
    , dbTotalAmountOfTransactions :: String
    , dbExploreBlocks :: String
    , dbExploreTransactions :: String
    , dbBlockchainOffer :: String
    , dbBlockSearch :: String
    , dbBlockSearchDescription :: String
    , dbAddressSearch :: String
    , dbAddressSearchDescription :: String
    , dbTransactionSearch :: String
    , dbTransactionSearchDescription :: String
    , dbApiDescription :: String
    , dbGetAddress :: String
    , dbResponse :: String
    , dbCurl :: String
    , dbNode :: String
    , dbJQuery :: String
    , dbGetApiKey :: String
    , dbMoreExamples :: String
    , dbAboutBlockchain :: String
    , dbAboutBlockchainDescription :: String
    }

-- translations of address detail page

type Address =
    { addScan :: String
    , addQrCode :: String
    , addFinalBalance :: String
    }

-- translations of footer

type Footer =
    { fooRessources :: String
    , fooFollow :: String
    , fooLinks :: String
    }
