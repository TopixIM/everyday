
(ns app.comp.plan
  (:require [respo.macros :refer [defcomp <> div list-> action-> input button span]]
            [respo.comp.space :refer [=<]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-ui.core :as ui]
            [app.schema :as schema]
            [app.style :as style]
            [clojure.string :as string]
            [hsl.core :refer [hsl]]
            [respo-ui.comp.icon :refer [comp-icon]]))

(defcomp
 comp-task
 (sort-id task)
 (div
  {:style (merge
           ui/row-parted
           {:width 320, :background-color (hsl 0 0 96), :margin "0 8px 8px 0", :padding 8})}
  (<> (:text task))
  (div
   {:style ui/row}
   (span
    {:on-click (fn [e d! m!]
       (let [text (js/prompt "New content?" (:text task))]
         (when (not (string/blank? text)) (d! :plan/update-text {:id sort-id, :text text}))))}
    (comp-icon "compose"))
   (=< 16 nil)
   (span
    {:on-click (fn [e d! m!]
       (let [confirmation? (js/confirm "Remove?")]
         (when confirmation? (d! :plan/remove-one sort-id))))}
    (comp-icon "ios-trash")))))

(defcomp
 comp-plan
 (plan)
 (div
  {:style {:padding 16}}
  (div {:style {:font-size 24, :font-family ui/font-fancy, :font-weight 300}} (<> "Plan"))
  (list->
   {:style (merge)}
   (->> plan (sort-by first) (map (fn [[k task]] [k (div {} (comp-task k task))]))))
  (button
   {:style ui/button,
    :on-click (fn [e d! m!]
      (let [text (js/prompt "A name?")]
        (when (not (string/blank? text)) (d! :plan/create text))))}
   (<> "Add"))))
