
(ns app.twig.container
  (:require [recollect.macros :refer [deftwig]]
            [app.twig.user :refer [twig-user]]
            ["randomcolor" :as color]))

(deftwig
 twig-members
 (sessions users)
 (->> sessions
      (map (fn [[k session]] [k (get-in users [(:user-id session) :name])]))
      (into {})))

(deftwig
 twig-container
 (db session records)
 (let [logged-in? (some? (:user-id session))
       router (:router session)
       base-data {:logged-in? logged-in?, :session session, :reel-length (count records)}
       date (:date session)]
   (merge
    base-data
    (if logged-in?
      (let [user (get-in db [:users (:user-id session)])]
        {:user (twig-user user),
         :router (assoc
                  router
                  :data
                  (case (:name router)
                    :home
                      {:plan (:plan user),
                       :operations (when (some? date) (get-in user [:days date] {}))}
                    :plan (:plan user)
                    :history {:plan (:plan user), :days (:days user)}
                    :profile (twig-members (:sessions db) (:users db))
                    {})),
         :count (count (:sessions db)),
         :color (color/randomColor)})
      nil))))
