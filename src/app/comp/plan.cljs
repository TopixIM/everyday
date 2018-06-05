
(ns app.comp.plan
  (:require [respo.macros :refer [defcomp <> div list-> action-> cursor-> input button span]]
            [respo.comp.space :refer [=<]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-ui.core :as ui]
            [app.schema :as schema]
            [app.style :as style]
            [clojure.string :as string]
            [hsl.core :refer [hsl]]
            [respo-ui.comp.icon :refer [comp-icon]]
            [respo-alerts.comp.alerts :refer [comp-confirm comp-prompt]]))

(defcomp
 comp-deleted-task
 (sort-key task)
 (div
  {:style (merge
           ui/row-parted
           {:width 320, :background-color (hsl 0 0 96), :margin-bottom 8, :padding 8})}
  (div {:style ui/flex} (<> (:text task)))
  (span
   {:on-click (action-> :plan/reuse sort-key), :style {:cursor :pointer}}
   (comp-icon :contrast))))

(defcomp
 comp-task
 (states sort-id task)
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
   (cursor->
    :update-prompt
    comp-prompt
    states
    (comp-icon "compose")
    "New task:"
    (:text task)
    (fn [result d! m!]
      (when (not (string/blank? result)) (d! :plan/update-text {:id sort-id, :text result}))))
   (=< 16 nil)
   (cursor->
    :confirm
    comp-confirm
    states
    (comp-icon "ios-trash")
    "Sure to remove?"
    (fn [sure? d! m!] (when sure? (d! :plan/remove-one sort-id)))))))

(defcomp
 comp-plan
 (states plan)
 (div
  {:style (merge {:padding 16, :overflow :auto, :padding-bottom 200})}
  (div
   {}
   (div
    {:style (merge ui/row style/title {})}
    (<> "Plan")
    (=< 16 nil)
    (cursor->
     :create-prompt
     comp-prompt
     states
     (button {:style (merge ui/button {:height 32, :vertical-align :middle})} (<> "Add"))
     "A task:"
     ""
     (fn [text d! m!] (when (not (string/blank? text)) (d! :plan/create text)))))
   (list->
    {:style (merge)}
    (->> plan
         (filter (fn [[k task]] (not (:deleted? task))))
         (sort-by first)
         (map (fn [[k task]] [k (div {} (cursor-> k comp-task states k task))])))))
  (=< nil 80)
  (let [deleted-plans (->> plan (filter (fn [[k task]] (:deleted? task))) (sort-by first))]
    (if (not (empty? deleted-plans))
      (div
       {}
       (div {:style (merge style/title {:color (hsl 0 0 70)})} (<> "Deleted"))
       (list->
        {:style (merge)}
        (->> deleted-plans (map (fn [[k task]] [k (div {} (comp-deleted-task k task))])))))))))
