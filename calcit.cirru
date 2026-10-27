
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |bisection-key/ |alerts.calcit/ |respo-feather.calcit/
      :type-slots $ {} $ :dispatch-op |app.schema/Op
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |bisection-key/ |calcit.std/ |calcit-wss/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *states
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store nil
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        'ParsedUrlHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ParsedUrlHost (:query 'app.client/QueryHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'QueryHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait QueryHost
            :host $ :: 'JsNullish 'String
            :port $ :: 'JsNullish 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! ()
            let
                location $ js-cast js/location 'js-ffi.browser/LocationHost
                url-obj $ js-cast
                  url-parse (.-href location) true
                  , 'app.client/ParsedUrlHost
                query $ .-query url-obj
                raw-host $ .-host query
                raw-port $ .-port query
                host $ if (js-present? raw-host) (decode-map-as raw-host 'String) (.-hostname location)
                port $ if (js-present? raw-port) (decode-map-as raw-port 'String)
                  str $ app.schema/map-get config/site :port
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event)
                    dispatch! $ schema/Op :session/local-date $ get-shifted-date
                    simulate-login!
                  :on-close $ fn (event) (reset! *store nil) (js/console.error "|Lost connection!")
                  :on-data on-server-data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'ws-edn.client/WsClient)
            :args $ []
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            match op
              (:states cursor s)
                reset! *states $ update-states @*states
                  decode-map-as cursor $ :: 'List 'Dynamic
                  , s
              (:effect/connect) (connect!)
              _ $ let
                  op-tag $ &enum:nth op 0
                  op-data $ if
                    > (&enum:count op) 1
                    &enum:nth op 1
                    , nil
                when config/dev? $ println |Dispatch op-tag op-data
                ws-send! $ {} (:kind :op) (:op op-tag) (:data op-data)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.schema/Op
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect!
            add-watch! *store :changes $ fn (store prev) (render-app!)
            add-watch! *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn ()
              when (nil? @*store) (connect!)
              , &unit
            println "|App started!"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            respo.ffi.browser/narrow-element $ option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'respo.dom/DomElement
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            match (app.schema/map-get data :kind)
              :patch $ let
                  changes $ decode-changes $ app.schema/map-get data :data
                when config/dev? $ js/console.log |Changes $ to-js-data changes
                reset! *store $ patch-twig @*store changes
              _ $ println "|unknown server data kind:" data
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              or (non-nil? client-errors) (non-nil? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch! *store :changes) (remove-watch! *states :changes) (clear-cache!) (render-app!)
                add-watch! *store :changes $ fn (store prev) (render-app!)
                add-watch! *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target
              comp-container
                app.schema/as-tag-map $ app.schema/map-get @*states :states
                , @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            let
                raw $ js/localStorage.getItem $ app.schema/map-string config/site :storage-key
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! $ schema/Op :user/log-in $ parse-cirru-edn (decode-map-as raw 'String)
                println "|Found no storage."
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ patch-twig
            recollect.schema :refer $ decode-changes
            cumulo-util.core :refer $ on-page-touch
            |url-parse :default url-parse
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
            app.util :refer $ get-shifted-date
            js-ffi.browser :refer $ query-selector
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states store)
            let
                store-map $ app.schema/as-tag-map store
                session $ app.schema/as-tag-map $ app.schema/map-get store-map :session
                router $ app.schema/as-tag-map $ app.schema/map-get store-map :router
                router-data $ app.schema/as-map $ app.schema/map-get router :data
              if (nil? store) (comp-offline)
                div
                  {} $ :style $ merge ui/global ui/fullscreen ui/column
                  comp-navigation
                    decode-map-as
                      or (app.schema/map-get store-map :logged-in?) false
                      , 'Bool
                    decode-map-as
                      or (app.schema/map-get store-map :count) 0
                      , 'Number
                    app.schema/as-tag-map $ app.schema/map-get session :router
                  div
                    {} $ :style $ merge ui/flex ui/column
                      {} (:overflow :auto) (:align-items :center) (:padding 16) (:padding-bottom 200)
                    if (app.schema/map-get store-map :logged-in?)
                      match (app.schema/map-get router :name)
                        :home $ comp-today (app.schema/map-string session :date) (app.schema/map-get router-data :plan)
                          or (app.schema/map-get router-data :operations) ({})
                        :plan $ comp-plan states router-data
                        :profile $ comp-profile (app.schema/map-get store-map :user) router-data
                        :history $ comp-history (app.schema/map-get router-data :plan) (app.schema/map-get router-data :days)
                        _ $ <> $ str router
                      comp-login states
                  comp-status-color $ app.schema/map-string store-map :color
                  when dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  comp-messages
                    decode-map-as
                      or (app.schema/map-get session :messages) ({})
                      :: 'Map 'String 'Dynamic
                    {}
                    fn (info d!)
                      d! $ :: :session/remove-message info
                  when dev? $ comp-reel
                    decode-map-as
                      or (app.schema/map-get store-map :reel-length) 0
                      , 'Number
                    {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic
            :features $ #{} :js-ffi
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/center
              span
                {}
                  :style $ {} $ :cursor :pointer
                  :on-click $ fn (e d!)
                    d! $ :: :effect/connect
                <> "|Socket broken! Click to retry." $ {} (:font-family ui/font-fancy) (:font-weight 100) (:font-size 32)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              {} (:width 16) (:height 16) (:position :absolute) (:top 60) (:right 8) (:background-color color) (:border-radius |8px) (:opacity 0.8)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-body
            {} $ :padding "|8px 16px"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
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
          :code $ quote $ defcomp comp-history (plan days)
            div
              {} $ :style $ merge ui/column
                {} $ :width |60%
              div
                {} $ :style $ merge style/title ({})
                <> |History
              list->
                {} $ :style $ merge ui/flex
                  {} $ :padding-bottom 160
                -> (app.schema/as-map days) (&map:to-list)
                  sort $ fn (date-x date-y)
                    &compare
                      str $ .unwrap-or (first date-y) |1970-01-01
                      str $ .unwrap-or (first date-x) |1970-01-01
                  map $ fn (pair)
                    let[] (date operations) pair $ [] date $ comp-records plan (str date) operations
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'comp-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-records (plan date operations)
            div
              {} $ :style $ {} (:padding "|8px 0")
              div ({}) (<> date)
              list->
                {} $ :style $ {} (:padding-left 16)
                -> (app.schema/as-map operations) (&map:to-list)
                  map $ fn (pair)
                    let[] (task-id info) pair $ let
                        found $ find
                          -> (app.schema/as-map plan) (distinct-values) (&set:to-list)
                          fn (task)
                            = task-id $ app.schema/map-get task :id
                      [] task-id $ div ({})
                        match found
                          (:some task)
                            <> (app.schema/map-string task :text)
                              if
                                or (app.schema/map-get info :done?) false
                                {} $ :color $ hsl 0 0 20
                                {} $ :color $ hsl 0 0 80
                          _ $ <> $ str task-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'String 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.history
          :require
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
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ decode-map-as
                  or (app.schema/map-get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ app.schema/as-tag-map $ or (app.schema/map-get states :data) initial-state
              div
                {} $ :style $ merge ui/flex ui/center
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ app.schema/map-string state :username
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! $ :: :states cursor $ assoc state :username (app.schema/map-string e :value)
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ app.schema/map-string state :password
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! $ :: :states cursor $ assoc state :password (app.schema/map-string e :value)
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit (app.schema/map-string state :username) (app.schema/map-string state :password) true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit (app.schema/map-string state :username) (app.schema/map-string state :password) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state
            {} (:username |) (:password |)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            dispatch-fn (e dispatch!)
              dispatch! $ if signup?
                app.schema/Op :user/sign-up $ [] username password
                app.schema/Op :user/log-in $ [] username password
              .setItem js/localStorage (app.schema/map-string config/site :storage-key)
                format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/EventHandler)
            :args $ [] 'String 'String 'Bool
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            [] respo.core :refer $ [] defcomp <> div input button span dispatch-fn
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.style :as style
            [] app.config :as config
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {}
        'comp-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-entry (page title focused?)
            div
              {}
                :on-click $ fn (e d!)
                  d! $ :: :router/change $ {} (:name page)
                :style $ if focused?
                  {} (:cursor :pointer) (:font-weight 500)
                  {} $ :cursor :pointer
              <> title
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag 'String 'Bool
            :features $ #{} :js-ffi
        'comp-navigation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members router)
            div
              {} $ :style $ merge ui/row-center
                {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " $ hsl 0 0 0 (Option :some 0.1)
                  :font-family ui/font-fancy
                  :font-weight 100
                  :flex-shrink 0
              div
                {} $ :style $ merge ui/row-parted
                  {} (:width |72%) (:margin :auto)
                div
                  {} $ :style ui/row
                  comp-entry :home |Everyday $ = :home $ app.schema/map-get router :name
                  =< 16 nil
                  comp-entry :plan |Plan $ = :plan $ app.schema/map-get router :name
                  =< 16 nil
                  comp-entry :history |History $ = :history $ app.schema/map-get router :name
                div
                  {}
                    :style $ {} $ :cursor |pointer
                    :on-click $ fn (e d!)
                      d! $ :: :router/change $ {} (:name :profile)
                  <> $ if logged-in? |Me |Guest
                  =< 8 nil
                  <> $ str count-members
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool 'Number $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> span div
    'app.comp.plan $ %{} 'FileEntry
      :defs $ {}
        'DataTransferHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DataTransferHost (:dropEffect 'String)
            .setData! $ :: 'Fn $ {}
              :args $ [] 'app.comp.plan/DataTransferHost 'String 'String
              :return 'Unit
            .getData! $ :: 'Fn $ {}
              :args $ [] 'app.comp.plan/DataTransferHost 'String
              :return 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:getData! |getData) (:setData! |setData)
            :writable $ #{} :dropEffect
          :schema $ :: 'Trait
        'DragEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DragEventHost (:dataTransfer 'app.comp.plan/DataTransferHost)
            .preventDefault! $ :: 'Fn $ {}
              :args $ [] 'app.comp.plan/DragEventHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :preventDefault! |preventDefault
          :schema $ :: 'Trait
        'comp-deleted-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-deleted-task (sort-key task)
            div
              {} $ :style $ merge ui/row-parted
                {}
                  :background-color $ hsl 0 0 96
                  :margin-bottom 8
                  :padding 8
              div
                {} $ :style ui/flex
                <> $ app.schema/map-string task :text
              span
                {}
                  :on-click $ fn (e d!)
                    d! $ :: :plan/reuse sort-key
                  :style $ {} $ :cursor :pointer
                comp-i :shuffle 14 $ hsl 200 80 70
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'Dynamic
            :features $ #{} :js-ffi
        'comp-plan $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-plan (states plan)
            let
                cursor $ decode-map-as
                  or (app.schema/map-get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ app.schema/as-tag-map $ or (app.schema/map-get states :data)
                  {} $ :show-deprecated? false
                create-plugin $ use-prompt (>> states :create)
                  {} (:title "|A task") (:initial |)
                plan-pairs $ -> (app.schema/as-map plan) (&map:to-list)
                  map $ fn (pair)
                    let[] (k task) pair $ [] (str k) task
                  sort-by $ fn (pair)
                    let[] (k _task) pair k
                active-plans $ -> plan-pairs $ filter
                  fn (pair)
                    let[] (_k task) pair $ not $ deleted-task? task
                deleted-plans $ -> plan-pairs $ filter
                  fn (pair)
                    let[] (_k task) pair $ deleted-task? task
              div
                {} $ :style $ {} (:width |60%)
                div ({})
                  div
                    {} $ :style $ merge ui/row style/title ({})
                    <> |Plan
                    =< 16 nil
                    button
                      {}
                        :style $ merge ui/button $ {} (:height 32) (:vertical-align :middle)
                        :on-click $ dispatch-fn (e d!)
                          .show create-plugin d! $ fn (text)
                            when
                              not $ blank? $ str text
                              d! $ :: :plan/create text
                      <> |Add
                  list->
                    {} $ :style $ {}
                    -> active-plans $ map $ fn (pair)
                      let[] (k task) pair $ [] k $ div ({})
                        comp-task
                          decode-map-as (>> states k) (:: 'Map 'Tag 'Dynamic)
                          decode-map-as k 'String
                          , task
                =< nil 80
                if
                  not $ empty? deleted-plans
                  div ({})
                    div
                      {} $ :style $ merge style/title
                        {} $ :color $ hsl 0 0 70
                      <> |Deleted
                      =< 8 nil
                      comp-icon :eye
                        {} (:font-size 14)
                          :color $ hsl 200 80 70
                          :cursor :pointer
                        fn (e d!)
                          d! $ :: :states cursor $ update state :show-deprecated? not
                    if
                      or (app.schema/map-get state :show-deprecated?) false
                      list->
                        {} $ :style $ {}
                        -> deleted-plans $ map $ fn (pair)
                          let[] (k task) pair $ [] k $ div ({})
                            comp-deleted-task (str k) task
                      <>
                        str "|(" (count deleted-plans) "|) tasks deprecated."
                        {} (:font-family ui/font-fancy)
                          :color $ hsl 0 0 50
                .render create-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic
            :features $ #{} :js-ffi
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-task (states sort-id task)
            let
                update-plugin $ use-prompt (>> states :update)
                  {} (:text "|New task:")
                    :initial $ app.schema/map-string task :text
                remove-plugin $ use-confirm (>> states :remove)
                  {} $ :text "|Sure to remove from everyday task?"
              div
                {}
                  :style $ merge ui/row-parted $ {}
                    :background-color $ hsl 0 0 96
                    :margin "|0 8px 8px 0"
                    :padding 8
                  :draggable true
                  :on-dragstart $ fn (e d!)
                    let
                        data-transfer $ .-dataTransfer $ drag-event e
                      .setData! data-transfer |text/plain sort-id
                  :on-dragover $ fn (e d!)
                    let
                        event $ drag-event e
                        data-transfer $ .-dataTransfer event
                      .preventDefault! event
                      set! (.-dropEffect data-transfer) |move
                  :on-drop $ fn (e d!)
                    let
                        data-transfer $ .-dataTransfer $ drag-event e
                        drag-id $ .getData! data-transfer |text
                        drop-id sort-id
                      when (not= drag-id drop-id)
                        d! $ :: :plan/move $ {} (:from drag-id) (:to drop-id)
                <> $ app.schema/map-string task :text
                div
                  {} $ :style ui/row
                  comp-icon :edit
                    {}
                      :color $ hsl 200 80 70
                      :font-size 14
                      :cursor :pointer
                    dispatch-fn (e d!)
                      .show update-plugin d! $ fn (result)
                        when
                          not $ blank? $ str result
                          d! $ :: :plan/update-text $ {} (:id sort-id) (:text result)
                  =< 16 nil
                  comp-icon :eye-off
                    {}
                      :color $ hsl 200 80 70
                      :font-size 14
                      :cursor :pointer
                    fn (e d!)
                      hint-fn $ {}
                        :args $ [] 'Dynamic $ :: 'Fn
                          {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                      .show remove-plugin d! $ fn () $ d! (:: :plan/remove-one sort-id)
                  .render update-plugin
                  .render remove-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'String 'Dynamic
            :features $ #{} :js-ffi
        'deleted-task? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn deleted-task? (task)
            = true $ app.schema/map-get task :deleted?
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
        'drag-event $ %{} 'CodeEntry
          :doc "|Read the native drag event from a Respo event map."
          :code $ quote $ defn drag-event (e)
            js-cast
              .unwrap $ get (app.schema/as-tag-map e) :event
              , 'app.comp.plan/DragEventHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.plan/DragEventHost)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'sort-by $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sort-by (xs f)
            sort xs $ fn (a b)
              &compare (f a) (f b)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'T)
              :: 'Fn $ {} (:return 'Dynamic)
                :args $ [] 'T
            :generics $ [] 'T
            :return $ :: 'List 'T
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.plan
          :require
            [] respo.core :refer $ [] defcomp <> div list-> >> input button span dispatch-fn
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.style :as style
            [] respo-ui.core :refer $ [] hsl
            [] respo-alerts.core :refer $ [] use-confirm use-prompt
            [] feather.core :refer $ [] comp-i comp-icon
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {} $ 'comp-profile
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} (:padding 16) (:width |60%)
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ app.schema/map-string user :name
              =< nil 16
              div
                {} $ :style ui/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :style ui/row
                  -> (app.schema/as-map members) (&map:to-list)
                    map $ fn (pair)
                      let[] (k username) pair $ [] k $ div
                        {} $ :style $ {} (:padding "|0 8px")
                          :border $ str "|1px solid " $ hsl 0 0 80
                          :border-radius |16px
                          :margin "|0 4px"
                        <> $ str username
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      js/location.replace $ str js/location.origin |?time= $ .now js/Date
                  <> |Refresh
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      dispatch! $ :: :user/log-out
                      .removeItem js/localStorage $ app.schema/map-string config/site :storage-key
                  <> "|Log out"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
    'app.comp.today $ %{} 'FileEntry
      :defs $ {}
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-task (task operation)
            div
              {} $ :style $ merge ui/row
                {} (:align-items :center) (:margin 8)
                  :background-color $ hsl 0 0 96
              div $ {}
                :style $ {} (:width 32) (:height 32)
                  :background-color $ if (task-done? operation) (hsl 200 80 80) (hsl 0 0 90)
                  :cursor :pointer
                :on-click $ fn (e d!)
                  d! $ :: :operation/toggle-task $ app.schema/map-get task :id
              =< 8 nil
              <> $ app.schema/map-string task :text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'comp-today $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-today (date plan operations)
            let
                tasks $ -> (app.schema/as-map plan) (&map:to-list)
                  map $ fn (pair)
                    let[] (sort-id task) pair $ [] (str sort-id) task $ task-operation operations task
                  filter $ fn (entry)
                    let[] (_sort-id task _operation) entry $ not $ = true (app.schema/map-get task :deleted?)
                todo-tasks $ -> tasks $ filter
                  fn (entry)
                    let[] (_sort-id _task operation) entry $ not $ task-done? operation
                done-tasks $ -> tasks $ filter
                  fn (entry)
                    let[] (_sort-id _task operation) entry $ task-done? operation
              div
                {} $ :style $ {} (:width |60%)
                div
                  {} $ :style style/title
                  <> $ str "|Today(" date "|)"
                div
                  {} $ :style $ merge ui/column
                  div ({})
                    div
                      {} $ :style style/title
                      <> |Todo
                    list-> ({})
                      -> todo-tasks $ map $ fn (entry)
                        let[] (sort-id task operation) entry $ [] sort-id $ comp-task task operation
                  div
                    {} $ :style $ {}
                    div
                      {} $ :style style/title
                      <> |Done
                    if (empty? done-tasks)
                      <> |Nothing. $ {} (:margin-left 8) (:margin-bottom 16) (:font-family ui/font-fancy)
                        :color $ hsl 0 0 60
                      list-> ({})
                        -> done-tasks $ map $ fn (entry)
                          let[] (sort-id task operation) entry $ [] sort-id $ comp-task task operation
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'task-done? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn task-done? (operation)
            = true $ app.schema/map-get operation :done?
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
        'task-operation $ %{} 'CodeEntry
          :doc "|Find today's operation of a task, defaulting to an unfinished operation."
          :code $ quote $ defn task-operation (operations task)
            or
              app.schema/map-get operations $ app.schema/map-get task :id
              , schema/operation
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.today
          :require
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
          :code $ quote $ defn cdn? ()
            cond
                exists? js/window
                , false
              (exists? js/process)
                let
                    raw js/process.env.cdn
                  if (js-present? raw)
                    = |true $ expect-string |process.env.cdn raw
                    , false
              true false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:port 11007) (:title |Everyday) (:icon |http://cdn.tiye.me/logo/topix.png) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/everyday/) (:theme |#eeeeff) (:storage-key |everyday) (:storage-file |storage.cirru)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ js-ffi.contract :refer $ [] expect-string
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry
          :doc "|Client dispatch operations. Business ops are sent to the server as `{} (:op tag) (:data payload)`; payloads stay open EDN data."
          :code $ quote $ defenum Op (:states 'Dynamic 'Dynamic) (:effect/connect) (:effect/persist) (:reel/reset) (:reel/merge) (:session/local-date 'String) (:session/remove-message 'Dynamic) (:user/log-in 'Dynamic) (:user/sign-up 'Dynamic) (:user/log-out) (:router/change 'Dynamic) (:plan/create 'Dynamic) (:plan/update-text 'Dynamic) (:plan/remove-one 'Dynamic) (:plan/reuse 'Dynamic) (:plan/move 'Dynamic) (:operation/toggle-task 'Dynamic)
          :examples $ []
          :schema $ :: 'EnumDef
        'as-map $ %{} 'CodeEntry
          :doc "|Decode open EDN map data, treating nil as an empty map."
          :code $ quote $ defn as-map (data)
            decode-map-as
              if (nil? data) ({}) data
              :: 'Map 'Dynamic 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Dynamic 'Dynamic
        'as-tag-map $ %{} 'CodeEntry
          :doc "|Decode open EDN map data with Tag keys, treating nil as an empty map."
          :code $ quote $ defn as-tag-map (data)
            decode-map-as
              if (nil? data) ({}) data
              :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            {}
              :sessions $ {}
              :users $ {}
              :date nil
          :examples $ []
          :schema $ :: 'Dynamic
        'get-in! $ %{} 'CodeEntry
          :doc "|Read a path that must exist in open EDN data, raising with the path when it is missing."
          :code $ quote $ defn get-in! (data path)
            match (get-in data path)
              (:ok value) value
              (:err _)
                raise $ str "|missing path: " path
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic $ :: 'List 'Dynamic
        'map-get $ %{} 'CodeEntry
          :doc "|Read a field of open EDN map data, giving nil when the key is absent; wire and storage maps keep nil for missing fields."
          :code $ quote $ defn map-get (data field)
            if (nil? data) nil $ match
              &map:get
                decode-map-as data $ :: 'Map 'Dynamic 'Dynamic
                , field
              (:some value) value
              (:none) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic
        'map-string $ %{} 'CodeEntry
          :doc "|Read a String field of open EDN map data, giving an empty String when it is absent or nil."
          :code $ quote $ defn map-string (data field)
            decode-map-as
              or (map-get data field) |
              , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic 'Dynamic
        'notification $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def notification
            {} (:id nil) (:kind nil) (:text nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'operation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def operation
            {} (:done? false) (:time 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def page
            {} (:id nil) (:title |) (:time nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
              :date nil
          :examples $ []
          :schema $ :: 'Dynamic
        'task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def task
            {} (:id nil) (:text |) (:time 0) (:deleted? false)
          :examples $ []
          :schema $ :: 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
              :plan $ {}
              :days $ {}
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db
            if (path-exists? storage-file)
              do (println "|Found local EDN data")
                merge schema/database $ load-db storage-file
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState (:: 'Map 'Tag 'Dynamic)
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            cumulo-reel.core/ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState (:: 'Map 'Tag 'Dynamic)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op op-data sid)
            let
                op-id $ generate-id!
                op-time $ get-timestamp $ get-time!
              if config/dev? $ println |Dispatch! (str op) op-data sid
              if (= op :effect/persist) (persist-db!)
                reset! *reel $ reel-reducer @*reel updater (:: op op-data) sid op-id op-time config/dev?
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Tag 'Dynamic 'Number
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ app.schema/map-get now :month
                str (app.schema/map-get now :day) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'load-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-db (path)
            app.schema/as-tag-map $ parse-cirru-edn $ read-file path
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                fallback $ decode-map-as (app.schema/map-get config/site :port) 'Number
                port $ match (get-env |port)
                  (:some raw)
                    .unwrap-or (parse-float raw) fallback
                  (:none) fallback
              run-server! port
              println $ str "|Server started on port: " port
            ; "|init it before doing multi-threading"
            identity @*reader-reel
            calcit.std.time/set-interval! 200 $ fn () $ render-loop!
            calcit.std.time/set-interval! 600000 $ fn () $ persist-db!
            on-control-c on-exit!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ assoc (:db @*reel) :sessions ({})
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?) (raise "|reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reel $ refresh-reel @*reel @*initial-db replay-updater
            sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'replay-updater $ %{} 'CodeEntry
          :doc "|Replay recorded ops: records keep sid, op-id and op-time as open data, so decode them before calling the live updater."
          :code $ quote $ defn replay-updater (db op sid op-id op-time)
            updater db op (decode-map-as sid 'Number) (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Dynamic 'Dynamic 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve! (&{} :port port)
              fn (data)
                match data
                  (:connect sid)
                    do (dispatch! :session/connect nil sid) (println "|New client.")
                  (:message sid msg)
                    let
                        action $ parse-cirru-edn msg
                      match (app.schema/map-get action :kind)
                        :op $ dispatch!
                          decode-map-as (app.schema/map-get action :op) 'Tag
                          app.schema/map-get action :data
                          , sid
                        _ $ println "|unknown action:" action
                  (:disconnect sid)
                    do (println "|Client closed!") (dispatch! :session/disconnect nil sid)
                  _ $ println "|unknown data:" data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
            :args $ [] 'Number
            :features $ #{} :js-ffi
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            let
                configured-name $ app.schema/map-string config/site :storage-file
                storage-name $ if (blank? configured-name) |storage.cirru configured-name
              if (empty? calcit-dirname) (str calcit-dirname storage-name) (str calcit-dirname |/ storage-name)
          :examples $ []
          :schema $ :: 'String
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel) (begin-twig-frame!)
            wss-each! $ fn (sid)
              let
                  db $ :db reel
                  records $ :records reel
                  session-data $ app.schema/map-get
                    app.schema/as-map $ app.schema/map-get db :sessions
                    , sid
                  session $ if (nil? session-data) (Option :none) (Option :some session-data)
                  old-store $ .unwrap-or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                when
                  not $ empty? changes
                  wss-send! sid $ format-cirru-edn $ {} (:kind :patch) (:data changes)
                  swap! *client-caches assoc sid new-store
                , &unit
            finish-twig-frame!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'cumulo-reel.core/ReelState (:: 'Map 'Tag 'Dynamic)
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            recollect.memo :refer $ begin-twig-frame! finish-twig-frame!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval
            calcit.std.date :refer $ Date get-time! get-timestamp extract-time
            calcit.std.path :refer $ join-path
    'app.style $ %{} 'FileEntry
      :defs $ {}
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            {} (:text-decoration :underline) (:cursor :pointer)
              :color $ ui/hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'Dynamic
        'title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def title
            {} (:font-family ui/font-fancy) (:font-weight 300) (:font-size 24)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.style
          :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session records)
            let
                db-map $ app.schema/as-tag-map db
                session-map $ app.schema/as-tag-map $ .unwrap-or session nil
                user-id $ app.schema/map-get session-map :user-id
                logged-in? $ non-nil? user-id
                router $ app.schema/as-tag-map $ app.schema/map-get session-map :router
                base-data $ {} (:logged-in? logged-in?) (:session session-map)
                  :reel-length $ count records
                date $ app.schema/map-get session-map :date
              if logged-in?
                let
                    user $ app.schema/as-tag-map $ app.schema/map-get
                      app.schema/as-map $ app.schema/map-get db-map :users
                      , user-id
                  merge base-data $ {}
                    :user $ twig-user user
                    :router $ assoc router :data $ match (app.schema/map-get router :name)
                      :home $ {}
                        :plan $ app.schema/map-get user :plan
                        :operations $ if (nil? date) nil $ or
                          app.schema/map-get
                            app.schema/as-map $ app.schema/map-get user :days
                            , date
                          {}
                      :plan $ app.schema/map-get user :plan
                      :history $ {}
                        :plan $ app.schema/map-get user :plan
                        :days $ app.schema/map-get user :days
                      :profile $ twig-members (app.schema/map-get db-map :sessions) (app.schema/map-get db-map :users)
                      _ $ {}
                    :count $ count $ app.schema/as-map (app.schema/map-get db-map :sessions)
                    :color $ rand-hex-color!
                , base-data
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic (:: 'Option 'Dynamic) (:: 'List 'Dynamic)
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            let
                users-map $ app.schema/as-map users
              -> (app.schema/as-map sessions) (&map:to-list)
                map $ fn (pair)
                  let[] (k session) pair $ [] k $ app.schema/map-get
                    app.schema/map-get users-map $ app.schema/map-get session :user-id
                    , :name
                pairs-map
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic 'Dynamic
            :return $ :: 'Map 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            [] app.twig.user :refer $ [] twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            -> user (dissoc :password) (dissoc :plan) (dissoc :days)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user (:require)
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
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
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.updater.plan :as plan) ([] app.updater.operation :as operation)
    'app.updater.operation $ %{} 'FileEntry
      :defs $ {} $ 'toggle-task
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn toggle-task (db op-data sid op-id op-time)
            let
                session $ app.schema/as-tag-map $ app.schema/map-get
                  app.schema/as-map $ app.schema/map-get db :sessions
                  , sid
                user-id $ app.schema/map-get session :user-id
                path $ [] :users user-id :days (app.schema/map-get session :date) op-data :done?
              app.schema/as-tag-map $ assoc-in db path $ not
                = true $ .unwrap-or (get-in db path) false
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.operation
    'app.updater.plan $ %{} 'FileEntry
      :defs $ {}
        'create $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create (db op-data sid op-id op-time)
            let
                user-id $ app.schema/get-in! db $ [] :sessions sid :user-id
              app.schema/as-tag-map $ update-in db ([] :users user-id :plan)
                fn (plan)
                  let
                      plan-map $ decode-map-as
                        .unwrap-or plan $ {}
                        :: 'Map 'String 'Dynamic
                      new-key $ key-append plan-map
                    assoc plan-map new-key $ merge (app.schema/as-tag-map schema/task)
                      {} (:id op-id) (:time op-time) (:text op-data)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'move $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn move (db op-data sid op-id op-time)
            let
                user-id $ app.schema/get-in! db $ [] :sessions sid :user-id
                from-id $ app.schema/map-string op-data :from
                to-id $ app.schema/map-string op-data :to
              app.schema/as-tag-map $ update-in db ([] :users user-id :plan)
                fn (plan)
                  let
                      plan-map $ decode-map-as
                        .unwrap-or plan $ {}
                        :: 'Map 'String 'Dynamic
                      new-key $ if
                        = -1 $ &compare to-id from-id
                        key-before plan-map to-id
                        key-after plan-map to-id
                    -> plan-map
                      assoc new-key $ .unwrap $ get plan-map from-id
                      dissoc from-id
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-one (db op-data sid op-id op-time)
            let
                sort-id op-data
                user-id $ app.schema/get-in! db $ [] :sessions sid :user-id
              app.schema/as-tag-map $ assoc-in db ([] :users user-id :plan sort-id :deleted?) true
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'reuse $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reuse (db op-data sid op-id op-time)
            let
                sort-id op-data
                user-id $ app.schema/get-in! db $ [] :sessions sid :user-id
              app.schema/as-tag-map $ assoc-in db ([] :users user-id :plan sort-id :deleted?) false
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'update-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-text (db op-data sid op-id op-time)
            let
                sort-id $ app.schema/map-get op-data :id
                text $ app.schema/map-get op-data :text
                user-id $ app.schema/get-in! db $ [] :sessions sid :user-id
              app.schema/as-tag-map $ update-in db ([] :users user-id :plan sort-id)
                fn (task)
                  ->
                    app.schema/as-tag-map $ .unwrap-or task nil
                    assoc :text text
                    assoc :time op-time
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.plan
          :require ([] app.schema :as schema)
            [] bisection-key.util :refer $ [] key-append key-before key-after
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} $ :id sid
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db op-data sid op-id op-time)
            update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'local-date $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn local-date (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :date) op-data
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db op-data sid op-id op-time)
            app.schema/as-tag-map $ update-in db ([] :sessions sid :messages)
              fn (messages)
                dissoc
                  app.schema/as-map $ .unwrap-or messages nil
                  app.schema/map-get op-data :id
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ [] app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'add-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-message (session op-id text)
            assoc session :messages $ assoc
              app.schema/as-map $ app.schema/map-get session :messages
              , op-id $ {} (:id op-id) (:text text)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'String 'String
            :return $ :: 'Map 'Tag 'Dynamic
        'as-user-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-user-map (user) (app.schema/as-tag-map user)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'find-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-user (db username)
            find
              ->
                app.schema/as-map $ app.schema/map-get db :users
                distinct-values
                &set:to-list
                map app.schema/as-tag-map
              fn (user)
                hint-fn $ {}
                  :args $ [] $ :: 'Map 'Tag 'Dynamic
                  :return 'Bool
                matches-username? user username
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'String
            :return $ :: 'Option $ :: 'Map 'Tag 'Dynamic
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db op-data sid op-id op-time)
            let[] (username password)
              decode-map-as op-data $ :: 'List 'String
              let
                  maybe-user $ find-user db username
                app.schema/as-tag-map $ update-in db ([] :sessions sid)
                  fn (session)
                    let
                        session-map $ app.schema/as-tag-map $ .unwrap-or session nil
                      match maybe-user
                        (:some user)
                          if
                            = (md5 password) (app.schema/map-get user :password)
                            assoc session-map :user-id $ app.schema/map-get user :id
                            add-message session-map op-id $ str "|Wrong password for " username
                        (:none)
                          add-message session-map op-id $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'matches-username? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn matches-username? (user username)
            = username $ app.schema/map-get user :name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'String
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db op-data sid op-id op-time)
            let[] (username password)
              decode-map-as op-data $ :: 'List 'String
              match (find-user db username)
                (:some _)
                  app.schema/as-tag-map $ update-in db ([] :sessions sid)
                    fn (session)
                      add-message
                        app.schema/as-tag-map $ .unwrap-or session nil
                        , op-id $ str "|Name is taken: " username
                (:none)
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
                    app.schema/as-tag-map
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            calcit.std.hash :refer $ md5
            [] app.schema :as schema
    'app.util $ %{} 'FileEntry
      :defs $ {}
        'DayjsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DayjsHost
            .subtract! $ :: 'Fn $ {}
              :args $ [] 'app.util/DayjsHost 'Number 'String
              :return 'app.util/DayjsHost
            .format! $ :: 'Fn $ {}
              :args $ [] 'app.util/DayjsHost 'String
              :return 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:format! |format) (:subtract! |subtract)
          :schema $ :: 'Trait
        'get-date $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-date ()
            ->
              js-cast (dayjs) 'app.util/DayjsHost
              .format! |YYYY-MM-DD
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'get-shifted-date $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-shifted-date ()
            ->
              js-cast (dayjs) 'app.util/DayjsHost
              .subtract! 3 |hours
              .format! |YYYY-MM-DD
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util
          :require $ [] |dayjs :default dayjs
