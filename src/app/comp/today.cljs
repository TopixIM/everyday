
(ns app.comp.today
  (:require [respo.macros :refer [defcomp <> action-> div input button span]]
            [respo.comp.space :refer [=<]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-ui.core :as ui]
            [app.schema :as schema]
            [app.style :as style]))

(defcomp
 comp-today
 (date)
 (div
  {:style {:padding 16}}
  (<> "Today")
  (button {:style ui/button, :on-click (action-> :effect/refresh-date nil)} (<> date))))
