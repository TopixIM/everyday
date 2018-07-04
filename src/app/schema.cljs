
(ns app.schema )

(def configs {:storage-key "daily", :port 11007})

(def database {:sessions {}, :users {}, :date nil})

(def dev?
  (if (exists? js/window) (do ^boolean js/goog.DEBUG) (= "dev" (.-env (.-env js/process)))))

(def notification {:id nil, :kind nil, :text nil})

(def operation {:done? false, :time 0})

(def page {:id nil, :title "", :time nil})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil,
   :id nil,
   :nickname nil,
   :router {:name :home, :data nil, :router nil},
   :notifications [],
   :date nil})

(def task {:id nil, :text "", :time 0, :deleted? false})

(def user
  {:name nil, :id nil, :nickname nil, :avatar nil, :password nil, :plan {}, :days {}})
