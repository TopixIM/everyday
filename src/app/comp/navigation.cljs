
(ns app.comp.navigation
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> span div]]))

(defcomp
 comp-entry
 (page title focused?)
 (div
  {:on-click (fn [e d!] (d! :router/change {:name page})),
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
   {:style (merge ui/row-parted {:width "72%", :margin :auto})}
   (div
    {:style ui/row}
    (comp-entry :home "Everyday" (= :home (:name router)))
    (=< 16 nil)
    (comp-entry :plan "Plan" (= :plan (:name router)))
    (=< 16 nil)
    (comp-entry :history "History" (= :history (:name router))))
   (div
    {:style {:cursor "pointer"}, :on-click (fn [e d!] (d! :router/change {:name :profile}))}
    (<> (if logged-in? "Me" "Guest"))
    (=< 8 nil)
    (<> count-members)))))
