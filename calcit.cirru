
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |bisection-key/ |alerts.calcit/ |respo-feather.calcit/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
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
          :schema $ quote $ Ref (Map Tag Dynamic)
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store (Option :none)
          :examples $ []
          :schema $ quote $ Ref
            Option $ Map Tag Dynamic
        'ParsedUrlHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ParsedUrlHost (:query 'app.client/QueryHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'QueryHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait QueryHost
            :host $ JsNullish String
            :port $ JsNullish String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
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
                  str $ :port config/site
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event)
                    dispatch! $ schema/Op :session/local-date $ get-shifted-date
                    simulate-login!
                  :on-close $ fn (event)
                    reset! *store $ Option :none
                    js/console.error "|Lost connection!"
                  :on-data on-server-data
          :examples $ []
          :schema $ quote $ Fn (-> ws-edn.client/WsClient) (:features :js-ffi)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            match op
              (:states cursor s)
                reset! *states $ decode-map-as (update-states @*states cursor s) (Map Tag Dynamic)
              (:ui/login-form cursor s)
                reset! *states $ decode-map-as (update-states @*states cursor s) (Map Tag Dynamic)
              (:ui/plan-visibility cursor s)
                reset! *states $ decode-map-as (update-states @*states cursor s) (Map Tag Dynamic)
              (:effect/connect) (connect!)
              _ $ let
                  op-tag $ decode-map-as (&enum:nth op 0) Tag
                match (schema/client-payload op)
                  (:some op-data)
                    do
                      when config/dev? $ if
                        contains? (#{} :user/log-in :user/sign-up) op-tag
                        println |Dispatch op-tag
                        println |Dispatch op-tag op-data
                      ws-send! $ {} (:kind :op) (:op op-tag) (:data op-data)
                  (:none)
                    do
                      when config/dev? $ println |Dispatch op-tag
                      ws-send! $ {} (:kind :op) (:op op-tag) (:data nil)
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/Op (-> Unit)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect!
            add-watch! *store :changes $ fn (store prev) (render-app!)
            add-watch! *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn ()
              when (.none? @*store) (connect!)
              , &unit
            println "|App started!"
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            respo.ffi.browser/narrow-element $ option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            match
              .unwrap-or (app.schema/map-get data :kind) :unknown
              :patch $ let
                  changes $ decode-changes $ .unwrap (app.schema/map-get data :data)
                  patched $ match @*store
                    (:some current) (patch-twig current changes)
                    (:none) (patch-twig nil changes)
                when config/dev? $ js/console.log |Changes $ to-js-data changes
                reset! *store $ Option :some $ decode-map-as patched (Map Tag Dynamic)
              _ $ println "|unknown server data kind:" data
            , &unit
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> Unit) (:features :js-ffi)
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
          :schema $ quote $ Fn (-> Unit)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ match @*store
                (:some store)
                  comp-container
                    .unwrap-or
                      option:map (get @*states :states) app.schema/as-tag-map
                      {}
                    , store
                (:none) (comp-offline)
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            let
                raw $ js/localStorage.getItem $ :storage-key config/site
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! $ schema/Op :user/log-in $ schema/read-credentials
                    parse-cirru-edn-as (decode-map-as raw String) (List String)
                println "|Found no storage."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            respo.core :refer $ render-with! clear-cache!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container comp-offline
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
          :code $ quote $ defcomp comp-container (states store-map)
            let
                session $ .unwrap-or
                  option:map (app.schema/map-get store-map :session) app.schema/as-tag-map
                  {}
                router $ .unwrap-or
                  option:map (app.schema/map-get store-map :router) app.schema/as-tag-map
                  {}
                router-data $ .unwrap-or
                  option:map (app.schema/map-get router :data) app.schema/as-map
                  {}
                page-of $ fn (route)
                  hint-fn $ Fn (Map Tag Dynamic)
                    -> $ Option app.schema/Page
                  match (get route :name)
                    (:some raw)
                      match (try-decode-map-as raw Tag)
                        (:ok name) (app.schema/read-page name)
                        (:err _) (Option :none)
                    _ $ Option :none
              div
                {} $ :style $ merge ui/global ui/fullscreen ui/column
                comp-navigation
                  decode-map-as
                    .unwrap-or (app.schema/map-get store-map :logged-in?) false
                    , 'Bool
                  decode-map-as
                    .unwrap-or (app.schema/map-get store-map :count) 0
                    , 'Number
                  page-of $ .unwrap-or
                    option:map (app.schema/map-get session :router) app.schema/as-tag-map
                    {}
                div
                  {} $ :style $ merge ui/flex ui/column
                    {} (:overflow :auto) (:align-items :center) (:padding 16) (:padding-bottom 200)
                  if
                    = (Option :some true) (app.schema/map-get store-map :logged-in?)
                    match (page-of router)
                      (:some page)
                        match page
                          (:home)
                            comp-today (app.schema/map-string session :date)
                              app.schema/read-plan $ app.schema/as-map $ .unwrap-or (app.schema/map-get router-data :plan) ({})
                              app.schema/read-completions $ app.schema/as-map $ .unwrap-or (app.schema/map-get router-data :operations) ({})
                          (:plan)
                            comp-plan states $ app.schema/read-plan router-data
                          (:profile)
                            comp-profile
                              app.schema/map-string
                                app.schema/as-map $ .unwrap-or (app.schema/map-get store-map :user) ({})
                                , :name
                              app.schema/read-profile-members router-data
                          (:history)
                            comp-history
                              app.schema/read-plan $ app.schema/as-map $ .unwrap-or (app.schema/map-get router-data :plan) ({})
                              app.schema/read-history $ app.schema/as-map $ .unwrap-or (app.schema/map-get router-data :days) ({})
                      (:none)
                        <> $ str router
                    comp-login states
                comp-status-color $ app.schema/map-string store-map :color
                if dev?
                  comp-inspect |Store store-map $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  Option :none
                comp-messages
                  decode-map-as
                    .unwrap-or (app.schema/map-get session :messages) ({})
                    Map String Dynamic
                  {}
                  fn (info d!)
                    match
                      app.schema/read-message-id $ app.schema/as-map info
                      (:some id)
                        d! $ app.schema/Op :session/remove-message id
                      (:none) &unit
                if dev?
                  comp-reel
                    decode-map-as
                      .unwrap-or (app.schema/map-get store-map :reel-length) 0
                      , Number
                    {}
                  Option :none
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (Map Tag Dynamic) (-> respo.schema/Component) (:features :js-ffi)
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/center
              span
                {}
                  :style $ {} $ :cursor :pointer
                  :on-click $ fn (e d!)
                    d! $ app.schema/Op :effect/connect
                <> "|Socket broken! Click to retry." $ {} (:font-family ui/font-fancy) (:font-weight 100) (:font-size 32)
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              {} (:width 16) (:height 16) (:position :absolute) (:top 60) (:right 8) (:background-color color) (:border-radius |8px) (:opacity 0.8)
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component)
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-body
            {} $ :padding "|8px 16px"
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div span button
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            app.comp.navigation :refer $ comp-navigation
            app.comp.profile :refer $ comp-profile
            app.comp.login :refer $ comp-login
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            app.comp.plan :refer $ comp-plan
            app.comp.today :refer $ comp-today
            app.comp.history :refer $ comp-history
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
                -> (.to-list days)
                  sort $ fn (date-x date-y)
                    &compare
                      app.schema/data-key-text $ nth date-y 0
                      app.schema/data-key-text $ nth date-x 0
                  map $ fn (pair)
                    let[] (date operations) pair $ [] (decode-map-as date respo.schema/CoordKey)
                      comp-records plan (app.schema/data-key-text date) operations
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey app.schema/TaskView)
            Map app.schema/DataKey $ Map app.schema/DataKey Bool
            -> respo.schema/Component
            :features :js-ffi
        'comp-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-records (plan date operations)
            div
              {} $ :style $ {} (:padding "|8px 0")
              div ({}) (<> date)
              list->
                {} $ :style $ {} (:padding-left 16)
                -> (.to-list operations)
                  map $ fn (pair)
                    let[] (task-id done?) pair $ let
                        found $ find (-> plan distinct-values &set:to-list)
                          fn (task)
                            = (Option :some task-id) (:id task)
                      [] (decode-map-as task-id respo.schema/CoordKey)
                        div ({})
                          match found
                            (:some task)
                              <> (:text task)
                                if done?
                                  {} $ :color $ hsl 0 0 20
                                  {} $ :color $ hsl 0 0 80
                            _ $ <> $ app.schema/data-key-text task-id
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey app.schema/TaskView) String (Map app.schema/DataKey Bool) (-> respo.schema/Component) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.history
          :require
            respo.core :refer $ defcomp <> div list-> input button span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.schema :as schema
            app.style :as style
            respo-ui.core :refer $ hsl
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ decode-map-as
                  .unwrap-or (app.schema/map-get states :cursor) ([])
                  List app.schema/DataKey
                state $ decode-map-as
                  .unwrap-or (app.schema/map-get states :data) initial-state
                  Map Tag String
              div
                {} $ :style $ merge ui/flex ui/center
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ .unwrap-or (get state :username) |
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! $ app.schema/Op :ui/login-form cursor $ assoc state :username (respo.core/event-value e)
                    space-y 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ .unwrap-or (get state :password) |
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! $ app.schema/Op :ui/login-form cursor $ assoc state :password (respo.core/event-value e)
                  space-y 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit
                        .unwrap-or (get state :username) |
                        .unwrap-or (get state :password) |
                        , true
                    space-x 8
                    span $ {} (:inner-text "|Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit
                        .unwrap-or (get state :username) |
                        .unwrap-or (get state :password) |
                        , false
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> respo.schema/Component) (:features :js-ffi)
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state
            {} (:username |) (:password |)
          :examples $ []
          :schema $ quote $ Map Tag String
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            dispatch-fn (e dispatch!)
              let
                  credentials $ app.schema/Credentials :username username :password password
                dispatch! $ if signup? (app.schema/Op :user/sign-up credentials) (app.schema/Op :user/log-in credentials)
                .setItem js/localStorage (:storage-key config/site)
                  format-cirru-edn $ app.schema/credentials->wire credentials
              , &unit
          :examples $ []
          :schema $ quote $ Fn String String Bool (-> respo.schema/EventHandler) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            respo.core :refer $ defcomp <> div input button span dispatch-fn
            respo.comp.space :refer $ space-x space-y
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.style :as style
            app.config :as config
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {}
        'comp-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-entry (page title focused?)
            div
              {}
                :on-click $ fn (e d!)
                  d! $ app.schema/Op :router/change page
                :style $ if focused?
                  {} (:cursor :pointer) (:font-weight 500)
                  {} $ :cursor :pointer
              <> title
          :examples $ []
          :schema $ quote $ Fn app.schema/Page String Bool (-> respo.schema/Component) (:features :js-ffi)
        'comp-navigation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members page)
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
                  comp-entry (app.schema/Page :home) |Everyday $ =
                    Option :some $ app.schema/Page :home
                    , page
                  space-x 16
                  comp-entry (app.schema/Page :plan) |Plan $ =
                    Option :some $ app.schema/Page :plan
                    , page
                  space-x 16
                  comp-entry (app.schema/Page :history) |History $ =
                    Option :some $ app.schema/Page :history
                    , page
                div
                  {}
                    :style $ {} $ :cursor |pointer
                    :on-click $ fn (e d!)
                      d! $ app.schema/Op :router/change $ app.schema/Page :profile
                  <> $ if logged-in? |Me |Guest
                  space-x 8
                  <> $ str count-members
          :examples $ []
          :schema $ quote $ Fn Bool Number (Option app.schema/Page) (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ space-x
            respo.core :refer $ defcomp <> span div
    'app.comp.plan $ %{} 'FileEntry
      :defs $ {}
        'DataTransferHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DataTransferHost (:dropEffect 'String)
            .setData! $ Fn app.comp.plan/DataTransferHost String String $ -> Unit
            .getData! $ Fn app.comp.plan/DataTransferHost String $ -> String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:getData! |getData) (:setData! |setData)
            :writable $ #{} :dropEffect
          :schema $ quote Trait
        'DragEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DragEventHost (:dataTransfer 'app.comp.plan/DataTransferHost)
            .preventDefault! $ Fn app.comp.plan/DragEventHost $ -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :preventDefault! |preventDefault
          :schema $ quote Trait
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
                <> $ :text task
              span
                {}
                  :on-click $ fn (e d!)
                    d! $ schema/Op :plan/reuse sort-key
                  :style $ {} $ :cursor :pointer
                comp-i :shuffle 14 $ hsl 200 80 70
          :examples $ []
          :schema $ quote $ Fn String app.schema/TaskView (-> respo.schema/Component) (:features :js-ffi)
        'comp-plan $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-plan (states plan)
            let
                cursor $ decode-map-as
                  .unwrap-or (app.schema/map-get states :cursor) ([])
                  List app.schema/DataKey
                state $ decode-map-as
                  .unwrap-or (app.schema/map-get states :data)
                    {} $ :show-deprecated? false
                  Map Tag Bool
                create-plugin $ use-prompt (>> states :create)
                  {} (:title "|A task") (:initial |)
                plan-pairs $ .sort-by (.to-list plan)
                  fn (pair)
                    hint-fn $ Fn (Tuple app.schema/DataKey app.schema/TaskView) (-> String)
                    app.schema/data-key-text $ nth pair 0
                active-plans $ filter plan-pairs $ fn (pair)
                  let[] (_key task) pair $ not $ :deleted? task
                deleted-plans $ filter plan-pairs $ fn (pair)
                  let[] (_key task) pair $ :deleted? task
              div
                {} $ :style $ {} (:width |60%)
                div ({})
                  div
                    {} $ :style $ merge ui/row style/title ({})
                    <> |Plan
                    space-x 16
                    button
                      {}
                        :style $ merge ui/button $ {} (:height 32) (:vertical-align :middle)
                        :on-click $ dispatch-fn (e d!)
                          .show create-plugin d! $ fn (text)
                            hint-fn $ Fn String $ -> Unit
                            when
                              not $ blank? text
                              d! $ schema/Op :plan/create text
                            , &unit
                      <> |Add
                  list->
                    {} $ :style $ {}
                    -> active-plans $ map $ fn (pair)
                      let[] (key task) pair $ let
                          sort-id $ app.schema/data-key-text key
                        [] (decode-map-as key respo.schema/CoordKey)
                          div ({})
                            comp-task
                              decode-map-as (>> states sort-id) (Map Tag Dynamic)
                              , sort-id task
                space-y 80
                if
                  not $ empty? deleted-plans
                  div ({})
                    div
                      {} $ :style $ merge style/title
                        {} $ :color $ hsl 0 0 70
                      <> |Deleted
                      space-x 8
                      comp-icon :eye
                        {} (:font-size 14)
                          :color $ hsl 200 80 70
                          :cursor :pointer
                        fn (e d!)
                          d! $ app.schema/Op :ui/plan-visibility cursor $ update state :show-deprecated? not
                    if
                      .unwrap-or (get state :show-deprecated?) false
                      list->
                        {} $ :style $ {}
                        -> deleted-plans $ map $ fn (pair)
                          let[] (k task) pair $ [] (decode-map-as k respo.schema/CoordKey)
                            div ({})
                              comp-deleted-task (app.schema/data-key-text k) task
                      <>
                        str "|(" (count deleted-plans) "|) tasks deprecated."
                        {} (:font-family ui/font-fancy)
                          :color $ hsl 0 0 50
                  Option :none
                .render create-plugin
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (Map app.schema/DataKey app.schema/TaskView) (-> respo.schema/Component) (:features :js-ffi)
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-task (states sort-id task)
            let
                update-plugin $ use-prompt (>> states :update)
                  {} (:text "|New task:")
                    :initial $ :text task
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
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    let
                        data-transfer $ .-dataTransfer $ drag-event e
                      .setData! data-transfer |text/plain sort-id
                  :on-dragover $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    let
                        event $ drag-event e
                        data-transfer $ .-dataTransfer event
                      .preventDefault! event
                      set! (.-dropEffect data-transfer) |move
                    , &unit
                  :on-drop $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    let
                        data-transfer $ .-dataTransfer $ drag-event e
                        drag-id $ .getData! data-transfer |text
                        drop-id sort-id
                      when (not= drag-id drop-id)
                        d! $ schema/Op :plan/move $ schema/TaskMove :from drag-id :to drop-id
                    , &unit
                <> $ :text task
                div
                  {} $ :style ui/row
                  comp-icon :edit
                    {}
                      :color $ hsl 200 80 70
                      :font-size 14
                      :cursor :pointer
                    dispatch-fn (e d!)
                      .show update-plugin d! $ fn (result)
                        hint-fn $ Fn String $ -> Unit
                        when
                          not $ blank? result
                          d! $ schema/Op :plan/update-text $ schema/TaskTextEdit :id sort-id :text result
                        , &unit
                  space-x 16
                  comp-icon :eye-off
                    {}
                      :color $ hsl 200 80 70
                      :font-size 14
                      :cursor :pointer
                    fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.schema/Op $ -> Unit
                        -> Unit
                      .show remove-plugin d! $ fn () $ d! (schema/Op :plan/remove-one sort-id)
                  .render update-plugin
                  .render remove-plugin
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String app.schema/TaskView (-> respo.schema/Component) (:features :js-ffi)
        'drag-event $ %{} 'CodeEntry
          :doc "|Read the native drag event carried by a RespoEvent."
          :code $ quote $ defn drag-event (e)
            js-cast (:original-event e) app.comp.plan/DragEventHost
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent (-> app.comp.plan/DragEventHost) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.plan
          :require
            respo.core :refer $ defcomp <> div list-> >> input button span dispatch-fn
            respo.comp.space :refer $ space-x space-y
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.schema :as schema
            app.style :as style
            respo-ui.core :refer $ hsl
            respo-alerts.core :refer $ use-confirm use-prompt
            feather.core :refer $ comp-i comp-icon
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {} $ 'comp-profile
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (name members)
            div
              {} $ :style $ merge ui/flex
                {} (:padding 16) (:width |60%)
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " name
              space-y 16
              div
                {} $ :style ui/row
                <> |Members:
                space-x 8
                list->
                  {} $ :style ui/row
                  -> members (&map:to-list)
                    map $ fn (pair)
                      let[] (k username) pair $ [] k $ div
                        {} $ :style $ {} (:padding "|0 8px")
                          :border $ str "|1px solid " $ hsl 0 0 80
                          :border-radius |16px
                          :margin "|0 4px"
                        <> $ .unwrap-or username |
              space-y 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      js/location.replace $ str js/location.origin |?time= $ .now js/Date
                  <> |Refresh
                space-x 8
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      dispatch! $ app.schema/Op :user/log-out
                      .removeItem js/localStorage $ :storage-key config/site
                  <> "|Log out"
          :examples $ []
          :schema $ quote $ Fn String
            Map app.schema/DataKey $ Option String
            -> respo.schema/Component
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            respo-ui.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ space-x space-y
            app.config :as config
    'app.comp.today $ %{} 'FileEntry
      :defs $ {}
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-task (task done?)
            div
              {} $ :style $ merge ui/row
                {} (:align-items :center) (:margin 8)
                  :background-color $ hsl 0 0 96
              div $ {}
                :style $ {} (:width 32) (:height 32)
                  :background-color $ if done? (hsl 200 80 80) (hsl 0 0 90)
                  :cursor :pointer
                :on-click $ fn (e d!)
                  match (:id task)
                    (:some id)
                      match id
                        (String text)
                          d! $ schema/Op :operation/toggle-task text
                        _ &unit
                    (:none) &unit
              space-x 8
              <> $ :text task
          :examples $ []
          :schema $ quote $ Fn app.schema/TaskView Bool (-> respo.schema/Component) (:features :js-ffi)
        'comp-today $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-today (date plan operations)
            let
                tasks $ filter (.to-list plan)
                  fn (pair)
                    let[] (_key task) pair $ not $ :deleted? task
                todo-tasks $ filter tasks $ fn (pair)
                  let[] (_key task) pair $ not $ task-done? operations task
                done-tasks $ filter tasks $ fn (pair)
                  let[] (_key task) pair $ task-done? operations task
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
                        let[] (sort-id task) entry $ [] (decode-map-as sort-id respo.schema/CoordKey) (comp-task task false)
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
                          let[] (sort-id task) entry $ [] (decode-map-as sort-id respo.schema/CoordKey) (comp-task task true)
          :examples $ []
          :schema $ quote $ Fn String (Map app.schema/DataKey app.schema/TaskView) (Map app.schema/DataKey Bool) (-> respo.schema/Component) (:features :js-ffi)
        'task-done? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn task-done? (operations task)
            match (:id task)
              (:some id)
                .unwrap-or (get operations id) false
              (:none) false
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey Bool) app.schema/TaskView (-> Bool)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.today
          :require
            respo.core :refer $ defcomp <> list-> div input button span
            respo.comp.space :refer $ space-x
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.schema :as schema
            app.style :as style
            respo-ui.core :refer $ hsl
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:port Number) (:title String) (:icon String) (:dev-ui String) (:release-ui String) (:cdn-url String) (:theme String) (:storage-key String) (:storage-file String)
          :examples $ []
          :schema $ quote StructDef
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
          :schema $ quote $ Fn (-> Bool) (:features :js-ffi)
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            Site :port 11007 :title |Everyday :icon |http://cdn.tiye.me/logo/topix.png :dev-ui |http://localhost:8100/main.css :release-ui |http://cdn.tiye.me/favored-fonts/main.css :cdn-url |http://cdn.tiye.me/everyday/ :theme |#eeeeff :storage-key |everyday :storage-file |storage.cirru
          :examples $ []
          :schema $ quote app.config/Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ js-ffi.contract :refer $ expect-string
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Credentials $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Credentials (:username String) (:password String)
          :examples $ []
          :schema $ quote StructDef
        'DataKey $ %{} 'CodeEntry
          :doc "|Keys used by Everyday wire maps: field tags, numeric sessions, and text IDs/dates."
          :code $ quote $ defunion DataKey Tag Number String
          :examples $ []
          :schema $ quote UnionDef
        'Op $ %{} 'CodeEntry
          :doc "|Client dispatch operations. Business ops are sent to the server as `{} (:op tag) (:data payload)`; task payloads are typed and encoded to their legacy wire shapes."
          :code $ quote $ defenum Op
            :states (List app.schema/DataKey) Dynamic
            :ui/login-form (List app.schema/DataKey) (Map Tag String)
            :ui/plan-visibility (List app.schema/DataKey) (Map Tag Bool)
            :effect/connect
            :effect/persist
            :reel/reset
            :reel/merge
            :session/local-date String
            :session/remove-message String
            :user/log-in app.schema/Credentials
            :user/sign-up app.schema/Credentials
            :user/log-out
            :router/change app.schema/Page
            :plan/create String
            :plan/update-text app.schema/TaskTextEdit
            :plan/remove-one String
            :plan/reuse String
            :plan/move app.schema/TaskMove
            :operation/toggle-task String
          :examples $ []
          :schema $ quote EnumDef
        'Page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Page (:home) (:plan) (:history) (:profile)
          :examples $ []
          :schema $ quote EnumDef
        'TaskChange $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion TaskChange TaskTextEdit TaskMove
          :examples $ []
          :schema $ quote UnionDef
        'TaskMove $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TaskMove (:from String) (:to String)
          :examples $ []
          :schema $ quote StructDef
        'TaskSession $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TaskSession
            :user-id $ Option String
            :date $ Option String
          :examples $ []
          :schema $ quote StructDef
        'TaskTextEdit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TaskTextEdit (:id String) (:text String)
          :examples $ []
          :schema $ quote StructDef
        'TaskView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TaskView
            :id $ Option app.schema/DataKey
            :text String
            :deleted? Bool
          :examples $ []
          :schema $ quote StructDef
        'WireField $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion WireField Tag String
          :examples $ []
          :schema $ quote UnionDef
        'WirePayload $ %{} 'CodeEntry
          :doc "|Payload values on the existing Everyday client WebSocket protocol."
          :code $ quote $ defunion WirePayload String (List String) (Map Tag app.schema/WireField)
          :examples $ []
          :schema $ quote UnionDef
        'as-map $ %{} 'CodeEntry
          :doc "|Decode open EDN map data, treating nil as an empty map."
          :code $ quote $ defn as-map (data)
            decode-map-as
              if (nil? data) ({}) data
              Map app.schema/DataKey Dynamic
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map app.schema/DataKey Dynamic
        'as-tag-map $ %{} 'CodeEntry
          :doc "|Decode open EDN map data with Tag keys, treating nil as an empty map."
          :code $ quote $ defn as-tag-map (data)
            decode-map-as
              if (nil? data) ({}) data
              Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Tag Dynamic
        'client-payload $ %{} 'CodeEntry
          :doc "|Encode typed payloads for the existing Everyday WebSocket protocol."
          :code $ quote $ defn client-payload (op)
            match op
              (:user/log-in credentials)
                Option :some $ credentials->wire credentials
              (:user/sign-up credentials)
                Option :some $ credentials->wire credentials
              (:router/change page)
                Option :some $ page->wire page
              (:session/remove-message id)
                Option :some $ {} $ :id id
              (:plan/update-text edit)
                Option :some $ encode-task-change edit
              (:plan/move move)
                Option :some $ encode-task-change move
              (:session/local-date text) (Option :some text)
              (:plan/create text) (Option :some text)
              (:plan/remove-one text) (Option :some text)
              (:plan/reuse text) (Option :some text)
              (:operation/toggle-task text) (Option :some text)
              _ $ Option :none
          :examples $ []
          :schema $ quote $ Fn app.schema/Op
            -> $ Option app.schema/WirePayload
          :tests $ [] $ %{} 'TestEntry (:name |preserves-wire-payload-shapes)
            :code $ quote $ do
              assert= (Option :none)
                client-payload $ Op :user/log-out
              assert= (Option :some |task)
                client-payload $ Op :operation/toggle-task |task
              assert=
                Option :some $ {} $ :id |message
                client-payload $ Op :session/remove-message |message
              assert=
                Option :some $ {} $ :name :plan
                client-payload $ Op :router/change $ Page :plan
              assert=
                Option :some $ [] |person |pass
                client-payload $ Op :user/log-in $ Credentials :username |person :password |pass
            :tags $ #{} :unit
        'credentials->wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn credentials->wire (credentials)
            [] (:username credentials) (:password credentials)
          :examples $ []
          :schema $ quote $ Fn app.schema/Credentials
            -> $ List String
        'data-key-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn data-key-text (key)
            match key
              (Tag tag) (str tag)
              (Number number) (str number)
              (String text) text
          :examples $ []
          :schema $ quote $ Fn app.schema/DataKey (-> String)
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            {}
              :sessions $ {}
              :users $ {}
              :date nil
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
        'encode-task-change $ %{} 'CodeEntry
          :doc "|Encode a typed task edit as the existing tag-keyed WebSocket payload."
          :code $ quote $ defn encode-task-change (change)
            match change
              (TaskTextEdit edit)
                {}
                  :id $ :id edit
                  :text $ :text edit
              (TaskMove move)
                {}
                  :from $ :from move
                  :to $ :to move
          :examples $ []
          :schema $ quote $ Fn app.schema/TaskChange
            -> $ Map Tag String
          :tests $ [] $ %{} 'TestEntry (:name |preserves-task-wire-payloads)
            :code $ quote $ do
              let
                  edit $ {} (:id |a) (:text |next)
                  move $ {} (:from |a) (:to |b)
                assert= edit $ encode-task-change $ decode-map-as edit app.schema/TaskTextEdit
                assert= move $ encode-task-change $ decode-map-as move app.schema/TaskMove
            :tags $ #{} :unit
        'map-get $ %{} 'CodeEntry
          :doc "|Read a field from a checked Map. Missing and explicit nil both become None."
          :code $ quote $ defn map-get (data field)
            option:and-then (get data field) nil->option
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey T) app.schema/DataKey
            -> $ Option T
            :generics T
          :tests $ [] $ %{} 'TestEntry (:name |preserves-false-and-normalizes-nil)
            :code $ quote $ do
              assert= (Option :some false)
                map-get
                  as-map $ {} $ :flag false
                  , :flag
              assert= (Option :none)
                map-get
                  as-map $ {} $ :flag nil
                  , :flag
              assert= (Option :none)
                map-get
                  as-map $ {}
                  , :flag
              let
                  entries $ {} (|task false) (42 |session) (:flag true)
                assert= (Option :some false)
                  map-get (as-map entries) |task
                assert= (Option :some |session)
                  map-get (as-map entries) 42
            :tags $ #{} :unit
        'map-string $ %{} 'CodeEntry
          :doc "|Read a String field of open EDN data, defaulting to empty text."
          :code $ quote $ defn map-string (data field)
            match (get data field)
              (:some value)
                decode-map-as (or value |) String
              (:none) |
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey T) Tag (-> String) (:generics T)
        'page->wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn page->wire (page)
            {} $ :name $ match page
              (:home) :home
              (:plan) :plan
              (:history) :history
              (:profile) :profile
          :examples $ []
          :schema $ quote $ Fn app.schema/Page
            -> $ Map Tag Tag
          :tests $ [] $ %{} 'TestEntry (:name |keeps-legacy-page-tags)
            :code $ quote $ do
              assert=
                {} $ :name :history
                page->wire $ Page :history
              assert=
                Option :some $ Page :profile
                read-page :profile
              assert= (Option :none) (read-page :unknown)
            :tags $ #{} :unit
        'read-completions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-completions (entries)
            filter-map-kv entries $ fn (key operation)
              hint-fn $ Fn app.schema/DataKey T $ -> (MapEntryDecision app.schema/DataKey Bool)
              MapEntryDecision :keep key $ = (Option :some true)
                get (as-map operation) :done?
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey T)
            -> $ Map app.schema/DataKey Bool
            :generics T
        'read-credentials $ %{} 'CodeEntry
          :doc "|Project the two fields of a checked legacy username/password list."
          :code $ quote $ defn read-credentials (fields)
            Credentials :username
              .unwrap $ .get fields 0
              , :password $ .unwrap $ .get fields 1
          :examples $ []
          :schema $ quote $ Fn (List String) (-> app.schema/Credentials)
        'read-history $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-history (entries)
            filter-map-kv entries $ fn (date operations)
              hint-fn $ Fn app.schema/DataKey T $ ->
                MapEntryDecision app.schema/DataKey $ Map app.schema/DataKey Bool
              MapEntryDecision :keep date $ read-completions $ as-map operations
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey T)
            -> $ Map app.schema/DataKey $ Map app.schema/DataKey Bool
            :generics T
        'read-message-id $ %{} 'CodeEntry
          :doc "|Read a String message ID from the existing message or removal frame. Missing IDs are ignored."
          :code $ quote $ defn read-message-id (fields)
            option:map (map-get fields :id)
              fn (id) (decode-map-as id String)
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey T)
            -> $ Option String
            :generics T
        'read-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-page (name)
            match name
              :home $ Option :some $ Page :home
              :plan $ Option :some $ Page :plan
              :history $ Option :some $ Page :history
              :profile $ Option :some $ Page :profile
              _ $ Option :none
          :examples $ []
          :schema $ quote $ Fn Tag
            -> $ Option app.schema/Page
        'read-plan $ %{} 'CodeEntry
          :doc "|Project legacy task maps to the fields used by the task pages."
          :code $ quote $ defn read-plan (entries)
            filter-map-kv entries $ fn (key task)
              hint-fn $ Fn app.schema/DataKey T $ -> (MapEntryDecision app.schema/DataKey app.schema/TaskView)
              let
                  fields $ as-map task
                  id $ option:and-then (get fields :id)
                    fn (value)
                      match (try-decode-map-as value app.schema/DataKey)
                        (:ok key) (Option :some key)
                        (:err _) (Option :none)
                MapEntryDecision :keep key $ TaskView :id id :text (map-string fields :text) :deleted? $ = (Option :some true) (get fields :deleted?)
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey T)
            -> $ Map app.schema/DataKey app.schema/TaskView
            :generics T
          :tests $ [] $ %{} 'TestEntry (:name |projects-existing-and-idless-tasks)
            :code $ quote $ let
                tasks $ read-plan $ {}
                  |a $ {} (:id |task) (:text |Saved) (:deleted? true) (:time 42)
                  |b $ {} (:id nil) (:text |Older)
              assert=
                Option :some $ TaskView :id (Option :some |task) :text |Saved :deleted? true
                get tasks |a
              assert=
                Option :some $ TaskView :id (Option :none) :text |Older :deleted? false
                get tasks |b
              let
                  entries $ {}
                    42 $ {} $ :done? true
                    |42 $ {} $ :done? false
                    :missing nil
                  completion $ read-completions $ as-map entries
                  history $ read-history $ as-map
                    {} (|2026-11-09 entries) (:no-data nil)
                assert= (Option :some true) (get completion 42)
                assert= (Option :some false) (get completion |42)
                assert= (Option :some false) (get completion :missing)
                assert= (Option :some completion) (get history |2026-11-09)
                assert=
                  Option :some $ {}
                  get history :no-data
            :tags $ #{} :unit
        'read-profile-members $ %{} 'CodeEntry
          :doc "|Project legacy profile member values to display names, keeping unnamed members and original keys."
          :code $ quote $ defn read-profile-members (members)
            filter-map-kv members $ fn (key name)
              hint-fn $ Fn app.schema/DataKey T $ ->
                MapEntryDecision app.schema/DataKey $ Option String
              MapEntryDecision :keep key $ if (nil? name) (Option :none)
                Option :some $ str name
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey T)
            -> $ Map app.schema/DataKey $ Option String
            :generics T
        'read-task-session $ %{} 'CodeEntry
          :doc "|Read only the session fields needed by task reducers."
          :code $ quote $ defn read-task-session (db sid)
            let
                session $ option:and-then (get db :sessions)
                  fn (sessions)
                    map-get (app.schema/as-map sessions) sid
                fields $ .unwrap-or (option:map session as-map) ({})
                user-id $ option:map
                  option:and-then (get fields :user-id) nil->option
                  fn (value) (decode-map-as value String)
                date $ option:map
                  option:and-then (get fields :date) nil->option
                  fn (value) (decode-map-as value String)
              TaskSession :user-id user-id :date date
          :examples $ []
          :schema $ quote $ Fn (Map Tag T) Number (-> app.schema/TaskSession) (:generics T)
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
              :date nil
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *client-caches ({})
          :examples $ []
          :schema $ quote $ Ref
            Map Number $ Map Tag Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db
            if (path-exists? storage-file)
              do (println "|Found local EDN data")
                merge schema/database $ load-db storage-file
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ quote $ Ref (Map Tag Dynamic)
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ quote $ Ref
            cumulo-reel.core/ReelState $ Map Tag Dynamic
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            cumulo-reel.core/ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ quote $ Ref
            cumulo-reel.core/ReelState $ Map Tag Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op op-data sid)
            let
                op-id $ generate-id!
                op-time $ get-timestamp $ get-time!
              when config/dev? $ if
                contains? (#{} :user/log-in :user/sign-up) op
                println |Dispatch! op sid
                match op-data
                  (:some payload) (println |Dispatch! op payload sid)
                  (:none) (println |Dispatch! op sid)
              if (= op :effect/persist) (persist-db!)
                reset! *reel $ reel-reducer @*reel updater
                  match op-data
                    (:some payload) (:: op payload)
                    (:none) (:: op nil)
                  , sid op-id op-time config/dev?
            , &unit
          :examples $ []
          :schema $ quote $ Fn Tag (Option T) Number (-> Unit) (:generics T)
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ app.schema/as-map $ extract-time (get-time!)
              join-path calcit-dirname |backups
                str $ .unwrap $ app.schema/map-get now :month
                str
                  .unwrap $ app.schema/map-get now :day
                  , |-snapshot.cirru
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
        'load-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-db (path)
            app.schema/as-tag-map $ parse-cirru-edn $ read-file path
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Map Tag Dynamic
            :features :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                fallback $ :port config/site
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
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
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
          :schema $ quote $ Fn (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?) (raise "|reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reel $ refresh-reel @*reel @*initial-db replay-updater
            sync-clients! @*reader-reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'replay-updater $ %{} 'CodeEntry
          :doc "|Replay recorded ops: records keep sid, op-id and op-time as open data, so decode them before calling the live updater."
          :code $ quote $ defn replay-updater (db op sid op-id op-time)
            updater db op (decode-map-as sid 'Number) (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Dynamic Dynamic Dynamic Dynamic
            -> $ Map Tag Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve! (&{} :port port)
              fn (data)
                match data
                  (:connect sid)
                    do
                      dispatch! :session/connect (Option :none) sid
                      println "|New client."
                  (:message sid msg)
                    let
                        action $ app.schema/as-map $ parse-cirru-edn msg
                      match
                        .unwrap-or (app.schema/map-get action :kind) :unknown
                        :op $ let
                            op $ decode-map-as
                              .unwrap $ app.schema/map-get action :op
                              , Tag
                          dispatch! op (app.schema/map-get action :data) sid
                        _ $ println "|unknown action:" action
                  (:disconnect sid)
                    do (println "|Client closed!")
                      dispatch! :session/disconnect (Option :none) sid
                  _ $ println "|unknown data:" data
          :examples $ []
          :schema $ quote $ Fn Number (-> FfiTask) (:features :js-ffi)
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            let
                configured-name $ :storage-file config/site
                storage-name $ if (blank? configured-name) |storage.cirru configured-name
              if (empty? calcit-dirname) (str calcit-dirname storage-name) (str calcit-dirname |/ storage-name)
          :examples $ []
          :schema $ quote String
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel) (begin-twig-frame!)
            wss-each! $ fn (sid)
              let
                  db $ :db reel
                  records $ :records reel
                  session $ option:and-then (app.schema/map-get db :sessions)
                    fn (sessions)
                      app.schema/map-get (app.schema/as-map sessions) sid
                  new-store $ twig-container db (option:map session app.schema/as-tag-map) (count records)
                  options $ {} $ :key :id
                  changes $ match (get @*client-caches sid)
                    (:some old-store) (diff-twig old-store new-store options)
                    (:none) (diff-twig nil new-store options)
                when
                  not $ empty? changes
                  wss-send! sid $ format-cirru-edn $ {} (:kind :patch) (:data changes)
                  swap! *client-caches assoc sid new-store
                , &unit
            finish-twig-frame!
          :examples $ []
          :schema $ quote $ Fn
            cumulo-reel.core/ReelState $ Map Tag Dynamic
            -> Unit
            :features :js-ffi
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
          :schema $ quote $ Map Tag respo.schema/CssValue
        'title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def title
            {} (:font-family ui/font-fancy) (:font-weight 300) (:font-size 24)
          :examples $ []
          :schema $ quote $ Map Tag respo.schema/CssValue
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.style
          :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session record-count)
            let
                session-map $ .unwrap-or session $ {}
                user-id $ app.schema/map-get session-map :user-id
                router $ .unwrap-or
                  option:map (app.schema/map-get session-map :router) app.schema/as-tag-map
                  {}
                base-data $ {}
                  :logged-in? $ .some? user-id
                  :session session-map
                  :reel-length record-count
                date $ app.schema/map-get session-map :date
                sessions $ .unwrap-or (app.schema/map-get db :sessions) ({})
              match user-id
                (:some id)
                  let
                      users $ .unwrap-or (app.schema/map-get db :users) ({})
                      user $ .unwrap-or
                        option:map
                          app.schema/map-get (app.schema/as-map users) (decode-map-as id String)
                          , app.schema/as-tag-map
                        {}
                      plan $ .unwrap-or (app.schema/map-get user :plan) ({})
                      days $ .unwrap-or (app.schema/map-get user :days) ({})
                    merge base-data $ {}
                      :user $ twig-user user
                      :router $ assoc router :data $ match
                        .unwrap-or (app.schema/map-get router :name) :unknown
                        :home $ match date
                          (:some day)
                            {} (:plan plan)
                              :operations $ .unwrap-or
                                app.schema/map-get (app.schema/as-map days) (decode-map-as day String)
                                {}
                          (:none)
                            {} (:plan plan) (:operations nil)
                        :plan plan
                        :history $ {} (:plan plan) (:days days)
                        :profile $ twig-members (app.schema/as-map sessions) (app.schema/as-map users)
                        _ $ {}
                      :count $ count $ app.schema/as-map sessions
                      :color $ rand-hex-color!
                (:none) base-data
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic)
            Option $ Map Tag Dynamic
            , Number
              -> $ Map Tag Dynamic
              :features :js-ffi
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (key session)
              hint-fn $ Fn app.schema/DataKey S $ -> (MapEntryDecision app.schema/DataKey Dynamic)
              let
                  user $ option:and-then
                    app.schema/map-get (app.schema/as-map session) :user-id
                    fn (id)
                      app.schema/map-get users $ decode-map-as id String
                match
                  option:and-then user $ fn (data)
                    app.schema/map-get (app.schema/as-map data) :name
                  (:some name) (MapEntryDecision :keep key name)
                  (:none) (MapEntryDecision :keep key nil)
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey S) (Map app.schema/DataKey U)
            -> $ Map app.schema/DataKey Dynamic
            :generics S U
          :tests $ [] $ %{} 'TestEntry (:name |profile-wire-keeps-guests-and-mixed-keys)
            :code $ quote $ let
                sessions $ {}
                  7 $ {} $ :user-id |member
                  |guest $ {}
                  :legacy $ {} $ :user-id |legacy
                users $ {}
                  |member $ {} $ :name |Alice
                  |legacy $ {} $ :name 42
                raw $ twig-members (app.schema/as-map sessions) (app.schema/as-map users)
                names $ app.schema/read-profile-members raw
              assert= (Option :some |Alice) (get raw 7)
              assert= (Option :some nil) (get raw |guest)
              assert=
                Option :some $ Option :some |Alice
                get names 7
              assert=
                Option :some $ Option :none
                get names |guest
              assert=
                Option :some $ Option :some |42
                get names :legacy
              assert= | $ str nil
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            -> user (dissoc :password) (dissoc :plan) (dissoc :days)
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic)
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user (:require)
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
              (:session/connect _payload) (session/connect db sid)
              (:session/disconnect _payload) (session/disconnect db sid)
              (:user/log-in op-data)
                user/log-in db
                  app.schema/read-credentials $ decode-map-as op-data $ List String
                  , sid op-id op-time
              (:user/sign-up op-data)
                user/sign-up db
                  app.schema/read-credentials $ decode-map-as op-data $ List String
                  , sid op-id op-time
              (:user/log-out _payload) (user/log-out db sid)
              (:session/remove-message op-data)
                match
                  app.schema/read-message-id $ app.schema/as-map op-data
                  (:some id) (session/remove-message db id sid)
                  (:none) db
              (:session/local-date op-data)
                session/local-date db (decode-map-as op-data String) sid
              (:router/change op-data) (router/change db op-data sid op-id op-time)
              (:plan/create op-data)
                plan/create db (decode-map-as op-data String) sid op-id op-time
              (:plan/update-text op-data)
                plan/update-text db (decode-map-as op-data app.schema/TaskTextEdit) sid op-id op-time
              (:plan/remove-one op-data)
                plan/remove-one db (decode-map-as op-data String) sid op-id op-time
              (:plan/reuse op-data)
                plan/reuse db (decode-map-as op-data String) sid op-id op-time
              (:plan/move op-data)
                plan/move db (decode-map-as op-data app.schema/TaskMove) sid op-id op-time
              (:operation/toggle-task op-data)
                operation/toggle-task db (decode-map-as op-data String) sid op-id op-time
              _ $ do (println "|Unknown op:" op) db
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Dynamic Number String Number
            -> $ Map Tag Dynamic
          :tests $ []
            %{} 'TestEntry (:name |accepts-legacy-task-events)
              :code $ quote $ let
                  db $ {}
                    :sessions $ {} $ 1
                      {} (:user-id |u) (:date |today)
                    :users $ {} $ |u
                      {}
                        :plan $ {} $ |a
                          {} (:id |task) (:text |old) (:time 0) (:deleted? false)
                        :days $ {}
                  edited $ updater db
                    :: :plan/update-text $ {} (:id |a) (:text |new)
                    , 1 |edit 12
                  removed $ updater edited (:: :plan/remove-one |a) 1 |remove 13
                  restored $ updater removed (:: :plan/reuse |a) 1 |reuse 14
                  done $ updater restored (:: :operation/toggle-task |task) 1 |toggle 15
                assert= (Result :ok |new)
                  get-in edited $ [] :users |u :plan |a :text
                assert= (Result :ok 12)
                  get-in edited $ [] :users |u :plan |a :time
                assert= (Result :ok true)
                  get-in removed $ [] :users |u :plan |a :deleted?
                assert= (Result :ok false)
                  get-in restored $ [] :users |u :plan |a :deleted?
                assert= (Result :ok true)
                  get-in done $ [] :users |u :days |today |task :done?
                assert= db $ updater db (:: :operation/toggle-task |task) 999 |offline 16
              :tags $ #{} :unit
            %{} 'TestEntry (:name |accepts-legacy-account-events)
              :code $ quote $ let
                  initial $ {}
                    :sessions $ {}
                      1 $ {}
                      2 $ {}
                    :users $ {}
                  credentials $ [] |fixture-user |fixture-pass
                  created $ updater initial (:: :user/sign-up credentials) 1 |fixture-id 0
                  rejected $ updater created
                    :: :user/log-in $ [] |fixture-user |wrong-pass
                    , 2 |wrong 1
                  logged-in $ updater rejected (:: :user/log-in credentials) 2 |correct 2
                  ignored $ updater rejected
                    :: :session/remove-message $ {}
                    , 2 |ignored 2
                  dismissed $ updater ignored
                    :: :session/remove-message $ {} $ :id |wrong
                    , 2 |dismissed 3
                assert= credentials $ app.schema/credentials->wire $ app.schema/read-credentials credentials
                assert= (Result :ok |fixture-id)
                  get-in created $ [] :sessions 1 :user-id
                assert= true $ .err? $ get-in rejected ([] :sessions 2 :user-id)
                assert= (Result :ok "|Wrong password for fixture-user")
                  get-in rejected $ [] :sessions 2 :messages |wrong :text
                assert= (Result :ok |fixture-id)
                  get-in logged-in $ [] :sessions 2 :user-id
                assert= rejected ignored
                assert=
                  Result :ok $ {}
                  get-in dismissed $ [] :sessions 2 :messages
              :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.updater.plan :as plan) (app.updater.operation :as operation)
    'app.updater.operation $ %{} 'FileEntry
      :defs $ {} $ 'toggle-task
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn toggle-task (db op-data sid op-id op-time)
            let
                session $ app.schema/read-task-session db sid
              match (:user-id session)
                (:some user-id)
                  match (:date session)
                    (:some date)
                      let
                          path $ [] :users user-id :days date op-data :done?
                        app.schema/as-tag-map $ assoc-in db path $ not
                          = true $ .unwrap-or (get-in db path) false
                    (:none) db
                (:none) db
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String Number String Number
            -> $ Map Tag Dynamic
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.operation
    'app.updater.plan $ %{} 'FileEntry
      :defs $ {}
        'create $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create (db op-data sid op-id op-time)
            let
                user-id $ .unwrap $ :user-id (app.schema/read-task-session db sid)
              app.schema/as-tag-map $ update-in db ([] :users user-id :plan)
                fn (plan)
                  let
                      plan-map $ decode-map-as
                        .unwrap-or plan $ {}
                        Map String Dynamic
                      new-key $ key-append plan-map
                    assoc plan-map new-key $ {} (:id op-id) (:time op-time) (:text op-data) (:deleted? false)
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String Number String Number
            -> $ Map Tag Dynamic
            :features :js-ffi
        'move $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn move (db op-data sid op-id op-time)
            let
                user-id $ .unwrap $ :user-id (app.schema/read-task-session db sid)
                from-id $ :from op-data
                to-id $ :to op-data
              app.schema/as-tag-map $ update-in db ([] :users user-id :plan)
                fn (plan)
                  let
                      plan-map $ decode-map-as
                        .unwrap-or plan $ {}
                        Map String Dynamic
                      new-key $ if
                        = -1 $ &compare to-id from-id
                        key-before plan-map to-id
                        key-after plan-map to-id
                    -> plan-map
                      assoc new-key $ .unwrap $ get plan-map from-id
                      dissoc from-id
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) app.schema/TaskMove Number String Number
            -> $ Map Tag Dynamic
            :features :js-ffi
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-one (db op-data sid op-id op-time)
            let
                sort-id op-data
                user-id $ .unwrap $ :user-id (app.schema/read-task-session db sid)
              app.schema/as-tag-map $ assoc-in db ([] :users user-id :plan sort-id :deleted?) true
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String Number String Number
            -> $ Map Tag Dynamic
        'reuse $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reuse (db op-data sid op-id op-time)
            let
                sort-id op-data
                user-id $ .unwrap $ :user-id (app.schema/read-task-session db sid)
              app.schema/as-tag-map $ assoc-in db ([] :users user-id :plan sort-id :deleted?) false
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String Number String Number
            -> $ Map Tag Dynamic
        'update-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-text (db op-data sid op-id op-time)
            let
                sort-id $ :id op-data
                text $ :text op-data
                user-id $ .unwrap $ :user-id (app.schema/read-task-session db sid)
              app.schema/as-tag-map $ update-in db ([] :users user-id :plan sort-id)
                fn (task)
                  ->
                    .unwrap-or (option:map task app.schema/as-tag-map) ({})
                    assoc :text text
                    assoc :time op-time
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) app.schema/TaskTextEdit Number String Number
            -> $ Map Tag Dynamic
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.plan
          :require (app.schema :as schema)
            bisection-key.util :refer $ key-append key-before key-after
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Dynamic Number String Number
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} $ :id sid
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Number
            -> $ Map Tag Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid)
            update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Number
            -> $ Map Tag Dynamic
        'local-date $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn local-date (db date sid)
            assoc-in db ([] :sessions sid :date) date
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String Number
            -> $ Map Tag Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db id sid)
            app.schema/as-tag-map $ update-in db ([] :sessions sid :messages)
              fn (messages)
                dissoc
                  .unwrap-or (option:map messages app.schema/as-map) ({})
                  , id
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String Number
            -> $ Map Tag Dynamic
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'AccountAuth $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct AccountAuth
            :id $ Option String
            :password-hash $ Option String
          :examples $ []
          :schema $ quote StructDef
        'add-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-message (session op-id text)
            assoc session :messages $ assoc
              .unwrap-or
                option:map (get session :messages) app.schema/as-map
                {}
              , op-id $ {} (:id op-id) (:text text)
          :examples $ []
          :schema $ quote $ Fn (Map Tag T) String String
            -> $ Map Tag Dynamic
            :generics T
        'find-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-user (users username)
            let
                entry $ find
                  &set:to-list $ distinct-values users
                  fn (user)
                    = (Option :some username)
                      app.schema/map-get (app.schema/as-map user) :name
              option:map entry $ fn (user)
                let
                    fields $ app.schema/as-map user
                    id $ read-account-text fields :id
                    password-hash $ read-account-text fields :password
                  AccountAuth :id id :password-hash password-hash
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey T) String
            -> $ Option app.updater.user/AccountAuth
            :generics T
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db credentials sid op-id op-time)
            let
                username $ :username credentials
                maybe-user $ find-user
                  .unwrap-or
                    option:map (get db :users) app.schema/as-map
                    {}
                  , username
              app.schema/as-tag-map $ update-in db ([] :sessions sid)
                fn (session)
                  let
                      session-map $ .unwrap-or (option:map session app.schema/as-tag-map) ({})
                    match maybe-user
                      (:some user)
                        if
                          =
                            Option :some $ md5 $ :password credentials
                            :password-hash user
                          match (:id user)
                            (:some id) (assoc session-map :user-id id)
                            (:none) (assoc session-map :user-id nil)
                          add-message session-map op-id $ str "|Wrong password for " username
                      (:none)
                        add-message session-map op-id $ str "|No user named: " username
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) app.schema/Credentials Number String Number
            -> $ Map Tag Dynamic
            :features :js-ffi
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db sid)
            assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Number
            -> $ Map Tag Dynamic
        'read-account-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-account-text (account field)
            option:and-then (get account field)
              fn (raw)
                match (try-decode-map-as raw String)
                  (:ok text) (Option :some text)
                  (:err _) (Option :none)
          :examples $ []
          :schema $ quote $ Fn (Map app.schema/DataKey T) Tag
            -> $ Option String
            :generics T
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db credentials sid op-id op-time)
            let
                username $ :username credentials
                password $ :password credentials
              match
                find-user
                  .unwrap-or
                    option:map (get db :users) app.schema/as-map
                    {}
                  , username
                (:some _)
                  app.schema/as-tag-map $ update-in db ([] :sessions sid)
                    fn (session)
                      add-message
                        .unwrap-or (option:map session app.schema/as-tag-map) ({})
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
          :schema $ quote $ Fn (Map Tag Dynamic) app.schema/Credentials Number String Number
            -> $ Map Tag Dynamic
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            calcit.std.hash :refer $ md5
            app.schema :as schema
    'app.util $ %{} 'FileEntry
      :defs $ {}
        'DayjsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DayjsHost
            .subtract! $ Fn app.util/DayjsHost Number String $ -> app.util/DayjsHost
            .format! $ Fn app.util/DayjsHost String $ -> String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:format! |format) (:subtract! |subtract)
          :schema $ quote Trait
        'get-date $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-date ()
            ->
              js-cast (dayjs) 'app.util/DayjsHost
              .format! |YYYY-MM-DD
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
        'get-shifted-date $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-shifted-date ()
            ->
              js-cast (dayjs) 'app.util/DayjsHost
              .subtract! 3 |hours
              .format! |YYYY-MM-DD
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util
          :require $ |dayjs :default dayjs
