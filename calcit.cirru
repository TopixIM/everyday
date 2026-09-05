
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |bisection-key/ |alerts.calcit/ |respo-feather.calcit/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!)
      :feature-policy $ {}
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |bisection-key/ |calcit.std/ |calcit-wss/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *states $ {}
              :states $ {}
                :cursor $ []
          :examples $ []
          :schema $ :: 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *store nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect! () $ let
                location $ unsafe-coerce js/location JsObject
                url-obj $ unsafe-coerce
                  url-parse (.-href location) true
                  , JsObject
                query $ unsafe-coerce (.-query url-obj) JsObject
                raw-host $ .-host query
                raw-port $ .-port query
                host $ if (js-present? raw-host) (unsafe-coerce raw-host String) (.-hostname location)
                port $ if (js-present? raw-port) (unsafe-coerce raw-port String) (&map:get config/site :port)
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event)
                    dispatch! :session/local-date $ get-shifted-date
                    simulate-login!
                  :on-close $ fn (event) (reset! *store nil) (js/console.error "|Lost connection!")
                  :on-data on-server-data
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op op-data)
              when
                and config/dev? $ not= op :states
                println |Dispatch op op-data
              case-default op
                ws-send! $ {} (:kind :op) (:op op) (:data op-data)
                :states $ let[] (cursor s) op-data
                  reset! *states $ update-states @*states cursor s
                :effect/connect $ connect!
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              render-app!
              connect!
              add-watch *store :changes $ fn (store prev) (render-app!)
              add-watch *states :changes $ fn (states prev) (render-app!)
              on-page-touch $ fn ()
                if (nil? @*store) (connect!)
              println "|App started!"
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ .querySelector js/document |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-server-data (data)
              case-default (&map:get data :kind) (println "|unknown server data kind:" data)
                :patch $ let
                    changes $ &map:get data :data
                  when config/dev? $ js/console.log |Changes (to-js-data changes)
                  reset! *store $ patch-twig @*store changes
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if
              or (some? client-errors) (some? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target
              comp-container (:states @*states) @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn simulate-login! () $ let
                raw $ js/localStorage.getItem (&map:get config/site :storage-key)
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! :user/log-in $ parse-cirru-edn (unsafe-coerce raw String)
                do $ println "|Found no storage."
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.client $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ patch-twig
            cumulo-util.core :refer $ on-page-touch
            |url-parse :default url-parse
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
            app.util :refer $ get-shifted-date
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (states store)
              let
                  state $ :data states
                  session $ :session store
                  router $ :router store
                  router-data $ :data router
                if (nil? store) (comp-offline)
                  div
                    {} $ :style (merge ui/global ui/fullscreen ui/column)
                    comp-navigation (:logged-in? store) (:count store) (:router session)
                    div
                      {} $ :style
                        merge ui/flex ui/column $ {} (:overflow :auto) (:align-items :center) (:padding 16) (:padding-bottom 200)
                      if (:logged-in? store)
                        case-default (:name router) (<> router)
                          :home $ comp-today (:date session) (:plan router-data)
                            or (:operations router-data) ({})
                          :plan $ comp-plan states router-data
                          :profile $ comp-profile (:user store) router-data
                          :history $ comp-history (:plan router-data) (:days router-data)
                        comp-login states
                    comp-status-color $ :color store
                    when dev? $ comp-inspect |Store store
                      {} (:bottom 0) (:left 0) (:max-width |100%)
                    comp-messages
                      get-in store $ [] :session :messages
                      {}
                      fn (info d!) (d! :session/remove-message info)
                    when dev? $ comp-reel (:reel-length store) ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-offline () $ div
              {} $ :style (merge ui/global ui/fullscreen ui/center)
              span
                {}
                  :style $ {} (:cursor :pointer)
                  :on-click $ fn (e d!) (d! :effect/connect nil)
                <> "|Socket broken! Click to retry." $ {} (:font-family ui/font-fancy) (:font-weight 100) (:font-size 32)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-status-color (color)
              div $ {}
                :style $ {} (:width 16) (:height 16) (:position :absolute) (:top 60) (:right 8) (:background-color color) (:border-radius |8px) (:opacity 0.8)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-body $ {} (:padding "|8px 16px")
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp <> div span button
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo.comp.space :refer $ [] =<
            [] app.comp.navigation :refer $ [] comp-navigation
            [] app.comp.profile :refer $ [] comp-profile
            [] app.comp.login :refer $ [] comp-login
            [] respo-message.comp.messages :refer $ [] comp-messages
            [] cumulo-reel.comp.reel :refer $ [] comp-reel
            [] app.config :refer $ [] dev?
            [] app.comp.plan :refer $ [] comp-plan
            [] app.comp.today :refer $ [] comp-today
            [] app.comp.history :refer $ [] comp-history
    'app.comp.history $ %{} 'FileEntry
      :defs $ {}
        'comp-history $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-history (plan days)
              div
                {} $ :style
                  merge ui/column $ {} (:width |60%)
                div
                  {} $ :style
                    merge style/title $ {}
                  <> |History
                list->
                  {} $ :style
                    merge ui/flex $ {} (:padding-bottom 160)
                  -> days
                    or $ {}
                    .to-list
                    .sort $ fn (date-x date-y)
                      &compare (first date-y) (first date-x)
                    .map $ fn (pair)
                      let[] (date operations) pair $ [] date (comp-records plan date operations)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-records $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-records (plan date operations)
              div
                {} $ :style
                  {} $ :padding "|8px 0"
                div ({}) (<> date)
                list->
                  {} $ :style
                    {} $ :padding-left 16
                  -> operations (.to-list)
                    map $ fn (pair)
                      let-sugar
                            [] task-id info
                            , pair
                          task $ first
                            filter
                              -> plan (.to-list) (.map last)
                              fn (task)
                                = task-id $ :id task
                        [] task-id $ div ({})
                          if
                            and $ some? task
                            <> (:text task)
                              if (:done? info)
                                {} $ :color (hsl 0 0 20)
                                {} $ :color (hsl 0 0 80)
                            <> task-id
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.history $ :require
            [] respo.core :refer $ [] defcomp <> div list-> input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.style :as style
            [] respo-ui.core :refer $ [] hsl
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-login (states)
              let
                  cursor $ :cursor states
                  state $ or (:data states) initial-state
                div
                  {} $ :style (merge ui/flex ui/center)
                  div ({})
                    div
                      {} $ :style ({})
                      div ({})
                        input $ {} (:placeholder |Username)
                          :value $ :username state
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :username (:value e)
                      =< nil 8
                      div ({})
                        input $ {} (:placeholder |Password)
                          :value $ :password state
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :password (:value e)
                    =< nil 8
                    div
                      {} $ :style
                        {} $ :text-align :right
                      span $ {} (:inner-text "|Sign up")
                        :style $ merge ui/link
                        :on-click $ on-submit (:username state) (:password state) true
                      =< 8 nil
                      span $ {} (:inner-text "|Log in")
                        :style $ merge ui/link
                        :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
          :schema $ :: 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def initial-state $ {} (:username |) (:password |)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-submit (username password signup?)
              fn (e dispatch!)
                dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
                .setItem js/localStorage (:storage-key config/site)
                  format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.login $ :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.style :as style
            [] app.config :as config
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {}
        'comp-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-entry (page title focused?)
              div
                {}
                  :on-click $ fn (e d!)
                    d! :router/change $ {} (:name page)
                  :style $ merge
                    {} $ :cursor :pointer
                    when focused? $ {} (:font-weight 500)
                <> title
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-navigation $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-navigation (logged-in? count-members router)
              div
                {} $ :style
                  merge ui/row-center $ {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                    :border-bottom $ str "|1px solid " (hsl 0 0 0 0.1)
                    :font-family ui/font-fancy
                    :font-weight 100
                    :flex-shrink 0
                div
                  {} $ :style
                    merge ui/row-parted $ {} (:width |72%) (:margin :auto)
                  div
                    {} $ :style ui/row
                    comp-entry :home |Everyday $ = :home (:name router)
                    =< 16 nil
                    comp-entry :plan |Plan $ = :plan (:name router)
                    =< 16 nil
                    comp-entry :history |History $ = :history (:name router)
                  div
                    {}
                      :style $ {} (:cursor |pointer)
                      :on-click $ fn (e d!)
                        d! :router/change $ {} (:name :profile)
                    <> $ if logged-in? |Me |Guest
                    =< 8 nil
                    <> count-members
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.navigation $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> span div
    'app.comp.plan $ %{} 'FileEntry
      :defs $ {}
        'comp-deleted-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-deleted-task (sort-key task)
              div
                {} $ :style
                  merge ui/row-parted $ {}
                    :background-color $ hsl 0 0 96
                    :margin-bottom 8
                    :padding 8
                div
                  {} $ :style ui/flex
                  <> $ :text task
                span
                  {}
                    :on-click $ fn (e d!) (d! :plan/reuse sort-key)
                    :style $ {} (:cursor :pointer)
                  comp-i :shuffle 14 $ hsl 200 80 70
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-plan $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-plan (states plan)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} $ :show-deprecated? false
                  create-plugin $ use-prompt (>> states :create)
                    {} (:title "|A task") (:initial |)
                div
                  {} $ :style
                    {} $ :width |60%
                  div ({})
                    div
                      {} $ :style
                        merge ui/row style/title $ {}
                      <> |Plan
                      =< 16 nil
                      button
                        {}
                          :style $ merge ui/button
                            {} (:height 32) (:vertical-align :middle)
                          :on-click $ fn (e d!)
                            .show create-plugin d! $ fn (text)
                              when
                                not $ .blank? text
                                d! :plan/create text
                        <> |Add
                    list->
                      {} $ :style ({})
                      -> plan
                        or $ {}
                        .to-list
                        filter $ fn (pair)
                          not $ :deleted? (last pair)
                        .sort-by first
                        map $ fn (pair)
                          let[] (k task) pair $ [] k
                            div ({})
                              comp-task (>> states k) k task
                  =< nil 80
                  let
                      deleted-plans $ -> plan
                        or $ {}
                        .to-list
                        filter $ fn (pair)
                          :deleted? $ last pair
                        .sort-by first
                    if
                      not $ empty? deleted-plans
                      div ({})
                        div
                          {} $ :style
                            merge style/title $ {}
                              :color $ hsl 0 0 70
                          <> |Deleted
                          =< 8 nil
                          comp-icon :eye
                            {} (:font-size 14)
                              :color $ hsl 200 80 70
                              :cursor :pointer
                            fn (e d!)
                              d! cursor $ update state :show-deprecated? not
                        if (:show-deprecated? state)
                          list->
                            {} $ :style ({})
                            -> deleted-plans (.to-list)
                              map $ fn (pair)
                                let[] (k task) pair $ [] k
                                  div ({}) (comp-deleted-task k task)
                          <>
                            str "|(" (count deleted-plans) "|) tasks deprecated."
                            {} (:font-family ui/font-fancy)
                              :color $ hsl 0 0 50
                  .render create-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (states sort-id task)
              let
                  update-plugin $ use-prompt (>> states :update)
                    {} (:text "|New task:")
                      :initial $ :text task
                  remove-plugin $ use-confirm (>> states :remove)
                    {} $ :text "|Sure to remove from everyday task?"
                div
                  {}
                    :style $ merge ui/row-parted
                      {}
                        :background-color $ hsl 0 0 96
                        :margin "|0 8px 8px 0"
                        :padding 8
                    :draggable true
                    :on-dragstart $ fn (e d! m!)
                      -> (:event e) .-dataTransfer $ .!setData |text/plain sort-id
                    :on-dragover $ fn (e d! m!)
                      .!preventDefault $ :event e
                      set!
                        -> (:event e) .-dataTransfer .-dropEffect
                        , |move
                    :on-drop $ fn (e d! m!)
                      let
                          drag-id $ -> (:event e) .-dataTransfer (.!getData |text)
                          drop-id sort-id
                        when (not= drag-id drop-id)
                          d! :plan/move $ {} (:from drag-id) (:to drop-id)
                  <> $ :text task
                  div
                    {} $ :style ui/row
                    comp-icon :edit
                      {}
                        :color $ hsl 200 80 70
                        :font-size 14
                        :cursor :pointer
                      fn (e d!)
                        .show update-plugin d! $ fn (result)
                          when
                            not $ .blank? result
                            d! :plan/update-text $ {} (:id sort-id) (:text result)
                    =< 16 nil
                    comp-icon :eye-off
                      {}
                        :color $ hsl 200 80 70
                        :font-size 14
                        :cursor :pointer
                      fn (e d!)
                        .show remove-plugin d! $ fn () (d! :plan/remove-one sort-id)
                    .render update-plugin
                    .render remove-plugin
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.plan $ :require
            [] respo.core :refer $ [] defcomp <> div list-> >> input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.style :as style
            [] respo-ui.core :refer $ [] hsl
            [] respo-alerts.core :refer $ [] use-confirm use-prompt
            [] feather.core :refer $ [] comp-i comp-icon
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        'comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-profile (user members)
              div
                {} $ :style
                  merge ui/flex $ {} (:padding 16) (:width |60%)
                div
                  {} $ :style
                    {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                  <> $ str "|Hello! " (:name user)
                =< nil 16
                div
                  {} $ :style ui/row
                  <> |Members:
                  =< 8 nil
                  list->
                    {} $ :style ui/row
                    -> members (.to-list)
                      map $ fn (pair)
                        let[] (k username) pair $ [] k
                          div
                            {} $ :style
                              {} (:padding "|0 8px")
                                :border $ str "|1px solid " (hsl 0 0 80)
                                :border-radius |16px
                                :margin "|0 4px"
                            <> username
                =< nil 48
                div ({})
                  button
                    {}
                      :style $ merge ui/button
                      :on-click $ fn (e d!)
                        js/location.replace $ str js/location.origin |?time= (.now js/Date)
                    <> |Refresh
                  =< 8 nil
                  button
                    {}
                      :style $ merge ui/button
                        {} (:color :red) (:border-color :red)
                      :on-click $ fn (e dispatch!) (dispatch! :user/log-out nil)
                        .removeItem js/localStorage $ :storage-key config/site
                    <> "|Log out"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.profile $ :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
    'app.comp.today $ %{} 'FileEntry
      :defs $ {}
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (task operation)
              div
                {} $ :style
                  merge ui/row $ {} (:align-items :center) (:margin 8)
                    :background-color $ hsl 0 0 96
                div $ {}
                  :style $ {} (:width 32) (:height 32)
                    :background-color $ if (:done? operation) (hsl 200 80 80) (hsl 0 0 90)
                    :cursor :pointer
                  :on-click $ fn (e d!)
                    d! :operation/toggle-task $ :id task
                =< 8 nil
                <> $ :text task
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-today $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-today (date plan operations)
              div
                {} $ :style
                  {} $ :width |60%
                div
                  {} $ :style style/title
                  <> $ str "|Today(" date "|)"
                let
                    todo-tasks $ -> plan
                      or $ {}
                      .to-list
                      filter $ fn (pair)
                        let-sugar
                              [] sort-id task
                              , pair
                            operation $ or
                              get operations $ :id task
                              , schema/operation
                          and
                            not $ :deleted? task
                            not $ :done? operation
                    done-tasks $ -> plan
                      or $ {}
                      .to-list
                      filter $ fn (pair)
                        let-sugar
                              [] sort-id task
                              , pair
                            operation $ or
                              get operations $ :id task
                              , schema/operation
                          and
                            not $ :deleted? task
                            :done? operation
                  div
                    {} $ :style (merge ui/column)
                    div ({})
                      div
                        {} $ :style style/title
                        <> |Todo
                      list-> ({})
                        -> todo-tasks $ map
                          fn (pair)
                            let-sugar
                                  [] sort-id task
                                  , pair
                              [] sort-id $ let
                                  operation $ or
                                    get operations $ :id task
                                    , schema/operation
                                comp-task task operation
                    div
                      {} $ :style ({})
                      div
                        {} $ :style style/title
                        <> |Done
                      if (empty? done-tasks)
                        <> |Nothing. $ {} (:margin-left 8) (:margin-bottom 16) (:font-family ui/font-fancy)
                          :color $ hsl 0 0 60
                        list-> ({})
                          -> done-tasks $ map
                            fn (pair)
                              let[] (sort-id task) pair $ [] sort-id
                                let
                                    operation $ or
                                      get operations $ :id task
                                      , schema/operation
                                  comp-task task operation
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.today $ :require
            [] respo.core :refer $ [] defcomp <> list-> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.style :as style
            [] respo-ui.core :refer $ [] hsl
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= |true js/process.env.cdn)
              :else false
          :examples $ []
          :schema $ :: 'Dynamic
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:port 11007) (:title |Everyday) (:icon |http://cdn.tiye.me/logo/topix.png) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/everyday/) (:theme |#eeeeff) (:storage-key |everyday) (:storage-file |storage.cirru)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def database $ {}
              :sessions $ {}
              :users $ {}
              :date nil
          :examples $ []
          :schema $ :: 'Dynamic
        'notification $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def notification $ {} (:id nil) (:kind nil) (:text nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'operation $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def operation $ {} (:done? false) (:time 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'page $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def page $ {} (:id nil) (:title |) (:time nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def router $ {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def session $ {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
              :date nil
          :examples $ []
          :schema $ :: 'Dynamic
        'task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def task $ {} (:id nil) (:text |) (:time 0) (:deleted? false)
          :examples $ []
          :schema $ :: 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
              :plan $ {}
              :days $ {}
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *client-caches $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *initial-db $ if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                merge schema/database $ parse-cirru-edn (read-file storage-file)
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Dynamic
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *reader-reel @*reel)
          :examples $ []
          :schema $ :: 'Dynamic
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ struct-with reel-schema (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op op-data sid)
              let
                  op-id $ generate-id!
                  op-time $ -> (get-time!) (.timestamp)
                if config/dev? $ println |Dispatch! (str op) op-data sid
                if (= op :effect/persist) (persist-db!)
                  reset! *reel $ reel-reducer @*reel updater (:: op op-data) sid op-id op-time config/dev?
          :examples $ []
          :schema $ :: 'Dynamic
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-backup-path! () $ let
                now $ extract-time (get-time!)
              join-path calcit-dirname |backups
                str $ &map:get now :month
                str (&map:get now :day) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              let
                  port $ option:unwrap-or
                    option:map (get-env |port) parse-float
                    &map:get config/site :port
                run-server! port
                println $ str "|Server started on port:" port
              do (; "|init it before doing multi-threading") (identity @*reader-reel)
              set-interval 200 $ fn () (render-loop!)
              set-interval 600000 $ fn () (persist-db!)
              on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Dynamic
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-db! () $ let
                file-content $ format-cirru-edn
                  assoc (:db @*reel) :sessions $ {}
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (println "|Code updated..")
              if (not config/dev?) (raise "|reloading only happens in dev mode")
              clear-twig-caches!
              reset! *reel $ refresh-reel @*reel @*initial-db updater
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-loop! () $ when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-server! (port)
              wss-serve! (&{} :port port)
                fn (data)
                  match data
                    (:connect sid)
                      do (dispatch! :session/connect nil sid) (println "|New client.")
                    (:message sid msg)
                      let
                          action $ parse-cirru-edn msg
                        case-default (&map:get action :kind) (println "|unknown action:" action)
                          :op $ dispatch! (&map:get action :op) (&map:get action :data) sid
                    (:disconnect sid)
                      do (println "|Client closed!") (dispatch! :session/disconnect nil sid)
                    _ $ println "|unknown data:" data
          :examples $ []
          :schema $ :: 'Dynamic
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def storage-file $ if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sync-clients! (reel) (begin-twig-frame!)
              wss-each! $ fn (sid)
                let
                    reel-state $ unsafe-coerce reel 'cumulo-reel.core/ReelState
                    db $ :db reel-state
                    records $ :records reel-state
                    session $ get-in db ([] :sessions sid)
                    old-store $ or (get @*client-caches sid) nil
                    new-store $ twig-container db session records
                    changes $ diff-twig old-store new-store
                      {} $ :key :id
                  ; when config/dev? $ println "|Changes for" sid |: changes (count records)
                  if
                    not= changes $ []
                    do
                      wss-send! sid $ format-cirru-edn
                        {} (:kind :patch) (:data changes)
                      swap! *client-caches assoc sid new-store
              finish-twig-frame!
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.server $ :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel reel-schema
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            recollect.memo :refer $ begin-twig-frame! finish-twig-frame!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval
            calcit.std.date :refer $ Date get-time! extract-time
            calcit.std.path :refer $ join-path
    'app.style $ %{} 'FileEntry
      :defs $ {}
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'Dynamic
        'title $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def title $ {} (:font-family ui/font-fancy) (:font-weight 300) (:font-size 24)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.style $ :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-container (db session records)
              let
                  db-map $ unsafe-coerce db 'Map
                  session-map $ unsafe-coerce
                    option:unwrap-or session $ {}
                    , 'Map
                  user-id $ &map:get session-map :user-id
                  logged-in? $ some? user-id
                  router $ unsafe-coerce (&map:get session-map :router) 'Map
                  base-data $ {} (:logged-in? logged-in?) (:session session-map)
                    :reel-length $ count records
                  date $ &map:get session-map :date
                merge base-data $ if logged-in?
                  let
                      user $ unsafe-coerce
                        option:unwrap-or
                          get-in db-map $ [] :users user-id
                          {}
                        , 'Map
                    {}
                      :user $ twig-user user
                      :router $ assoc router :data
                        case-default (&map:get router :name) ({})
                          :home $ {}
                            :plan $ &map:get user :plan
                            :operations $ when (some? date)
                              option:unwrap-or
                                get-in user $ [] :days date
                                {}
                          :plan $ &map:get user :plan
                          :history $ {}
                            :plan $ &map:get user :plan
                            :days $ &map:get user :days
                          :profile $ twig-members (&map:get db-map :sessions) (&map:get db-map :users)
                      :count $ count (&map:get db-map :sessions)
                      :color $ rand-hex-color!
                  {}
          :examples $ []
          :schema $ :: 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-members (sessions users)
              -> sessions (.to-list)
                map $ fn (pair)
                  let[] (k session) pair $ [] k
                    option:unwrap-or
                      get-in users $ []
                        &map:get (unsafe-coerce session 'Map) :user-id
                        , :name
                      , nil
                pairs-map
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.container $ :require
            [] app.twig.user :refer $ [] twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {}
        'twig-user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-user (user)
              -> user (dissoc :password) (dissoc :plan) (dissoc :days)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.user $ :require
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (db op sid op-id op-time)
              match op
                (:session/connect op-data) (session/connect db op-data sid op-id op-time)
                (:session/disconnect op-data) (session/disconnect db op-data sid op-id op-time)
                (:user/log-in op-data) (user/log-in db op-data sid op-id op-time)
                (:user/sign-up op-data) (user/sign-up db op-data sid op-id op-time)
                (:user/log-out op-data) (user/log-out db op-data sid op-id op-time)
                (:session/remove-message op-data) (session/remove-message db op-data sid op-id op-time)
                (:session/local-date op-data) (session/local-date db op-data sid op-id op-time)
                (:router/change op-data) (router/change db op-data sid op-id op-time)
                (:plan/create op-data) (plan/create db op-data sid op-id op-time)
                (:plan/update-text op-data) (plan/update-text db op-data sid op-id op-time)
                (:plan/remove-one op-data) (plan/remove-one db op-data sid op-id op-time)
                (:plan/reuse op-data) (plan/reuse db op-data sid op-id op-time)
                (:plan/move op-data) (plan/move db op-data sid op-id op-time)
                (:operation/toggle-task op-data) (operation/toggle-task db op-data sid op-id op-time)
                _ $ do (println "|Unknown op:" op) db
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.updater.plan :as plan) ([] app.updater.operation :as operation)
    'app.updater.operation $ %{} 'FileEntry
      :defs $ {}
        'toggle-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn toggle-task (db op-data sid op-id op-time)
              let
                  session $ unsafe-coerce
                    option:unwrap-or
                      get-in db $ [] :sessions sid
                      {}
                    , 'Map
                  user-id $ &map:get session :user-id
                  path $ [] :users user-id :days (&map:get session :date) op-data :done?
                assoc-in db path $ not
                  option:unwrap-or (get-in db path) false
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.updater.operation)
    'app.updater.plan $ %{} 'FileEntry
      :defs $ {}
        'create $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn create (db op-data sid op-id op-time)
              let
                  session $ unsafe-coerce
                    option:unwrap-or
                      get-in db $ [] :sessions sid
                      {}
                    , 'Map
                  user-id $ &map:get session :user-id
                update-in db ([] :users user-id :plan)
                  fn (plan)
                    let
                        plan-map $ unsafe-coerce
                          option:unwrap-or plan $ {}
                          , 'Map
                        new-key $ key-append plan-map
                      assoc plan-map new-key $ merge (unsafe-coerce schema/task 'Map)
                        {} (:id op-id) (:time op-time) (:text op-data)
          :examples $ []
          :schema $ :: 'Dynamic
        'move $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn move (db op-data sid op-id op-time)
              let
                  user-id $ option:unwrap
                    get-in db $ [] :sessions sid :user-id
                  op-map $ unsafe-coerce op-data 'Map
                  from-id $ &map:get op-map :from
                  to-id $ &map:get op-map :to
                update-in db ([] :users user-id :plan)
                  fn (plan)
                    let
                        plan-map $ unsafe-coerce
                          option:unwrap-or plan $ {}
                          , 'Map
                        new-key $ if
                          = -1 $ &compare to-id from-id
                          key-before plan-map to-id
                          key-after plan-map to-id
                      -> plan-map
                        assoc new-key $ option:unwrap (get plan-map from-id)
                        dissoc from-id
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-one (db op-data sid op-id op-time)
              let
                  sort-id op-data
                  user-id $ get-in db ([] :sessions sid :user-id)
                assoc-in db ([] :users user-id :plan sort-id :deleted?) true
          :examples $ []
          :schema $ :: 'Dynamic
        'reuse $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reuse (db op-data sid op-id op-time)
              let
                  sort-id op-data
                  user-id $ get-in db ([] :sessions sid :user-id)
                assoc-in db ([] :users user-id :plan sort-id :deleted?) false
          :examples $ []
          :schema $ :: 'Dynamic
        'update-text $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn update-text (db op-data sid op-id op-time)
              let
                  op-map $ unsafe-coerce op-data 'Map
                  sort-id $ &map:get op-map :id
                  text $ &map:get op-map :text
                  user-id $ option:unwrap
                    get-in db $ [] :sessions sid :user-id
                update-in db ([] :users user-id :plan sort-id)
                  fn (task)
                    ->
                      option:unwrap-or task $ {}
                      assoc :text text
                      assoc :time op-time
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.plan $ :require ([] app.schema :as schema)
            [] bisection-key.util :refer $ [] key-append key-before key-after
    'app.updater.router $ %{} 'FileEntry
      :defs $ {}
        'change $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn change (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.updater.router)
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid)
                merge schema/session $ {} (:id sid)
          :examples $ []
          :schema $ :: 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn disconnect (db op-data sid op-id op-time)
              update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Dynamic
        'local-date $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn local-date (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :date) op-data
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-message (db op-data sid op-id op-time)
              update-in db ([] :sessions sid :messages)
                fn (messages)
                  dissoc
                    option:unwrap-or messages $ {}
                    &map:get (unsafe-coerce op-data 'Map) :id
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.session $ :require ([] app.schema :as schema)
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'as-user-map $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn as-user-map (user) (unsafe-coerce user 'Map)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Dynamic
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-in (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ -> (&map:get db :users) (vals) (.to-list)
                    find $ fn (user)
                      = username $ &map:get (as-user-map user) :name
                update-in db ([] :sessions sid)
                  fn (session)
                    if (option:some? maybe-user)
                      if
                        = (md5 password)
                          &map:get
                            as-user-map $ option:unwrap maybe-user
                            , :password
                        assoc
                          option:unwrap-or session $ {}
                          , :user-id $ &map:get
                            as-user-map $ option:unwrap maybe-user
                            , :id
                        update
                          option:unwrap-or session $ {}
                          , :messages $ fn (messages)
                            assoc
                              option:unwrap-or messages $ {}
                              , op-id $ {} (:id op-id)
                                :text $ str "|Wrong password for " username
                      update
                        option:unwrap-or session $ {}
                        , :messages $ fn (messages)
                          assoc
                            option:unwrap-or messages $ {}
                            , op-id $ {} (:id op-id)
                              :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-out (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Dynamic
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sign-up (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ find
                    -> (&map:get db :users) vals .to-list
                    fn (user)
                      = username $ &map:get (as-user-map user) :name
                if (option:some? maybe-user)
                  update-in db ([] :sessions sid :messages)
                    fn (messages)
                      assoc
                        option:unwrap-or messages $ {}
                        , op-id $ {} (:id op-id)
                          :text $ str "|Name is taken: " username
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.user $ :require
            calcit.std.hash :refer $ md5
            [] app.schema :as schema
    'app.util $ %{} 'FileEntry
      :defs $ {}
        'get-date $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-date () $ .format (dayjs) |YYYY-MM-DD
          :examples $ []
          :schema $ :: 'Dynamic
        'get-shifted-date $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-shifted-date () $ -> (dayjs) (.subtract 3 |hours) (.format |YYYY-MM-DD)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.util $ :require ([] |dayjs :default dayjs)
