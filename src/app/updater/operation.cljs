
(ns app.updater.operation )

(defn toggle-task [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in db [:users user-id :days (:date db) op-data :done?] not)))
