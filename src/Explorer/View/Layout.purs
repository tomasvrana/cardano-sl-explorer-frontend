module Explorer.View.Layout where

import Pux.Html (Html, div, h1, main, text) as P
import Pux.Html.Attributes (className) as P

import Explorer.Routes (Route(..))
import Explorer.Types.Actions (Action)
import Explorer.Types.State (State)
import Explorer.View.Address (addressView)
import Explorer.View.Header (headerView)
import Explorer.View.Footer (footerView)
import Explorer.View.Calculator (calculatorView)
import Explorer.View.Dashboard (dashboardView)
import Explorer.View.Transaction (transactionView)
import Explorer.View.Block (blockView)

view :: State -> P.Html Action
view state =
    P.div
      []
      [
        P.div
          [ P.className "explorer-bg__container"]
          []
        , P.div
              [ P.className "explorer-content__wrapper"]
              [ P.main
                    [ P.className "explorer-content" ]
                    [ case state.route of
                          Dashboard -> dashboardView state
                          (Transaction hash) -> transactionView state hash
                          Address -> addressView state
                          Calculator -> calculatorView state
                          (Block hash) -> blockView state hash
                          NotFound -> notFoundView
                    ]
                , footerView state
                ]
        , headerView state
      ]


notFoundView :: P.Html Action
notFoundView =
  P.div [] [
    P.h1 [] [P.text "404 Not Found"]
  ]
