
{} (:package |app)
  :configs $ {} (:init-fn |app.server/main!) (:reload-fn |app.server/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |bisection-key/ |alerts.calcit/ |respo-feather.calcit/
    :version nil
  :files $ {}
    |app.comp.plan $ {}
      :ns $ quote
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
      :defs $ {}
        |comp-deleted-task $ quote
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
        |comp-plan $ quote
          defcomp comp-plan (states plan)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :show-deprecated? false
                create-plugin $ use-prompt (>> states :create)
                  {} (:title "\"A task") (:initial "\"")
              div
                {} $ :style
                  {} $ :width "\"60%"
                div ({})
                  div
                    {} $ :style
                      merge ui/row style/title $ {}
                    <> "\"Plan"
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
                      <> "\"Add"
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
                        <> "\"Deleted"
                        =< 8 nil
                        comp-icon :eye
                          {} (:font-size 14)
                            :color $ hsl 200 80 70
                            :cursor :pointer
                          fn (e d!)
                            d! cursor $ update state :show-deprecated? not
                      if (:show-deprecated? state)
                        list->
                          {} $ :style (merge)
                          -> deleted-plans (.to-list)
                            map $ fn (pair)
                              let[] (k task) pair $ [] k
                                div ({}) (comp-deleted-task k task)
                        <>
                          str "\"(" (count deleted-plans) "\") tasks deprecated."
                          {} (:font-family ui/font-fancy)
                            :color $ hsl 0 0 50
                .render create-plugin
        |comp-task $ quote
          defcomp comp-task (states sort-id task)
            let
                update-plugin $ use-prompt (>> states :update)
                  {} (:text "\"New task:")
                    :initial $ :text task
                remove-plugin $ use-confirm (>> states :remove)
                  {} $ :text "\"Sure to remove from everyday task?"
              div
                {}
                  :style $ merge ui/row-parted
                    {}
                      :background-color $ hsl 0 0 96
                      :margin "\"0 8px 8px 0"
                      :padding 8
                  :draggable true
                  :on-dragstart $ fn (e d! m!)
                    -> (:event e) .-dataTransfer $ .!setData "\"text/plain" sort-id
                  :on-dragover $ fn (e d! m!)
                    .!preventDefault $ :event e
                    set!
                      -> (:event e) .-dataTransfer .-dropEffect
                      , "\"move"
                  :on-drop $ fn (e d! m!)
                    let
                        drag-id $ -> (:event e) .-dataTransfer (.!getData "\"text")
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
    |app.comp.container $ {}
      :ns $ quote
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
      :defs $ {}
        |comp-container $ quote
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
                      case (:name router)
                        :home $ comp-today (:date session) (:plan router-data)
                          or (:operations router-data) ({})
                        :plan $ comp-plan states router-data
                        :profile $ comp-profile (:user store) router-data
                        :history $ comp-history (:plan router-data) (:days router-data)
                        <> router
                      comp-login states
                  comp-status-color $ :color store
                  when dev? $ comp-inspect |Store store
                    {} (:bottom 0) (:left 0) (:max-width |100%)
                  comp-messages
                    get-in store $ [] :session :messages
                    {}
                    fn (info d!) (d! :session/remove-message info)
                  when dev? $ comp-reel (:reel-length store) ({})
        |comp-offline $ quote
          defcomp comp-offline () $ div
            {} $ :style (merge ui/global ui/fullscreen ui/center)
            span
              {}
                :style $ {} (:cursor :pointer)
                :on-click $ fn (e d!) (d! :effect/connect nil)
              <> "|Socket broken! Click to retry." $ {} (:font-family ui/font-fancy) (:font-weight 100) (:font-size 32)
        |comp-status-color $ quote
          defcomp comp-status-color (color)
            div $ {}
              :style $ {} (:width 16) (:height 16) (:position :absolute) (:top 60) (:right 8) (:background-color color) (:border-radius "\"8px") (:opacity 0.8)
        |style-body $ quote
          def style-body $ {} (:padding "|8px 16px")
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |notification $ quote
          def notification $ {} (:id nil) (:kind nil) (:text nil)
        |page $ quote
          def page $ {} (:id nil) (:title "\"") (:time nil)
        |task $ quote
          def task $ {} (:id nil) (:text "\"") (:time 0) (:deleted? false)
        |user $ quote
          def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
            :plan $ {}
            :days $ {}
        |session $ quote
          def session $ {} (:user-id nil) (:id nil) (:nickname nil)
            :router $ {} (:name :home) (:data nil) (:router nil)
            :messages $ {}
            :date nil
        |database $ quote
          def database $ {}
            :sessions $ {}
            :users $ {}
            :date nil
        |operation $ quote
          def operation $ {} (:done? false) (:time 0)
        |router $ quote
          def router $ {} (:name nil) (:title nil)
            :data $ {}
            :router nil
    |app.server $ {}
      :ns $ quote
        ns app.server $ :require (app.schema :as schema)
          app.updater :refer $ updater
          cljs.reader :refer $ read-string
          cumulo-reel.core :refer $ reel-reducer refresh-reel reel-schema
          "\"fs" :as fs
          "\"path" :as path
          app.config :as config
          cumulo-util.file :refer $ write-mildly! get-backup-path! merge-local-edn!
          cumulo-util.core :refer $ id! repeat! unix-time! delay!
          app.twig.container :refer $ twig-container
          recollect.diff :refer $ diff-twig
          ws-edn.server :refer $ wss-serve! wss-send! wss-each!
          recollect.twig :refer $ new-twig-loop! clear-twig-caches!
      :defs $ {}
        |*initial-db $ quote
          defatom *initial-db $ merge-local-edn! schema/database storage-file
            fn (found?)
              if found? (println "\"Found local EDN data") (println "\"Found no data")
        |persist-db! $ quote
          defn persist-db! () $ let
              file-content $ format-cirru-edn
                assoc (:db @*reel) :sessions $ {}
              storage-path storage-file
              backup-path $ get-backup-path!
            write-mildly! storage-path file-content
            write-mildly! backup-path file-content
        |sync-clients! $ quote
          defn sync-clients! (reel)
            wss-each! $ fn (sid socket)
              let
                  db $ :db reel
                  records $ :records reel
                  session $ get-in db ([] :sessions sid)
                  old-store $ or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store
                    {} $ :key :id
                when config/dev? $ println "\"Changes for" sid "\":" changes (count records)
                if
                  not= changes $ []
                  do
                    wss-send! sid $ {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
            new-twig-loop!
        |storage-file $ quote
          def storage-file $ path/join js/__dirname (:storage-file config/site)
        |*reader-reel $ quote (defatom *reader-reel @*reel)
        |*reel $ quote
          defatom *reel $ merge reel-schema
            {} (:base @*initial-db) (:db @*initial-db)
        |*proxied-dispatch! $ quote (defatom *proxied-dispatch! dispatch!)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev?
              do (load-console-formatter!) "\"dev"
              , "\"release"
            let
                port $ if (some? js/process.env.port) (js/parseInt js/process.env.port) (:port config/site)
              run-server! port
              println $ str "\"Server started on port:" port
            render-loop! *loop-trigger
            js/process.on "\"SIGINT" on-exit!
            repeat! 600 $ fn () (persist-db!)
        |*loop-trigger $ quote (defatom *loop-trigger 0)
        |on-exit! $ quote
          defn on-exit! (code _) (persist-db!)
            ; println "\"exit code is:" $ pr-str code
            js/process.exit
        |dispatch! $ quote
          defn dispatch! (op op-data sid)
            let
                op-id $ id!
                op-time $ unix-time!
              if config/dev? $ println "\"Dispatch!" (str op) op-data sid
              if (= op :effect/persist) (persist-db!)
                reset! *reel $ reel-reducer @*reel updater op op-data sid op-id op-time config/dev?
        |run-server! $ quote
          defn run-server! (port)
            wss-serve! port $ {}
              :on-open $ fn (sid socket) (@*proxied-dispatch! :session/connect nil sid) (println "\"New client.")
              :on-data $ fn (sid action)
                case-default (:kind action) (println "\"unknown action:" action)
                  :op $ @*proxied-dispatch! (:op action) (:data action) sid
              :on-close $ fn (sid event) (println "\"Client closed!") (@*proxied-dispatch! :session/disconnect nil sid)
              :on-error $ fn (error) (js/console.error error)
        |render-loop! $ quote
          defn render-loop! (*loop)
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            reset! *loop $ delay! 0.2
              fn () $ render-loop! *loop
        |*client-caches $ quote
          defatom *client-caches $ {}
        |reload! $ quote
          defn reload! () (println "\"Code updated.") (clear-twig-caches!) (reset! *proxied-dispatch! dispatch!)
            reset! *reel $ refresh-reel @*reel @*initial-db updater
            js/clearTimeout @*loop-trigger
            render-loop! *loop-trigger
            sync-clients! @*reader-reel
    |app.twig.container $ {}
      :ns $ quote
        ns app.twig.container $ :require
          [] app.twig.user :refer $ [] twig-user
          [] "\"randomcolor" :as color
      :defs $ {}
        |twig-container $ quote
          defn twig-container (db session records)
            let
                logged-in? $ some? (:user-id session)
                router $ :router session
                base-data $ {} (:logged-in? logged-in?) (:session session)
                  :reel-length $ count records
                date $ :date session
              merge base-data $ if logged-in?
                let
                    user $ get-in db
                      [] :users $ :user-id session
                  {}
                    :user $ twig-user user
                    :router $ assoc router :data
                      case-default (:name router) ({})
                        :home $ {}
                          :plan $ :plan user
                          :operations $ when (some? date)
                            or
                              get-in user $ [] :days date
                              {}
                        :plan $ :plan user
                        :history $ {}
                          :plan $ :plan user
                          :days $ :days user
                        :profile $ twig-members (:sessions db) (:users db)
                    :count $ count (:sessions db)
                    :color $ color/randomColor
                , nil
        |twig-members $ quote
          defn twig-members (sessions users)
            -> sessions (.to-list)
              map $ fn (pair)
                let[] (k session) pair $ [] k
                  get-in users $ [] (:user-id session) :name
              pairs-map
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.updater.plan :as plan) ([] app.updater.operation :as operation)
      :defs $ {}
        |updater $ quote
          defn updater (db op op-data sid op-id op-time)
            let
                f $ case-default op
                  fn (& args) (println "\"Unknown op:" op) db
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
              f db op-data sid op-id op-time
    |app.twig.user $ {}
      :ns $ quote
        ns app.twig.user $ :require
      :defs $ {}
        |twig-user $ quote
          defn twig-user (user)
            -> user (dissoc :password) (dissoc :plan) (dissoc :days)
    |app.updater.plan $ {}
      :ns $ quote
        ns app.updater.plan $ :require ([] app.schema :as schema)
          [] bisection-key.util :refer $ [] key-append key-before key-after
      :defs $ {}
        |move $ quote
          defn move (db op-data sid op-id op-time)
            let
                user-id $ get-in db ([] :sessions sid :user-id)
                from-id $ :from op-data
                to-id $ :to op-data
              update-in db ([] :users user-id :plan)
                fn (plan)
                  let
                      new-key $ if (< to-id from-id) (key-before plan to-id) (key-after plan to-id)
                    -> plan
                      assoc new-key $ get plan from-id
                      dissoc from-id
        |remove-one $ quote
          defn remove-one (db op-data sid op-id op-time)
            let
                sort-id op-data
                user-id $ get-in db ([] :sessions sid :user-id)
              assoc-in db ([] :users user-id :plan sort-id :deleted?) true
        |update-text $ quote
          defn update-text (db op-data sid op-id op-time)
            let
                sort-id $ :id op-data
                text $ :text op-data
                user-id $ get-in db ([] :sessions sid :user-id)
              update-in db ([] :users user-id :plan sort-id)
                fn (task)
                  -> task (assoc :text text) (assoc :time op-time)
        |reuse $ quote
          defn reuse (db op-data sid op-id op-time)
            let
                sort-id op-data
                user-id $ get-in db ([] :sessions sid :user-id)
              assoc-in db ([] :users user-id :plan sort-id :deleted?) false
        |create $ quote
          defn create (db op-data sid op-id op-time)
            let
                session $ get-in db ([] :sessions sid)
                user $ get-in db
                  [] :users $ :user-id session
              update-in db
                [] :users (:user-id session) :plan
                fn (plan)
                  let
                      new-key $ key-append plan
                    assoc plan new-key $ merge schema/task
                      {} (:id op-id) (:time op-time) (:text op-data)
    |app.updater.user $ {}
      :ns $ quote
        ns app.updater.user $ :require ([] |md5 :default md5) ([] app.schema :as schema)
      :defs $ {}
        |sign-up $ quote
          defn sign-up (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ find
                  vals $ :users db
                  fn (user)
                    = username $ :name user
              if (some? maybe-user)
                update-in db ([] :sessions sid :messages)
                  fn (messages)
                    assoc messages op-id $ {} (:id op-id)
                      :text $ str "\"Name is taken: " username
                -> db
                  assoc-in ([] :sessions sid :user-id) op-id
                  assoc-in ([] :users op-id)
                    merge schema/user $ {} (:id op-id) (:name username) (:nickname username)
                      :password $ md5 password
                      :avatar nil
        |log-out $ quote
          defn log-out (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :user-id) nil
        |log-in $ quote
          defn log-in (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ -> (:users db) (vals) (.to-list)
                  find $ fn (user)
                    and $ = username (:name user)
              update-in db ([] :sessions sid)
                fn (session)
                  if (some? maybe-user)
                    if
                      = (md5 password) (:password maybe-user)
                      assoc session :user-id $ :id maybe-user
                      update session :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "\"Wrong password for " username
                    update session :messages $ fn (messages)
                      assoc messages op-id $ {} (:id op-id)
                        :text $ str "\"No user named: " username
    |app.comp.profile $ {}
      :ns $ quote
        ns app.comp.profile $ :require
          [] respo-ui.core :refer $ [] hsl
          [] app.schema :as schema
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp list-> <> span div button
          [] respo.comp.space :refer $ [] =<
          [] app.config :as config
      :defs $ {}
        |comp-profile $ quote
          defcomp comp-profile (user members)
            div
              {} $ :style
                merge ui/flex $ {} (:padding 16) (:width "\"60%")
              div
                {} $ :style
                  {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "\"Hello! " (:name user)
              =< nil 16
              div
                {} $ :style ui/row
                <> "\"Members:"
                =< 8 nil
                list->
                  {} $ :style ui/row
                  -> members $ map
                    fn (pair)
                      let[] (k username) pair $ [] k
                        div
                          {} $ :style
                            {} (:padding "\"0 8px")
                              :border $ str "\"1px solid " (hsl 0 0 80)
                              :border-radius "\"16px"
                              :margin "\"0 4px"
                          <> username
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      js/location.replace $ str js/location.origin "\"?time=" (.now js/Date)
                  <> "\"Refresh"
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button
                      {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!) (dispatch! :user/log-out nil)
                      .removeItem js/localStorage $ :storage-key config/site
                  <> "\"Log out"
    |app.comp.login $ {}
      :ns $ quote
        ns app.comp.login $ :require
          [] respo.core :refer $ [] defcomp <> div input button span
          [] respo.comp.space :refer $ [] =<
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo-ui.core :as ui
          [] app.style :as style
          [] app.config :as config
      :defs $ {}
        |initial-state $ quote
          def initial-state $ {} (:username |) (:password |)
        |comp-login $ quote
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
                      input $ {} (:placeholder "\"Username")
                        :value $ :username state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :username (:value e)
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder "\"Password")
                        :value $ :password state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :password (:value e)
                  =< nil 8
                  div
                    {} $ :style
                      {} $ :text-align :right
                    span $ {} (:inner-text "\"Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "\"Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) false
        |on-submit $ quote
          defn on-submit (username password signup?)
            fn (e dispatch!)
              dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
              .setItem js/localStorage (:storage-key config/site)
                format-cirru-edn $ [] username password
    |app.style $ {}
      :ns $ quote
        ns app.style $ :require
          [] hsl.core :refer $ [] hsl
          [] respo-ui.core :as ui
      :defs $ {}
        |link $ quote
          def link $ {} (:text-decoration :underline) (:cursor :pointer)
            :color $ hsl 240 80 80
            :font-family ui/font-fancy
        |title $ quote
          def title $ {} (:font-family ui/font-fancy) (:font-weight 300) (:font-size 24)
    |app.comp.today $ {}
      :ns $ quote
        ns app.comp.today $ :require
          [] respo.core :refer $ [] defcomp <> list-> div input button span
          [] respo.comp.space :refer $ [] =<
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo-ui.core :as ui
          [] app.schema :as schema
          [] app.style :as style
          [] respo-ui.core :refer $ [] hsl
      :defs $ {}
        |comp-task $ quote
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
        |comp-today $ quote
          defcomp comp-today (date plan operations)
            div
              {} $ :style
                {} $ :width "\"60%"
              div
                {} $ :style style/title
                <> $ str "\"Today(" date "\")"
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
                      <> "\"Todo"
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
                      <> "\"Done"
                    if (empty? done-tasks)
                      <> "\"Nothing." $ {} (:margin-left 8) (:margin-bottom 16) (:font-family ui/font-fancy)
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
    |app.updater.operation $ {}
      :ns $ quote (ns app.updater.operation)
      :defs $ {}
        |toggle-task $ quote
          defn toggle-task (db op-data sid op-id op-time)
            let
                session $ get-in db ([] :sessions sid)
                user-id $ :user-id session
                path $ [] :users user-id :days (:date session) op-data :done?
              assoc-in db path $ not (get-in db path)
    |app.util $ {}
      :ns $ quote
        ns app.util $ :require ([] "\"dayjs" :default dayjs)
      :defs $ {}
        |get-shifted-date $ quote
          defn get-shifted-date () $ -> (dayjs) (.subtract 3 "\"hours") (.format "\"YYYY-MM-DD")
        |get-date $ quote
          defn get-date () $ .format (dayjs) "\"YYYY-MM-DD"
    |app.comp.navigation $ {}
      :ns $ quote
        ns app.comp.navigation $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp <> span div
      :defs $ {}
        |comp-entry $ quote
          defcomp comp-entry (page title focused?)
            div
              {}
                :on-click $ fn (e d!)
                  d! :router/change $ {} (:name page)
                :style $ merge
                  {} $ :cursor :pointer
                  when focused? $ {} (:font-weight 500)
              <> title
        |comp-navigation $ quote
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
                  merge ui/row-parted $ {} (:width "\"72%") (:margin :auto)
                div
                  {} $ :style ui/row
                  comp-entry :home "\"Everyday" $ = :home (:name router)
                  =< 16 nil
                  comp-entry :plan "\"Plan" $ = :plan (:name router)
                  =< 16 nil
                  comp-entry :history "\"History" $ = :history (:name router)
                div
                  {}
                    :style $ {} (:cursor |pointer)
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :profile)
                  <> $ if logged-in? |Me |Guest
                  =< 8 nil
                  <> count-members
    |app.updater.router $ {}
      :ns $ quote (ns app.updater.router)
      :defs $ {}
        |change $ quote
          defn change (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :router) op-data
    |app.comp.history $ {}
      :ns $ quote
        ns app.comp.history $ :require
          [] respo.core :refer $ [] defcomp <> div list-> input button span
          [] respo.comp.space :refer $ [] =<
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo-ui.core :as ui
          [] app.schema :as schema
          [] app.style :as style
          [] respo-ui.core :refer $ [] hsl
      :defs $ {}
        |comp-history $ quote
          defcomp comp-history (plan days)
            div
              {} $ :style
                merge ui/column $ {} (:width "\"60%")
              div
                {} $ :style
                  merge style/title $ {}
                <> "\"History"
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
        |comp-records $ quote
          defcomp comp-records (plan date operations)
            div
              {} $ :style
                {} $ :padding "\"8px 0"
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
    |app.updater.session $ {}
      :ns $ quote
        ns app.updater.session $ :require ([] app.schema :as schema)
      :defs $ {}
        |disconnect $ quote
          defn disconnect (db op-data sid op-id op-time)
            update db :sessions $ fn (session) (dissoc session sid)
        |remove-message $ quote
          defn remove-message (db op-data sid op-id op-time)
            update-in db ([] :sessions sid :messages)
              fn (messages)
                dissoc messages $ :id op-data
        |local-date $ quote
          defn local-date (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :date) op-data
        |connect $ quote
          defn connect (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} (:id sid)
    |app.client $ {}
      :ns $ quote
        ns app.client $ :require
          respo.core :refer $ render! clear-cache! realize-ssr!
          respo.cursor :refer $ update-states
          app.comp.container :refer $ comp-container
          app.schema :as schema
          app.config :as config
          ws-edn.client :refer $ ws-connect! ws-send!
          recollect.patch :refer $ patch-twig
          cumulo-util.core :refer $ on-page-touch
          "\"url-parse" :default url-parse
          "\"bottom-tip" :default hud!
          "\"./calcit.build-errors" :default client-errors
          "\"../js-out/calcit.build-errors" :default server-errors
          app.util :refer $ get-shifted-date
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target
            comp-container (:states @*states) @*store
            , dispatch!
        |*states $ quote
          defatom *states $ {}
            :states $ {}
              :cursor $ []
        |mount-target $ quote
          def mount-target $ .querySelector js/document "\".app"
        |connect! $ quote
          defn connect! () $ let
              url-obj $ url-parse js/location.href true
              host $ either (-> url-obj .-query .-host) js/location.hostname
              port $ either (-> url-obj .-query .-port) (:port config/site)
            ws-connect! (str "\"ws://" host "\":" port)
              {}
                :on-open $ fn (event)
                  dispatch! :session/local-date $ get-shifted-date
                  simulate-login!
                :on-close $ fn (event) (reset! *store nil) (js/console.error "\"Lost connection!")
                :on-data on-server-data
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            connect!
            add-watch *store :changes $ fn (store prev) (render-app!)
            add-watch *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn ()
              if (nil? @*store) (connect!)
            println "\"App started!"
        |*store $ quote (defatom *store nil)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch" op op-data
            case-default op
              ws-send! $ {} (:kind :op) (:op op) (:data op-data)
              :states $ reset! *states (update-states @*states op-data)
              :effect/connect $ connect!
        |on-server-data $ quote
          defn on-server-data (data)
            case-default (:kind data) (println "\"unknown server data kind:" data)
              :patch $ let
                  changes $ :data data
                when config/dev? $ js/console.log "\"Changes" (to-js-data changes)
                reset! *store $ patch-twig @*store changes
        |simulate-login! $ quote
          defn simulate-login! () $ let
              raw $ .!getItem js/localStorage (:storage-key config/site)
            if (some? raw)
              do (println "\"Found storage.")
                dispatch! :user/log-in $ parse-cirru-edn raw
              do $ println "\"Found no storage."
        |reload! $ quote
          defn reload! () $ if
            or (some? client-errors) (some? server-errors)
            hud! "\"error" $ str client-errors &newline server-errors
            do (hud! "\"inactive" nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
              add-watch *store :changes $ fn (store prev) (render-app!)
              add-watch *states :changes $ fn (states prev) (render-app!)
              println "\"Code updated."
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:port 11007) (:title "\"Everyday") (:icon "\"http://cdn.tiye.me/logo/topix.png") (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/everyday/") (:theme "\"#eeeeff") (:storage-key "\"everyday") (:storage-file "\"storage.edn")
