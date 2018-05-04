
(ns app.comp.today
  (:require [respo.macros :refer [defcomp <> action-> list-> div input button span]]
            [respo.comp.space :refer [=<]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-ui.core :as ui]
            [app.schema :as schema]
            [app.style :as style]
            [hsl.core :refer [hsl]]))

(defcomp
 comp-today
 (date plan operations)
 (div
  {:style {:padding 16}}
  (div
   {}
   (<> "Today")
   (=< 16 nil)
   (button
    {:style ui/button, :on-click (action-> :effect/refresh-date nil)}
    (<> (str "Refresh " date))))
  (list->
   {}
   (->> plan
        (map
         (fn [[sort-id task]]
           [sort-id
            (let [operation (get operations (:id task) schema/operation)]
              (div
               {:style (merge
                        ui/row
                        {:align-items :center,
                         :margin 8,
                         :width 320,
                         :background-color (hsl 0 0 96)})}
               (div
                {:style {:width 32,
                         :height 32,
                         :background-color (if (:done? operation)
                           (hsl 200 80 80)
                           (hsl 0 0 90)),
                         :cursor :pointer},
                 :on-click (action-> :operation/toggle-task (:id task))})
               (=< 8 nil)
               (<> (:text task))))]))))))
