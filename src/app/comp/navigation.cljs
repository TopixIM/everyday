
(ns app.comp.navigation
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> span div]]))

(defcomp
 comp-entry
 (page title focused?)
 (div
  {:on-click (action-> :router/change {:name page}),
   :style (merge {:cursor :pointer} (when focused? {:font-weight 500}))}
  (<> title)))

(defcomp
 comp-navigation
 (logged-in? count-members router)
 (div
  {:style (merge
           ui/row-center
           {:height 48,
            :justify-content :space-between,
            :padding "0 16px",
            :font-size 16,
            :border-bottom (str "1px solid " (hsl 0 0 0 0.1)),
            :font-family ui/font-fancy,
            :font-weight 100,
            :flex-shrink 0})}
  (div
   {:style ui/row}
   (comp-entry :home "Daily" (= :home (:name router)))
   (=< 16 nil)
   (comp-entry :plan "Plan" (= :plan (:name router)))
   (=< 16 nil)
   (comp-entry :history "History" (= :history (:name router))))
  (div
   {:style {:cursor "pointer"}, :on-click (action-> :router/change {:name :profile})}
   (<> (if logged-in? "Me" "Guest"))
   (=< 8 nil)
   (<> count-members))))
