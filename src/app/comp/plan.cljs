
(ns app.comp.plan
  (:require [respo.macros :refer [defcomp <> div input button span]]
            [respo.comp.space :refer [=<]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-ui.core :as ui]
            [app.schema :as schema]
            [app.style :as style]))

(defcomp comp-plan () (div {:style {:padding 16}} (<> "Plan")))
