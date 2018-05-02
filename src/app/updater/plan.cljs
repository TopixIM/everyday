
(ns app.updater.plan
  (:require [app.schema :as schema] [bisection-key.util :refer [key-append]]))

(defn create [db op-data sid op-id op-time]
  (let [session (get-in db [:sessions sid]), user (get-in db [:users (:user-id session)])]
    (update-in
     db
     [:users (:user-id session) :plan]
     (fn [plan]
       (let [new-key (key-append plan)]
         (assoc plan new-key (merge schema/task {:id op-id, :time op-time, :text op-data})))))))

(defn remove-one [db op-data sid op-id op-time]
  (let [sort-id op-data, user-id (get-in db [:sessions sid :user-id])]
    (update-in db [:users user-id :plan] (fn [plan] (dissoc plan sort-id)))))

(defn update-text [db op-data sid op-id op-time]
  (let [sort-id (:id op-data)
        text (:text op-data)
        user-id (get-in db [:sessions sid :user-id])]
    (update-in
     db
     [:users user-id :plan sort-id]
     (fn [task] (-> task (assoc :text text) (assoc :time op-time))))))
