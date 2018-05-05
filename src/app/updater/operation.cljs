
(ns app.updater.operation )

(defn toggle-task [db op-data sid op-id op-time]
  (let [session (get-in db [:sessions sid]), user-id (:user-id session)]
    (update-in db [:users user-id :days (:date session) op-data :done?] not)))
