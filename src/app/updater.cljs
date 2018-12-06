
(ns app.updater
  (:require [app.updater.session :as session]
            [app.updater.user :as user]
            [app.updater.router :as router]
            [app.updater.plan :as plan]
            [app.updater.operation :as operation]))

(defn updater [db op op-data sid op-id op-time]
  (let [f (case op
            :session/connect session/connect
            :session/disconnect session/disconnect
            :user/log-in user/log-in
            :user/sign-up user/sign-up
            :user/log-out user/log-out
            :session/remove-message session/remove-message
            :session/local-date session/local-date
            :router/change router/change
            :plan/create plan/create
            :plan/update-text plan/update-text
            :plan/remove-one plan/remove-one
            :plan/reuse plan/reuse
            :plan/move plan/move
            :operation/toggle-task operation/toggle-task
            (do (println "Unknown op:" op) identity))]
    (f db op-data sid op-id op-time)))
