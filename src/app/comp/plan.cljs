
(ns app.comp.plan
  (:require [respo.macros :refer [defcomp <> div list-> action-> input button span]]
            [respo.comp.space :refer [=<]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-ui.core :as ui]
            [app.schema :as schema]
            [app.style :as style]
            [clojure.string :as string]
            [hsl.core :refer [hsl]]
            [respo-ui.comp.icon :refer [comp-icon]]
            ["alertify.js" :as alertify]))

(defcomp
 comp-task
 (sort-id task)
 (div
  {:style (merge
           ui/row-parted
           {:width 320, :background-color (hsl 0 0 96), :margin "0 8px 8px 0", :padding 8}),
   :draggable true,
   :on-dragstart (fn [e d! m!] (.. (:event e) -dataTransfer (setData "text/plain" sort-id))),
   :on-dragover (fn [e d! m!]
     (.preventDefault (:event e))
     (set! (.. (:event e) -dataTransfer -dropEffect) "move")),
   :on-drop (fn [e d! m!]
     (let [drag-id (.. (:event e) -dataTransfer (getData "text")), drop-id sort-id]
       (when (not= drag-id drop-id) (d! :plan/move {:from drag-id, :to drop-id}))))}
  (<> (:text task))
  (div
   {:style ui/row}
   (span
    {:style {:cursor :pointer},
     :on-click (fn [e d! m!]
       (.. alertify
           (defaultValue (:text task))
           (prompt
            "New task:"
            (fn [text event]
              (when (not (string/blank? text))
                (d! :plan/update-text {:id sort-id, :text text}))))))}
    (comp-icon "compose"))
   (=< 16 nil)
   (span
    {:style {:cursor :pointer},
     :on-click (fn [e d! m!]
       (alertify/confirm "Sure to remove?" (fn [] (d! :plan/remove-one sort-id)) (fn [] )))}
    (comp-icon "ios-trash")))))

(defcomp
 comp-plan
 (plan)
 (div
  {:style {:padding 16}}
  (div {:style style/title} (<> "Plan"))
  (list->
   {:style (merge)}
   (->> plan
        (filter (fn [[k task]] (not (:deleted? task))))
        (sort-by first)
        (map (fn [[k task]] [k (div {} (comp-task k task))]))))
  (button
   {:style ui/button,
    :on-click (fn [e d! m!]
      (.. alertify
          (defaultValue "")
          (prompt
           "A task:"
           (fn [text event] (when (not (string/blank? text)) (d! :plan/create text))))))}
   (<> "Add"))))
