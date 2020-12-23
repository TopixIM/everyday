
(ns app.comp.today
  (:require [respo.core :refer [defcomp <> list-> div input button span]]
            [respo.comp.space :refer [=<]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-ui.core :as ui]
            [app.schema :as schema]
            [app.style :as style]
            [hsl.core :refer [hsl]]))

(defcomp
 comp-task
 (task operation)
 (div
  {:style (merge ui/row {:align-items :center, :margin 8, :background-color (hsl 0 0 96)})}
  (div
   {:style {:width 32,
            :height 32,
            :background-color (if (:done? operation) (hsl 200 80 80) (hsl 0 0 90)),
            :cursor :pointer},
    :on-click (fn [e d!] (d! :operation/toggle-task (:id task)))})
  (=< 8 nil)
  (<> (:text task))))

(defcomp
 comp-today
 (date plan operations)
 (div
  {:style {:width "60%"}}
  (div {:style style/title} (<> (str "Today(" date ")")))
  (let [todo-tasks (->> plan
                        (filter
                         (fn [[sort-id task]]
                           (let [operation (get operations (:id task) schema/operation)]
                             (and (not (:deleted? task)) (not (:done? operation)))))))
        done-tasks (->> plan
                        (filter
                         (fn [[sort-id task]]
                           (let [operation (get operations (:id task) schema/operation)]
                             (and (not (:deleted? task)) (:done? operation))))))]
    (div
     {:style (merge ui/column)}
     (div
      {}
      (div {:style style/title} (<> "Todo"))
      (list->
       {}
       (->> todo-tasks
            (map
             (fn [[sort-id task]]
               [sort-id
                (let [operation (get operations (:id task) schema/operation)]
                  (comp-task task operation))])))))
     (div
      {:style {}}
      (div {:style style/title} (<> "Done"))
      (if (empty? done-tasks)
        (<>
         "Nothing."
         {:margin-left 8,
          :margin-bottom 16,
          :font-family ui/font-fancy,
          :color (hsl 0 0 60)})
        (list->
         {}
         (->> done-tasks
              (map
               (fn [[sort-id task]]
                 [sort-id
                  (let [operation (get operations (:id task) schema/operation)]
                    (comp-task task operation))]))))))))))
