
(ns app.schema )

(def database {:sessions {}, :users {}, :date nil})

(def notification {:id nil, :kind nil, :text nil})

(def operation {:done? false, :time 0})

(def page {:id nil, :title "", :time nil})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil,
   :id nil,
   :nickname nil,
   :router {:name :home, :data nil, :router nil},
   :messages {},
   :date nil})

(def task {:id nil, :text "", :time 0, :deleted? false})

(def user
  {:name nil, :id nil, :nickname nil, :avatar nil, :password nil, :plan {}, :days {}})
