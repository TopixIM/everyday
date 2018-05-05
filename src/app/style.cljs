
(ns app.style (:require [hsl.core :refer [hsl]] [respo-ui.core :as ui]))

(def link
  {:text-decoration :underline,
   :cursor :pointer,
   :color (hsl 240 80 80),
   :font-family ui/font-fancy})

(def title {:font-family ui/font-fancy, :font-weight 300, :font-size 24})
