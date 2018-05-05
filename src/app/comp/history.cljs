
(ns app.comp.history
  (:require [respo.macros :refer [defcomp <> div list-> input button span]]
            [respo.comp.space :refer [=<]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-ui.core :as ui]
            [app.schema :as schema]
            [app.style :as style]
            [hsl.core :refer [hsl]]))

(defcomp
 comp-records
 (plan date operations)
 (div
  {:style {:padding 16}}
  (div {} (<> date))
  (list->
   {:style {:padding-left 16}}
   (->> operations
        (map
         (fn [[task-id info]]
           (let [task (first (filter (fn [task] (= task-id (:id task))) (vals plan)))]
             [task-id
              (div
               {}
               (if (and (some? task))
                 (<>
                  (:text task)
                  (if (:done? info) {:color (hsl 0 0 20)} {:color (hsl 0 0 80)}))
                 (<> task-id)))])))))))

(defcomp
 comp-history
 (plan days)
 (div
  {}
  (div {:style (merge style/title {:padding 16})} (<> "History"))
  (list->
   {}
   (->> days (map (fn [[date operations]] [date (comp-records plan date operations)]))))))
