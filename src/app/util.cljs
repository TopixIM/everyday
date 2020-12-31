
(ns app.util (:require ["dayjs" :as dayjs]))

(defn find-first [f xs] (reduce (fn [_ x] (when (f x) (reduced x))) nil xs))

(defn get-date [] (.format (dayjs) "YYYY-MM-DD"))

(defn get-shifted-date [] (-> (dayjs) (.subtract 3 "hours") (.format "YYYY-MM-DD")))
