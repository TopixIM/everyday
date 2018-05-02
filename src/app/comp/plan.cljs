
(ns app.comp.plan
  (:require [respo.macros :refer [defcomp <> div list-> action-> input button span]]
            [respo.comp.space :refer [=<]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-ui.core :as ui]
            [app.schema :as schema]
            [app.style :as style]
            [clojure.string :as string]
            [hsl.core :refer [hsl]]))

(defcomp
 comp-task
 (sort-id task)
 (div
  {:style (merge
           ui/row-parted
           {:width 200, :background-color (hsl 0 0 96), :margin "0 16px 16px 0", :padding 8})}
  (<> (:text task))
  (div
   {:style ui/row}
   (span
    {:inner-text "edit",
     :on-click (fn [e d! m!]
       (let [text (js/prompt "New content?" (:text task))]
         (when (not (string/blank? text)) (d! :plan/update-text {:id sort-id, :text text}))))})
   (=< 8 nil)
   (span
    {:inner-text "rm",
     :on-click (fn [e d! m!]
       (let [confirmation? (js/confirm "Remove?")]
         (when confirmation? (d! :plan/remove-one sort-id))))}))))

(defcomp
 comp-plan
 (plan)
 (div
  {:style {:padding 16}}
  (<> "Plan")
  (list->
   {:style (merge ui/row {:flex-wrap :wrap})}
   (->> plan (sort-by first) (map (fn [[k task]] [k (div {} (comp-task k task))]))))
  (button
   {:style ui/button,
    :on-click (fn [e d! m!]
      (let [text (js/prompt "A name?")]
        (when (not (string/blank? text)) (d! :plan/create text))))}
   (<> "Add"))))
