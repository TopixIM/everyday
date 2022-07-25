
{}
  :configs $ {} (:init-fn |app.client/main!) (:port 6001) (:reload-fn |app.client/reload!) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |bisection-key/ |alerts.calcit/ |respo-feather.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |bisection-key/ |calcit.std/ |calcit-wss/
  :ir $ {} (:package |app)
    :files $ {}
      |app.client $ {}
        :defs $ {}
          |*states $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
          |*store $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
          |connect! $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |url-parse) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |js/location.href) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |true) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |.-host) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |js/location.hostname) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |.-port) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |ws-connect!) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"ws://") (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                          |x $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:on-open) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |n $ {} (:at 1629438119283) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629438121112) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |j $ {} (:at 1629438130659) (:by |B1y7Rc-Zz) (:text |:session/local-date) (:type :leaf)
                                      |r $ {} (:at 1629438133036) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629438138776) (:by |B1y7Rc-Zz) (:text |get-shifted-date) (:type :leaf)
                                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:on-close) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                  |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |js/console.error) (:type :leaf)
                                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!") (:type :leaf)
                          |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:on-data) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
          |dispatch! $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
              |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"Dispatch") (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                      |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
              |x $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |ws-send!) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |update-states) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |@*states) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |x $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:effect/connect) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
          |main! $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |x $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |y $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |yT $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |yj $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |yr $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |on-page-touch) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |nil?) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |yv $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"App started!") (:type :leaf)
          |mount-target $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |.querySelector) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\".app") (:type :leaf)
          |on-server-data $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
              |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"unknown server data kind:") (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |js/console.log) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"Changes") (:type :leaf)
                                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |to-js-data) (:type :leaf)
                                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                          |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |patch-twig) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
          |reload! $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |server-errors) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"error") (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |&newline) (:type :leaf)
                          |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |server-errors) (:type :leaf)
                  |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"inactive") (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                      |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                      |x $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |clear-cache!) (:type :leaf)
                      |y $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yT $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yj $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yr $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"Code updated.") (:type :leaf)
          |render-app! $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |@*states) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                  |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
          |simulate-login! $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |.!getItem) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |js/localStorage) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"Found storage.") (:type :leaf)
                          |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:user/log-in) (:type :leaf)
                              |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                  |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"Found no storage.") (:type :leaf)
        :ns $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |app.client) (:type :leaf)
            |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |respo.core) (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |render!) (:type :leaf)
                        |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |clear-cache!) (:type :leaf)
                        |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |realize-ssr!) (:type :leaf)
                |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |respo.cursor) (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |update-states) (:type :leaf)
                |v $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |app.comp.container) (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |comp-container) (:type :leaf)
                |x $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |y $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |yT $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |ws-edn.client) (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |ws-connect!) (:type :leaf)
                        |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |ws-send!) (:type :leaf)
                |yj $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |recollect.patch) (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |patch-twig) (:type :leaf)
                |yr $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |cumulo-util.core) (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |on-page-touch) (:type :leaf)
                |yv $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"url-parse") (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |url-parse) (:type :leaf)
                |yx $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                |yy $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                |yyT $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text "|\"../js-out/calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629428152438) (:by |B1y7Rc-Zz) (:text |server-errors) (:type :leaf)
                |yyj $ {} (:at 1629438144397) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629438146540) (:by |B1y7Rc-Zz) (:text |app.util) (:type :leaf)
                    |j $ {} (:at 1629438147397) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629438147738) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629438148106) (:by |B1y7Rc-Zz) (:text |get-shifted-date) (:type :leaf)
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {} (:at 1500541010211) (:by nil) (:id |rJcN9Iee0Bb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |ryo4cIlgAHZ) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |H1hV5IlxCH-) (:text |comp-container) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |r1aE9IglCB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1CV9UxeCBb) (:text |states) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |SkyrqIglCr-) (:text |store) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |HyxSq8llRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ByZB58exAB-) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkzr9UggCHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by nil) (:id |HJmS5IllASW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJVBcUxx0Bb) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |ByrH5IggAHW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1LScUglRSW) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJvHc8eeAB-) (:text |states) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |ryuSqIllABW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkYrq8lgCHb) (:text |session) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BycSqLllCSW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hksr5IxlCSZ) (:text |:session) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJhS5UxeRBb) (:text |store) (:type :leaf)
                      |r $ {} (:at 1525106928554) (:by |root) (:id |HyYgtpEaG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525106929232) (:by |root) (:id |HyYgtpEaGleaf) (:text |router) (:type :leaf)
                          |j $ {} (:at 1525106929915) (:by |root) (:id |Skg5etaNTM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525106930860) (:by |root) (:id |HyLFeYpEaG) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1525106931558) (:by |root) (:id |HkNigK646z) (:text |store) (:type :leaf)
                      |v $ {} (:at 1525106933346) (:by |root) (:id |Sye6lY64aM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525106935393) (:by |root) (:id |Sye6lY64aMleaf) (:text |router-data) (:type :leaf)
                          |j $ {} (:at 1525106935675) (:by |root) (:id |H1eWtaNTz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525106936827) (:by |root) (:id |r1u1WKTNTz) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1525106937665) (:by |root) (:id |SkMW-tpE6M) (:text |router) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |ByaHq8gxCSW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |S10HqUelASb) (:text |if) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |rJJIc8gg0BZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |ryeLc8egCS-) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |r1-LcUggCrZ) (:text |store) (:type :leaf)
                      |r $ {} (:at 1521951403873) (:by |root) (:id |rJE2zoVqz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521951417580) (:by |root) (:id |HyYZehIDnvM) (:text |comp-offline) (:type :leaf)
                      |v $ {} (:at 1500541010211) (:by nil) (:id |BJGP9LlxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1mvc8lgRH-) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1VPqLxxRrb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJHD5UxeCHZ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1Uwq8gxArb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkwD58ggCr-) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkdw5Lgg0rW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SktwcIxlCS-) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |Hk9PqUlg0Bb) (:text |ui/global) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by |root) (:id |HkjD9Lel0B-) (:text |ui/fullscreen) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by |root) (:id |SJ3vcUegASZ) (:text |ui/column) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |r1pw9LelCr-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1523120265747) (:by |root) (:id |SyAvc8lgCB-) (:text |comp-navigation) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |rkyu9UglRHZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkedq8xxAB-) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJ-_cLge0SW) (:text |store) (:type :leaf)
                              |r $ {} (:at 1523120353961) (:by |root) (:id |BkW5yKdLjM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1523120357277) (:by |root) (:id |SJx9JF_Ljz) (:text |:count) (:type :leaf)
                                  |j $ {} (:at 1523120358953) (:by |root) (:id |rkf6kYOIiM) (:text |store) (:type :leaf)
                              |v $ {} (:at 1525507917308) (:by |root) (:id |SkZB8PyjTG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525507929265) (:by |root) (:id |rkeHUwksaf) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1525507930648) (:by |root) (:id |rJLWvw1oaM) (:text |session) (:type :leaf)
                          |v $ {} (:at 1532453379350) (:by |root) (:id |rksbz1HN7) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1532453380825) (:by |root) (:id |SknZfySEX) (:text |div) (:type :leaf)
                              |L $ {} (:at 1532453381279) (:by |root) (:id |BkmabfJHNm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1532453381663) (:by |root) (:id |BJfp-zJHEQ) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1532453382468) (:by |root) (:id |SJzRbfJSNm) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1532453384538) (:by |root) (:id |HyW0bMyHV7) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1532453813686) (:by |root) (:id |S1gA2QyHEX) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1532453815232) (:by |root) (:id |Bk-03mJHV7) (:text |merge) (:type :leaf)
                                          |L $ {} (:at 1532453816489) (:by |root) (:id |BkE1TmkHVX) (:text |ui/flex) (:type :leaf)
                                          |P $ {} (:at 1532453883226) (:by |root) (:id |rkpgNyBV7) (:text |ui/column) (:type :leaf)
                                          |T $ {} (:at 1532453384847) (:by |root) (:id |SkZbMMJr47) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1532453385763) (:by |root) (:id |SklbzG1B47) (:text |{}) (:type :leaf)
                                              |x $ {} (:at 1532453819796) (:by |root) (:id |r1467yHVQ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1532453821276) (:by |root) (:id |r1467yHVQleaf) (:text |:overflow) (:type :leaf)
                                                  |j $ {} (:at 1532453822930) (:by |root) (:id |rkrSpXJBNX) (:text |:auto) (:type :leaf)
                                              |y $ {} (:at 1532453884750) (:by |root) (:id |ryHZEJr4Q) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1532453887934) (:by |root) (:id |ryHZEJr4Qleaf) (:text |:align-items) (:type :leaf)
                                                  |j $ {} (:at 1532453889821) (:by |root) (:id |rJ4OZ4JBVQ) (:text |:center) (:type :leaf)
                                              |yT $ {} (:at 1525195012561) (:by |root) (:id |Sk6ZbmIpz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525195013487) (:by |root) (:id |r1UnZ-78TG) (:text |:padding) (:type :leaf)
                                                  |j $ {} (:at 1525195014227) (:by |root) (:id |rJR-ZmIaG) (:text |16) (:type :leaf)
                                              |yj $ {} (:at 1527096599332) (:by |root) (:id |SJbJXHX71Q) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1527096602617) (:by |root) (:id |SJbJXHX71Qleaf) (:text |:padding-bottom) (:type :leaf)
                                                  |j $ {} (:at 1527096604155) (:by |root) (:id |HkW7QS7XkQ) (:text |200) (:type :leaf)
                              |T $ {} (:at 1500541010211) (:by nil) (:id |rkXYc8ll0SW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HJVYcUxlRrZ) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |S1rK5UggABZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkUtqUxg0HZ) (:text |:logged-in?) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |r1Dtq8lxArb) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |BJl4-FpETz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985911738) (:by |B1y7Rc-Zz) (:id |rkbqq8xgAHb) (:text |case-default) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |rkz5q8eeRH-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HJX958ggAS-) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |HkE558leAH-) (:text |router) (:type :leaf)
                                      |l $ {} (:at 1636985912798) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636985912798) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1636985912798) (:by |B1y7Rc-Zz) (:text |router) (:type :leaf)
                                      |n $ {} (:at 1525106918943) (:by |root) (:id |H11lKp4Tz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525106921967) (:by |root) (:id |H11lKp4Tzleaf) (:text |:home) (:type :leaf)
                                          |j $ {} (:at 1525195062982) (:by |root) (:id |r1e1H-Q8TM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525195064511) (:by |root) (:id |HkkrbmIaM) (:text |comp-today) (:type :leaf)
                                              |b $ {} (:at 1525368520489) (:by |root) (:id |rk-vCUTupM) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525368522256) (:by |root) (:id |BkxJAIaOpf) (:text |:date) (:type :leaf)
                                                  |j $ {} (:at 1525508374835) (:by |root) (:id |SkmC8p_6f) (:text |session) (:type :leaf)
                                              |j $ {} (:at 1525368501185) (:by |root) (:id |rkT28p_pf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525368507022) (:by |root) (:id |BJMnhUT_Tf) (:text |:plan) (:type :leaf)
                                                  |j $ {} (:at 1525368512282) (:by |root) (:id |HyE6LT_6f) (:text |router-data) (:type :leaf)
                                              |r $ {} (:at 1629435175149) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1629435175966) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                                  |T $ {} (:at 1525368512829) (:by |root) (:id |rJgYT8aupM) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525368514396) (:by |root) (:id |HkKTU6upG) (:text |:operations) (:type :leaf)
                                                      |j $ {} (:at 1525368517187) (:by |root) (:id |rJjTIa_6z) (:text |router-data) (:type :leaf)
                                                  |j $ {} (:at 1629435176590) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629435177038) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |p $ {} (:at 1525194983977) (:by |root) (:id |rJlgWQIpG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525194985474) (:by |root) (:id |rJlgWQIpGleaf) (:text |:plan) (:type :leaf)
                                          |j $ {} (:at 1525194986189) (:by |root) (:id |Byxfe-XU6z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525194987461) (:by |root) (:id |HJzgZXLaf) (:text |comp-plan) (:type :leaf)
                                              |b $ {} (:at 1528219579183) (:by |root) (:id |BJbfawHEgX) (:text |states) (:type :leaf)
                                              |j $ {} (:at 1525282260073) (:by |root) (:id |Bkm0ruwTz) (:text |router-data) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |rJH998xlAH-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |H1LqqUexArZ) (:text |:profile) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |B1v5cLxgASb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJd95UxlRHZ) (:text |comp-profile) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |ByF99IxlCBZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJq558xxRBZ) (:text |:user) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |HJo558lxAH-) (:text |store) (:type :leaf)
                                              |r $ {} (:at 1525282267309) (:by |root) (:id |r1-f18Ovaf) (:text |router-data) (:type :leaf)
                                      |u $ {} (:at 1525538607797) (:by |root) (:id |HkOVkvjaf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525538611828) (:by |root) (:id |HkOVkvjafleaf) (:text |:history) (:type :leaf)
                                          |j $ {} (:at 1525538612219) (:by |root) (:id |SkzhNyPjTf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525538616070) (:by |root) (:id |Hy-3NyPjTz) (:text |comp-history) (:type :leaf)
                                              |j $ {} (:at 1525538617030) (:by |root) (:id |H1ZSkPspG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525538617872) (:by |root) (:id |Sy4lHkws6G) (:text |:plan) (:type :leaf)
                                                  |j $ {} (:at 1525538632131) (:by |root) (:id |BJmGS1woTG) (:text |router-data) (:type :leaf)
                                              |r $ {} (:at 1525538620881) (:by |root) (:id |BJxBHkwiTM) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525538624633) (:by |root) (:id |BJxBHkwiTMleaf) (:text |:days) (:type :leaf)
                                                  |j $ {} (:at 1525538627930) (:by |root) (:id |Bk-FHJwiaG) (:text |router-data) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by nil) (:id |BkciqUxgRrZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |BysicIxgAHW) (:text |comp-login) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkhocIleRrb) (:text |states) (:type :leaf)
                          |w $ {} (:at 1524279203814) (:by |root) (:id |S1hsPmOnM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524279211924) (:by |root) (:id |S1hsPmOnMleaf) (:text |comp-status-color) (:type :leaf)
                              |j $ {} (:at 1524279213788) (:by |root) (:id |Bk83D7Ohf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279214588) (:by |root) (:id |H1BhwXu3M) (:text |:color) (:type :leaf)
                                  |j $ {} (:at 1524279215366) (:by |root) (:id |SyevnPQ_nf) (:text |store) (:type :leaf)
                          |x $ {} (:at 1521911488967) (:by |root) (:id |B1gKaUWV5M) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521911509225) (:by |root) (:id |Sk-tpU-Vcf) (:text |when) (:type :leaf)
                              |L $ {} (:at 1521911495407) (:by |root) (:id |H1xk08W4cG) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1500541010211) (:by nil) (:id |S16oqUeeASb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkAi58lx0S-) (:text |comp-inspect) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |HJkhq8gxRrb) (:text ||Store) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |Skln58ge0rb) (:text |store) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by nil) (:id |r1fqzo4cM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SyeT5UllASZ) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |SJZ6qUleRS-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |ryfp9IxgABW) (:text |:bottom) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |Skma9UglRr-) (:text |0) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |r1V65Ixl0HW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkBp9LllArb) (:text |:left) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |ryIpcIggCrb) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |SJv6q8xeAH-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HJ_acUlgCrZ) (:text |:max-width) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |BkYpc8ee0B-) (:text ||100%) (:type :leaf)
                          |y $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |ulbrkOTF9p) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |Wg2n0493Kr) (:text |comp-messages) (:type :leaf)
                              |j $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |7_LyIAD41l) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |HFEJOmtmrd) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |5MJY_f2wlW) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |XjYxmsim4h) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |97M_Ik1LNi) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |8vwqVNS7N_) (:text |:session) (:type :leaf)
                                      |r $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |kOiJzPRLde) (:text |:messages) (:type :leaf)
                              |r $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |CJY_5rZv4h) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |eucjWbnLPw) (:text |{}) (:type :leaf)
                              |v $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |KHW2Izi_fu) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |lj3EZYRlR0) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |GxFLd1WeN2) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |K4dds1qPiu) (:text |info) (:type :leaf)
                                      |j $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |2OCcXhnIPsl) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |ubA3o6uHsT4) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |Ze4Aa8utVjz) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |24nZ2evdzhV) (:text |:session/remove-message) (:type :leaf)
                                      |r $ {} (:at 1544119245510) (:by |B1y7Rc-Zz) (:id |zWBCZE_ra0m) (:text |info) (:type :leaf)
                          |yT $ {} (:at 1521911502552) (:by |root) (:id |rkvCI-NcM) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521911507241) (:by |root) (:id |rkgPCLW49z) (:text |when) (:type :leaf)
                              |L $ {} (:at 1521911504664) (:by |root) (:id |S1-_CLWN5M) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1507828710405) (:by |root) (:id |BJgRkVX62W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507828712159) (:by |root) (:id |BJgRkVX62Wleaf) (:text |comp-reel) (:type :leaf)
                                  |j $ {} (:at 1507829101137) (:by |root) (:id |HylruBmT3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830262253) (:by |root) (:id |HyBgV7T2Z) (:text |:reel-length) (:type :leaf)
                                      |j $ {} (:at 1507829104010) (:by |root) (:id |S1MvOr7a2Z) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1507828721052) (:by |root) (:id |ByteVmTnZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507828722268) (:by |root) (:id |ByxdeN7anb) (:text |{}) (:type :leaf)
          |comp-offline $ {} (:at 1519314599832) (:by |root) (:id |rJlxhID3DM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521951399872) (:by |root) (:id |HkWenLP2vM) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1519314599832) (:by |root) (:id |BJGx2Iv2Pz) (:text |comp-offline) (:type :leaf)
              |n $ {} (:at 1521951400852) (:by |root) (:id |r1lZnMsV9z) (:type :expr)
                :data $ {}
              |r $ {} (:at 1519314599832) (:by |root) (:id |rkQx2Lv3vz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1519314599832) (:by |root) (:id |S14ghIw3Pf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1519314599832) (:by |root) (:id |H1Sx2Lw3PM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519314599832) (:by |root) (:id |ByIghIvhwG) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:id |rkDg2ID3DM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |HJueh8whDf) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:id |B1FenUDnPM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |SJcxhUvnvG) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:id |SJogn8whDG) (:text |ui/global) (:type :leaf)
                              |r $ {} (:at 1519314599832) (:by |root) (:id |Syhe3IwnDf) (:text |ui/fullscreen) (:type :leaf)
                              |v $ {} (:at 1519314599832) (:by |root) (:id |S1penIvhwM) (:text |ui/center) (:type :leaf)
                  |r $ {} (:at 1519314599832) (:by |root) (:id |HyRx3IDnPM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519314599832) (:by |root) (:id |SJkll2LP2wM) (:text |span) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:id |BJgex3Lw3Pf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |HkbeenIw3wf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:id |Syfgx28wnPf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |Symgxn8v2vG) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:id |rkVlg3LDnDG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519314599832) (:by |root) (:id |SkHxlhUv2vz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519314599832) (:by |root) (:id |H1Lgg3UwhPz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314599832) (:by |root) (:id |S1Pee2UD3wz) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:id |HyOgl2IvnPM) (:text |:pointer) (:type :leaf)
                          |r $ {} (:at 1519314599832) (:by |root) (:id |SkKle2LPnvf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |Hy9xl28D2PG) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1608354033215) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1608354033839) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1608354034318) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608354034536) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1608354035082) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1519314599832) (:by |root) (:id |S1mufs49z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608354032666) (:by |B1y7Rc-Zz) (:id |r1GZl2Lw2wG) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:id |rkmZln8v2wG) (:text |:effect/connect) (:type :leaf)
                                      |r $ {} (:at 1519314599832) (:by |root) (:id |HJNWe28w3wG) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1519314599832) (:by |root) (:id |r1r-lhLPnvf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |r1Ube2LP2PM) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1521911618586) (:by |root) (:id |r1DWxhIP3wG) (:text "||Socket broken! Click to retry.") (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ryuSziE9f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HkxN5IggCSZ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BkZ4qUxgABZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |ByzE9Lxe0BW) (:text |:font-family) (:type :leaf)
                                  |j $ {} (:at 1521951303103) (:by |root) (:id |Skm4cUlgRrZ) (:text |ui/font-fancy) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |rk4NcIlxRBb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkrV9Ile0BZ) (:text |:font-weight) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |r18N9UlxASZ) (:text |100) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |ByvVqIxlCBW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkuNcLlxRrW) (:text |:font-size) (:type :leaf)
                                  |j $ {} (:at 1521911624171) (:by |root) (:id |SJYNcUxxASZ) (:text |32) (:type :leaf)
          |comp-status-color $ {} (:at 1524279216692) (:by |root) (:id |Sket2DQd3f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1524279218316) (:by |root) (:id |S1ZK3DXd3G) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1524279216692) (:by |root) (:id |SkzYhwm_3f) (:text |comp-status-color) (:type :leaf)
              |r $ {} (:at 1524279216692) (:by |root) (:id |SkmYnwXdnM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279220380) (:by |root) (:id |HkWi3Dmd2G) (:text |color) (:type :leaf)
              |v $ {} (:at 1524279221052) (:by |root) (:id |rJgTnPmu2G) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279221503) (:by |root) (:id |rJgTnPmu2Gleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1524279221753) (:by |root) (:id |rJlA3DXOhf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524279222145) (:by |root) (:id |ByA3Dm_2f) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1524279222434) (:by |root) (:id |r1ER2vQ_3G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524279223333) (:by |root) (:id |BJmAnP7_nz) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1524279223555) (:by |root) (:id |SyeTD7dnz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524279223903) (:by |root) (:id |H1S1TD7_2z) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1524279224175) (:by |root) (:id |r1XlTDX_nf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279228958) (:by |root) (:id |BJMlTDQu3z) (:text |:width) (:type :leaf)
                                  |j $ {} (:at 1524279231127) (:by |root) (:id |HJIpvXuhG) (:text |16) (:type :leaf)
                              |r $ {} (:at 1524279231457) (:by |root) (:id |rJfDavmu3G) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279232432) (:by |root) (:id |rJfDavmu3Gleaf) (:text |:height) (:type :leaf)
                                  |j $ {} (:at 1524279233093) (:by |root) (:id |ByLuavmu3M) (:text |16) (:type :leaf)
                              |v $ {} (:at 1524279233724) (:by |root) (:id |SycaPQO2f) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1524279242067) (:by |root) (:id |rJxCP7d2f) (:text |:position) (:type :leaf)
                                  |T $ {} (:at 1524279236076) (:by |root) (:id |SycaPQO2fleaf) (:text |:absolute) (:type :leaf)
                              |x $ {} (:at 1524279242693) (:by |root) (:id |B1QAPmuhG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279243242) (:by |root) (:id |B1QAPmuhGleaf) (:text |:top) (:type :leaf)
                                  |j $ {} (:at 1524279295251) (:by |root) (:id |HyN0DXu3G) (:text |60) (:type :leaf)
                              |y $ {} (:at 1524279244626) (:by |root) (:id |SyxSAwm_2z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279287953) (:by |root) (:id |SyxSAwm_2zleaf) (:text |:right) (:type :leaf)
                                  |j $ {} (:at 1524279252706) (:by |root) (:id |r1aCw7d2f) (:text |8) (:type :leaf)
                              |yT $ {} (:at 1524279259074) (:by |root) (:id |S1eXJd7_3G) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279265891) (:by |root) (:id |S1eXJd7_3Gleaf) (:text |:background-color) (:type :leaf)
                                  |j $ {} (:at 1524279319762) (:by |root) (:id |S1WkQuQuhz) (:text |color) (:type :leaf)
                              |yj $ {} (:at 1524279300007) (:by |root) (:id |B1e3Z_Xd2M) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279306393) (:by |root) (:id |B1e3Z_Xd2Mleaf) (:text |:border-radius) (:type :leaf)
                                  |j $ {} (:at 1524279308692) (:by |root) (:id |Hy7f_md3z) (:text "|\"8px") (:type :leaf)
                              |yr $ {} (:at 1524279322054) (:by |root) (:id |BkxzQO7_3G) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279323711) (:by |root) (:id |BkxzQO7_3Gleaf) (:text |:opacity) (:type :leaf)
                                  |j $ {} (:at 1524279325473) (:by |root) (:id |B1-VXdQ_3G) (:text |0.8) (:type :leaf)
          |style-body $ {} (:at 1500541010211) (:by nil) (:id |ry965UlxRH-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |rkoaq8ge0BW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |Sk2p9UxgRBW) (:text |style-body) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |BJ66q8egCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1ApqUxg0B-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJJR9Ueg0HZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Sye0cIle0B-) (:text |:padding) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkWR58eeCHZ) (:text "||8px 16px") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |B15IxeRH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |SJxc8xl0HZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |SkZcLgxAB-) (:text |app.comp.container) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SkCq8lx0rb) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HyJlqLelRBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |SylgqLee0B-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SkZlcUgg0B-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629428734733) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJQlcUlgRr-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |By4lc8gxCB-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkHx5LxeRS-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJIlq8leCBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryvl5IllRSb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |B1dg5UeeRSW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547378489) (:by |root) (:id |H1Fgc8egCSW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |Hy9x5IeeASW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |rkoe5LxlCBW) (:text |ui) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |B1gpZxc3yG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1B9Ueg0Sb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |H189Igg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HJw9LexRS-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1_98eeRSb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkKcLxeRHW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkqqIggASZ) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SysqUxxRH-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |Bkh9UglCrZ) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |BkaqLel0H-) (:text |span) (:type :leaf)
                        |y $ {} (:at 1507815955483) (:by |root) (:id |ryjGzeahb) (:text |button) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |rJu-cIxlRSZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1FW9UegCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |By9-qLxlRHW) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1oZq8gl0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |rk2ZqUlx0SZ) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |S1T-5UggAB-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SJ0bqLggCH-) (:text |comp-inspect) (:type :leaf)
                |yD $ {} (:at 1507816109319) (:by |root) (:id |Sklr2Mg6n-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1507816109737) (:by |root) (:id |Sklr2Mg6n-leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1507816117447) (:by |root) (:id |SkbLhMlp3b) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507816112686) (:by |root) (:id |H1GOhGephb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507816113982) (:by |root) (:id |rk-53Mlah-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1507816114106) (:by |root) (:id |rk-Y2zgTnW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1507816114704) (:by |root) (:id |SyN5nGgThZ) (:text |=<) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |H1kGc8glRHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SJlM5UxgRBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120275079) (:by |root) (:id |B1-f5UgeABb) (:text |app.comp.navigation) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkzM98gxRrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Bymz5LglArW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkEzcLxgAB-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120276563) (:by |root) (:id |rkBfcLggCBb) (:text |comp-navigation) (:type :leaf)
                |yj $ {} (:at 1500541010211) (:by nil) (:id |HJ8M5UeeCS-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SyvGq8leRHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |H1_fq8geCHb) (:text |app.comp.profile) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |ryFz9LglCHb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |r1qfqUlxASb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |SysM5LegCBW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H12z9LxxCHW) (:text |comp-profile) (:type :leaf)
                |yr $ {} (:at 1500541010211) (:by nil) (:id |Bypz9LxxRSW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HyAG9Uel0B-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |Hkk7qUgxAr-) (:text |app.comp.login) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJg798xxAHW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJ-m9Ueg0SW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1zm5IxxCrb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |r1Qmq8gxCrW) (:text |comp-login) (:type :leaf)
                |yv $ {} (:at 1500541010211) (:by nil) (:id |SyE7qLleCHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJrm9LelAr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1544119190083) (:by |B1y7Rc-Zz) (:id |HkIQ9Iel0Hb) (:text |respo-message.comp.messages) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |ryv7cIgeCrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hk_7c8eg0rW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJY7cIlgRrW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1544119194109) (:by |B1y7Rc-Zz) (:id |BJcQcUxxASW) (:text |comp-messages) (:type :leaf)
                |yx $ {} (:at 1507828725931) (:by |root) (:id |BklAlV7a2Z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1507828726338) (:by |root) (:id |BklAlV7a2Zleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1544119154442) (:by |B1y7Rc-Zz) (:id |ry7AeNmT3b) (:text |cumulo-reel.comp.reel) (:type :leaf)
                    |r $ {} (:at 1507828731528) (:by |root) (:id |H1bQW4762Z) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507828731735) (:by |root) (:id |Sk-NbNmT3W) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1507828731987) (:by |root) (:id |r1e4ZN7a3b) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1507828733743) (:by |root) (:id |Bk44ZNXT2Z) (:text |comp-reel) (:type :leaf)
                |yy $ {} (:at 1521911479054) (:by |root) (:id |BygkTL-EqM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1521911480104) (:by |root) (:id |BygkTL-EqMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608356174420) (:by |B1y7Rc-Zz) (:id |SJMe6IZ45z) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1521911483589) (:by |root) (:id |B1GaI-V5M) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521911483778) (:by |root) (:id |BJb4T8ZNcM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1521911483935) (:by |root) (:id |HJeEpLbVqz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1521911485489) (:by |root) (:id |rJ4V6Lb49f) (:text |dev?) (:type :leaf)
                |yyT $ {} (:at 1525194994472) (:by |root) (:id |rJ-9lb7IaM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525194994797) (:by |root) (:id |rJ-9lb7IaMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1525194999231) (:by |root) (:id |S1-oeWXLaM) (:text |app.comp.plan) (:type :leaf)
                    |r $ {} (:at 1525195000698) (:by |root) (:id |HkfkWZ7IaM) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1525195000902) (:by |root) (:id |SyzZ--7Upf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1525195001803) (:by |root) (:id |SJWb-ZmUTG) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1525195004300) (:by |root) (:id |rkezWbX8pz) (:text |comp-plan) (:type :leaf)
                |yyj $ {} (:at 1525195067807) (:by |root) (:id |B1gVHZ7ITz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525195068160) (:by |root) (:id |B1gVHZ7ITzleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1525195070303) (:by |root) (:id |rJm4rW7U6M) (:text |app.comp.today) (:type :leaf)
                    |r $ {} (:at 1525195071227) (:by |root) (:id |BkwS-mIpG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1525195071439) (:by |root) (:id |ryPvB-mIaM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1525195071651) (:by |root) (:id |BJLvrbXUaM) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1525195072104) (:by |root) (:id |Hyz_S-QIaM) (:text |comp-today) (:type :leaf)
                |yyr $ {} (:at 1525195067807) (:by |root) (:id |rke1-1PiTM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525195068160) (:by |root) (:id |B1gVHZ7ITzleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1525538591351) (:by |root) (:id |rJm4rW7U6M) (:text |app.comp.history) (:type :leaf)
                    |r $ {} (:at 1525195071227) (:by |root) (:id |BkwS-mIpG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1525195071439) (:by |root) (:id |ryPvB-mIaM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1525195071651) (:by |root) (:id |BJLvrbXUaM) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1525538595036) (:by |root) (:id |Hyz_S-QIaM) (:text |comp-history) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |S1om9LgxCBZ) (:type :expr)
          :data $ {}
      |app.comp.history $ {}
        :defs $ {}
          |comp-history $ {} (:at 1525538489491) (:by |root) (:id |rylbT0Uoaf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525538491713) (:by |root) (:id |rybW6CLsaG) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1525538489491) (:by |root) (:id |BJz-6RLoaf) (:text |comp-history) (:type :leaf)
              |r $ {} (:at 1525538489491) (:by |root) (:id |SyQZTCLj6z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525538493784) (:by |root) (:id |SkSp08oTG) (:text |plan) (:type :leaf)
                  |j $ {} (:at 1525538495092) (:by |root) (:id |ByeI6R8sTf) (:text |days) (:type :leaf)
              |v $ {} (:at 1525538496052) (:by |root) (:id |rked6CUs6z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525538496529) (:by |root) (:id |rked6CUs6zleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1525538497302) (:by |root) (:id |HkbKaCIo6M) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525538497719) (:by |root) (:id |B1eYTA8spz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1526139078159) (:by |root) (:id |rk-Rp_tE0f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1526139081791) (:by |root) (:id |HkeC6uYVRf) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1526139128139) (:by |root) (:id |ryeZtFECf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1526139129205) (:by |root) (:id |B1lxWFFECz) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1526139091117) (:by |root) (:id |S14SCdKNRf) (:text |ui/column) (:type :leaf)
                              |j $ {} (:at 1608544689560) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608544690284) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1608544690623) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608544691534) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1608700856987) (:by |B1y7Rc-Zz) (:text "|\"60%") (:type :leaf)
                  |r $ {} (:at 1525538678473) (:by |root) (:id |S1W0_kvipG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1525538679335) (:by |root) (:id |rkyKkwjpf) (:text |div) (:type :leaf)
                      |L $ {} (:at 1525538680830) (:by |root) (:id |SkeWFJPs6G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525538681262) (:by |root) (:id |BkbtyDiaz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1525538682570) (:by |root) (:id |S1QtkDspG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525538683552) (:by |root) (:id |HyzFyvjTM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1525538761671) (:by |root) (:id |Skf01Djaz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525538762293) (:by |root) (:id |HkbZ01vsaG) (:text |merge) (:type :leaf)
                                  |j $ {} (:at 1525538769556) (:by |root) (:id |SyBMCyvspG) (:text |style/title) (:type :leaf)
                                  |r $ {} (:at 1525539789264) (:by |root) (:id |SJzSCQvoTM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525539789658) (:by |root) (:id |SJZSCQDsaz) (:text |{}) (:type :leaf)
                      |T $ {} (:at 1525538499017) (:by |root) (:id |Sk-spCIiaf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525538500282) (:by |root) (:id |Sk-spCIiafleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1525538502244) (:by |root) (:id |rkW3a08o6M) (:text "|\"History") (:type :leaf)
                  |v $ {} (:at 1525538808928) (:by |root) (:id |Bkx-bevoaM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525538810774) (:by |root) (:id |Bkx-bevoaMleaf) (:text |list->) (:type :leaf)
                      |j $ {} (:at 1525538811474) (:by |root) (:id |r1ZQ-ewi6f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525538811994) (:by |root) (:id |r1lXbgvjpM) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1526139060134) (:by |root) (:id |BkZ3n_F4CM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1526139062567) (:by |root) (:id |Sylh3dKE0f) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1526139074858) (:by |root) (:id |BJlsT_YEAf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1526139075746) (:by |root) (:id |HJWiadFNCf) (:text |merge) (:type :leaf)
                                  |L $ {} (:at 1526139077218) (:by |root) (:id |Hybh6uF4CG) (:text |ui/flex) (:type :leaf)
                                  |T $ {} (:at 1526139066040) (:by |root) (:id |r1xzaut4AM) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1526139066686) (:by |root) (:id |S1WGa_YVAz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1526139139563) (:by |root) (:id |Hk3ZFYE0G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1526139142934) (:by |root) (:id |Hk3ZFYE0Gleaf) (:text |:padding-bottom) (:type :leaf)
                                          |j $ {} (:at 1526139149639) (:by |root) (:id |SkmJfttEAz) (:text |160) (:type :leaf)
                      |r $ {} (:at 1525538813382) (:by |root) (:id |SJWBZgDo6z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629431288648) (:by |B1y7Rc-Zz) (:id |SJWBZgDo6zleaf) (:text |->) (:type :leaf)
                          |j $ {} (:at 1525538819172) (:by |root) (:id |r19-evjaM) (:text |days) (:type :leaf)
                          |l $ {} (:at 1629432209255) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629432209757) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                              |j $ {} (:at 1629432210101) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629435286132) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |m $ {} (:at 1629435287907) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629435289357) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                          |n $ {} (:at 1526139052951) (:by |root) (:id |BkgBhdtVCG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629431290086) (:by |B1y7Rc-Zz) (:id |BkgBhdtVCGleaf) (:text |.sort) (:type :leaf)
                              |j $ {} (:at 1526139179178) (:by |root) (:id |H1emNKFVRG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1526139180608) (:by |root) (:id |Sy7NKFERM) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1526139180892) (:by |root) (:id |SkzHVFFEAz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1526139227511) (:by |root) (:id |r1bSVFF4AM) (:text |date-x) (:type :leaf)
                                      |j $ {} (:at 1629431460877) (:by |B1y7Rc-Zz) (:text |date-y) (:type :leaf)
                                  |r $ {} (:at 1526139232952) (:by |root) (:id |SylFwKF4Rz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431301374) (:by |B1y7Rc-Zz) (:id |SylFwKF4Rzleaf) (:text |&compare) (:type :leaf)
                                      |j $ {} (:at 1629431302435) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629431303879) (:by |B1y7Rc-Zz) (:text |first) (:type :leaf)
                                          |T $ {} (:at 1526139245136) (:by |root) (:id |rJ2wtKE0z) (:text |date-y) (:type :leaf)
                                      |r $ {} (:at 1629431305767) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629431306817) (:by |B1y7Rc-Zz) (:text |first) (:type :leaf)
                                          |T $ {} (:at 1526139238888) (:by |root) (:id |BygAwFYEAG) (:text |date-x) (:type :leaf)
                          |r $ {} (:at 1525538819530) (:by |root) (:id |rkhWxvjTM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629431291700) (:by |B1y7Rc-Zz) (:id |Hyms-lvjpG) (:text |.map) (:type :leaf)
                              |j $ {} (:at 1525538821727) (:by |root) (:id |Syg0WlviTf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525538822190) (:by |root) (:id |SkAZlviaf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1525538822476) (:by |root) (:id |SJEA-gwj6f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431342438) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                  |r $ {} (:at 1629431332714) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629431334601) (:by |B1y7Rc-Zz) (:text |let[]) (:type :leaf)
                                      |L $ {} (:at 1629431334905) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629431337269) (:by |B1y7Rc-Zz) (:text |date) (:type :leaf)
                                          |j $ {} (:at 1629431339125) (:by |B1y7Rc-Zz) (:text |operations) (:type :leaf)
                                      |P $ {} (:at 1629431468760) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |T $ {} (:at 1525538831490) (:by |root) (:id |rJzDMgDjTz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525538833152) (:by |root) (:id |rJzDMgDjTzleaf) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1525538834202) (:by |root) (:id |SyWKMlPopf) (:text |date) (:type :leaf)
                                          |r $ {} (:at 1525538873579) (:by |root) (:id |rJzSxvjaz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525538888126) (:by |root) (:id |rJzSxvjazleaf) (:text |comp-records) (:type :leaf)
                                              |b $ {} (:at 1525538982610) (:by |root) (:id |HyAjgPjTz) (:text |plan) (:type :leaf)
                                              |j $ {} (:at 1525538891955) (:by |root) (:id |Byz8gDi6M) (:text |date) (:type :leaf)
                                              |r $ {} (:at 1525538895742) (:by |root) (:id |SJWVLxvoaG) (:text |operations) (:type :leaf)
          |comp-records $ {} (:at 1525538897199) (:by |root) (:id |H1bKLxws6G) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525538899338) (:by |root) (:id |HyfFIevjaf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1525538897199) (:by |root) (:id |S17YIewjaz) (:text |comp-records) (:type :leaf)
              |r $ {} (:at 1525538897199) (:by |root) (:id |ByNt8xvj6z) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1525538985489) (:by |root) (:id |rygb2lDiaG) (:text |plan) (:type :leaf)
                  |T $ {} (:at 1525538900666) (:by |root) (:id |SyZhIlvs6f) (:text |date) (:type :leaf)
                  |j $ {} (:at 1525538902446) (:by |root) (:id |rybTIgPsaf) (:text |operations) (:type :leaf)
              |v $ {} (:at 1525538903194) (:by |root) (:id |B1-1vePj6M) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525538906795) (:by |root) (:id |B1-1vePj6Mleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1525538907021) (:by |root) (:id |H1QXwxPi6f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525538907471) (:by |root) (:id |HkGQPevspf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1525539758417) (:by |root) (:id |r1-837Dipf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525539759356) (:by |root) (:id |SygI2QDjpM) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1525539759591) (:by |root) (:id |H1d2mviaf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525539760606) (:by |root) (:id |BJ8v3XPopf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1525539775623) (:by |root) (:id |B1uTmPoaG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525539776999) (:by |root) (:id |ryxwp7Dopz) (:text |:padding) (:type :leaf)
                                  |j $ {} (:at 1608544787363) (:by |B1y7Rc-Zz) (:id |HJXF6XDi6f) (:text "|\"8px 0") (:type :leaf)
                  |r $ {} (:at 1525538909044) (:by |root) (:id |ByerDgDiaG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525538911002) (:by |root) (:id |ByerDgDiaGleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1525538911197) (:by |root) (:id |Sy7PDxwoaM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525538913108) (:by |root) (:id |rJfwPews6G) (:text |{}) (:type :leaf)
                      |r $ {} (:at 1525538913782) (:by |root) (:id |HkgqPewopz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525538915321) (:by |root) (:id |HkgqPewopzleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1525538915947) (:by |root) (:id |SybovgDj6z) (:text |date) (:type :leaf)
                  |v $ {} (:at 1525538930463) (:by |root) (:id |rkM9ulPsaM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525538933708) (:by |root) (:id |rkM9ulPsaMleaf) (:text |list->) (:type :leaf)
                      |j $ {} (:at 1525538934563) (:by |root) (:id |B1kYgDspf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525538934903) (:by |root) (:id |B1-AOlwsaM) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1525539744326) (:by |root) (:id |ByZusmwoaf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525539745957) (:by |root) (:id |BkgdjQDoaM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1525539746250) (:by |root) (:id |B1f9i7PjaG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525539747180) (:by |root) (:id |S1WciXDs6f) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1525539747499) (:by |root) (:id |B1GioXwspf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525539751599) (:by |root) (:id |SkbosmwsTM) (:text |:padding-left) (:type :leaf)
                                      |j $ {} (:at 1525539752833) (:by |root) (:id |r1le3QDi6f) (:text |16) (:type :leaf)
                      |r $ {} (:at 1525538972488) (:by |root) (:id |ryEjevjaM) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1629431349862) (:by |B1y7Rc-Zz) (:id |rkSjgPs6f) (:text |->) (:type :leaf)
                          |L $ {} (:at 1525538976209) (:by |root) (:id |BJPjxPiTG) (:text |operations) (:type :leaf)
                          |P $ {} (:at 1629439912974) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629439914541) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                          |T $ {} (:at 1525538935332) (:by |root) (:id |r1m1Fgvipz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525538937588) (:by |root) (:id |r1m1Fgvipzleaf) (:text |map) (:type :leaf)
                              |j $ {} (:at 1525538938137) (:by |root) (:id |BkMztlvjpf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525538938418) (:by |root) (:id |SybftxwopG) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1525538940836) (:by |root) (:id |HkrFlPi6z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431366121) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                  |r $ {} (:at 1525539005924) (:by |root) (:id |SyeLTgDjaM) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629431377231) (:by |B1y7Rc-Zz) (:id |ryWIpewj6f) (:text |let-sugar) (:type :leaf)
                                      |L $ {} (:at 1525539006877) (:by |root) (:id |SJGDaewoTM) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629431361655) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629431360326) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629431360326) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1629431360326) (:by |B1y7Rc-Zz) (:text |task-id) (:type :leaf)
                                                  |r $ {} (:at 1629431360326) (:by |B1y7Rc-Zz) (:text |info) (:type :leaf)
                                              |j $ {} (:at 1629431364007) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |T $ {} (:at 1525539007052) (:by |root) (:id |BJmPpewj6M) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525539011447) (:by |root) (:id |HJ-w6xwiTf) (:text |task) (:type :leaf)
                                              |j $ {} (:at 1525539011796) (:by |root) (:id |BJl3axDspG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525539134507) (:by |root) (:id |Sknalvs6G) (:text |first) (:type :leaf)
                                                  |j $ {} (:at 1525539134816) (:by |root) (:id |HyeDHWwj6f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525539135590) (:by |root) (:id |SkPrZPsaM) (:text |filter) (:type :leaf)
                                                      |b $ {} (:at 1629439823179) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629439825434) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                                          |j $ {} (:at 1629439823179) (:by |B1y7Rc-Zz) (:text |plan) (:type :leaf)
                                                          |n $ {} (:at 1629439832691) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629439835675) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                                          |r $ {} (:at 1629439826316) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629439827698) (:by |B1y7Rc-Zz) (:text |.map) (:type :leaf)
                                                              |j $ {} (:at 1629439831648) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                                      |j $ {} (:at 1525539156070) (:by |root) (:id |Hkb2Lbwipf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525539156151) (:by |root) (:id |Hk2I-Pj6M) (:text |fn) (:type :leaf)
                                                          |j $ {} (:at 1525539157398) (:by |root) (:id |Hkg68Zwo6M) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525539182636) (:by |root) (:id |B1x8_bDjaz) (:text |task) (:type :leaf)
                                                          |r $ {} (:at 1525539183513) (:by |root) (:id |HJGvdWPsTM) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525539183907) (:by |root) (:id |HJGvdWPsTMleaf) (:text |=) (:type :leaf)
                                                              |j $ {} (:at 1525539186674) (:by |root) (:id |HkF_bvj6M) (:text |task-id) (:type :leaf)
                                                              |r $ {} (:at 1525539187140) (:by |root) (:id |B1fjuWPjpG) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1525539187679) (:by |root) (:id |r1Zo_bDoTf) (:text |:id) (:type :leaf)
                                                                  |j $ {} (:at 1525539188172) (:by |root) (:id |Sk-hu-PjpM) (:text |task) (:type :leaf)
                                      |T $ {} (:at 1525538952014) (:by |root) (:id |Hye9lPs6G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525538953782) (:by |root) (:id |Hye9lPs6Gleaf) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1525538956496) (:by |root) (:id |HJeMqgPi6M) (:text |task-id) (:type :leaf)
                                          |r $ {} (:at 1525539228177) (:by |root) (:id |S1W4o-PjaM) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1525539228887) (:by |root) (:id |S1M4sZvspM) (:text |div) (:type :leaf)
                                              |L $ {} (:at 1525539229103) (:by |root) (:id |BJmHoZPjaG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525539230378) (:by |root) (:id |ryMHsbPjTz) (:text |{}) (:type :leaf)
                                              |T $ {} (:at 1525538961565) (:by |root) (:id |S15cePsTM) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525539200667) (:by |root) (:id |HJlt5lPiTM) (:text |if) (:type :leaf)
                                                  |j $ {} (:at 1525541199967) (:by |root) (:id |SyxuIKPs6G) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1525541200802) (:by |root) (:id |rkZ_IKvsaM) (:text |and) (:type :leaf)
                                                      |T $ {} (:at 1525539200991) (:by |root) (:id |HyGKY-wsaG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525539201697) (:by |root) (:id |B1bYYZvj6f) (:text |some?) (:type :leaf)
                                                          |j $ {} (:at 1525539202291) (:by |root) (:id |BJe9F-DjTM) (:text |task) (:type :leaf)
                                                  |r $ {} (:at 1525541301447) (:by |root) (:id |Skg62YvjaG) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1525541302938) (:by |root) (:id |HJ03tDopf) (:text |<>) (:type :leaf)
                                                      |L $ {} (:at 1525541303713) (:by |root) (:id |SJx6KvjTz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525541305042) (:by |root) (:id |HkZy6Ywopz) (:text |:text) (:type :leaf)
                                                          |j $ {} (:at 1525541306721) (:by |root) (:id |B1--aFwiTM) (:text |task) (:type :leaf)
                                                      |T $ {} (:at 1525541235052) (:by |root) (:id |B1ejuFvoTG) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1525541235800) (:by |root) (:id |BJbidFDsTM) (:text |if) (:type :leaf)
                                                          |L $ {} (:at 1525541236309) (:by |root) (:id |rkG2uYPiTz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525541244009) (:by |root) (:id |HyWnOKDopG) (:text |:done?) (:type :leaf)
                                                              |j $ {} (:at 1525541237781) (:by |root) (:id |BkETOYwiaz) (:text |info) (:type :leaf)
                                                          |T $ {} (:at 1525541280505) (:by |root) (:id |Skl_atDiTG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525541280849) (:by |root) (:id |BJg_jKwiaz) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1525541281126) (:by |root) (:id |BJzFstDs6G) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1525541284469) (:by |root) (:id |ryZFoKDoaG) (:text |:color) (:type :leaf)
                                                                  |j $ {} (:at 1525541285225) (:by |root) (:id |SklaitDsTG) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1525541285594) (:by |root) (:id |S1pjFPs6M) (:text |hsl) (:type :leaf)
                                                                      |j $ {} (:at 1525541286349) (:by |root) (:id |B1gAiFwipG) (:text |0) (:type :leaf)
                                                                      |r $ {} (:at 1525541286606) (:by |root) (:id |ByzAjYwoaf) (:text |0) (:type :leaf)
                                                                      |v $ {} (:at 1525541314205) (:by |root) (:id |Bkly3KDoaM) (:text |20) (:type :leaf)
                                                          |j $ {} (:at 1525541280505) (:by |root) (:id |HkDTFvsaG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525541280849) (:by |root) (:id |BJg_jKwiaz) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1525541281126) (:by |root) (:id |BJzFstDs6G) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1525541284469) (:by |root) (:id |ryZFoKDoaG) (:text |:color) (:type :leaf)
                                                                  |j $ {} (:at 1525541285225) (:by |root) (:id |SklaitDsTG) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1525541285594) (:by |root) (:id |S1pjFPs6M) (:text |hsl) (:type :leaf)
                                                                      |j $ {} (:at 1525541286349) (:by |root) (:id |B1gAiFwipG) (:text |0) (:type :leaf)
                                                                      |r $ {} (:at 1525541286606) (:by |root) (:id |ByzAjYwoaf) (:text |0) (:type :leaf)
                                                                      |v $ {} (:at 1525541287211) (:by |root) (:id |Bkly3KDoaM) (:text |80) (:type :leaf)
                                                  |v $ {} (:at 1525539205603) (:by |root) (:id |Syb_sZwjaz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525539206179) (:by |root) (:id |r10K-vopGleaf) (:text |<>) (:type :leaf)
                                                      |j $ {} (:at 1525540896834) (:by |root) (:id |BkzAt-viTG) (:text |task-id) (:type :leaf)
        :ns $ {} (:at 1525538485270) (:by |root) (:id |SJx63C8sTG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1525538485270) (:by |root) (:id |Byban08oTG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1525538485270) (:by |root) (:id |Hyfa2AIipM) (:text |app.comp.history) (:type :leaf)
            |r $ {} (:at 1500541010211) (:by nil) (:id |rJlORALoTG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |By6Fe5LlgRr-) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rJxw4e52kz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1-Yg5UelCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |HyfFecIgxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkQKx5Lxg0rZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1VFg98ex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1HtxqIelASb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BJLFecUle0S-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |r1Dtg9Igg0rW) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SydYe98xe0BW) (:text |div) (:type :leaf)
                        |w $ {} (:at 1525538850879) (:by |root) (:id |r1xFmxvoaM) (:text |list->) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJttec8elRrW) (:text |input) (:type :leaf)
                        |y $ {} (:at 1500541010211) (:by |root) (:id |HJ9tl98xxAHb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1500541010211) (:by |root) (:id |SyoYl9LelCBW) (:text |span) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |rkBqe58el0HZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S189lq8leAHW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1DcxqUexABZ) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |r1dcgc8xg0HZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyF5x98llCSW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJc9g58xg0HZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1j9g98ggCB-) (:text |=<) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |S129ecIxeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |By6cgq8llCr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJ09lqUxeRBb) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkJoxqUeg0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJxigqIex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkWslq8eeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |S1Gsg98geRrb) (:text |comp-inspect) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |rk7ol9IxxABZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |ry4ie5IgeArW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547410331) (:by |root) (:id |B1Bjgc8gxRrW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkIjeq8xxCBZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1vixqLll0SZ) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |ry_sxqUeeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1niecUxlCrZ) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |SJdID4pPz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368017028) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.style) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368019779) (:by |root) (:id |r1niecUxlCrZ) (:text |style) (:type :leaf)
                |yj $ {} (:at 1525541291475) (:by |root) (:id |HygQ2tPsTM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525541291807) (:by |root) (:id |HygQ2tPsTMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629431391779) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1525541294392) (:by |root) (:id |rJW8nKviTf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1525541294556) (:by |root) (:id |ryv3KvspG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1525541295396) (:by |root) (:id |ByOI2YPsaM) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1525541296233) (:by |root) (:id |rydntPiaG) (:text |hsl) (:type :leaf)
        :proc $ {} (:at 1525538485270) (:by |root) (:id |Sk7620Ujpf) (:type :expr)
          :data $ {}
      |app.comp.login $ {}
        :defs $ {}
          |comp-login $ {} (:at 1500541010211) (:by nil) (:id |HkN1-cUxxRB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SJBy-qUle0SW) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |S1LyWcUxe0rZ) (:text |comp-login) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |HkPy-qLxlRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Sy_yZ5LxlCBZ) (:text |states) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |ryK1bqLeg0rZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ry9JbqLlgRHb) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1j1WcUxxRSb) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1608356304347) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608356305431) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1608356305665) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608356308040) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1608356308775) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |HynkWcIee0Hb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkT1bqUxlASZ) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |Hy0yb98gxABW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkJxWc8lxCBW) (:text |or) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BJllZ5Lle0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hy-eb9Uxx0HZ) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |S1GeZq8glCrW) (:text |states) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |B1Xeb9UleCrW) (:text |initial-state) (:type :leaf)
                  |r $ {} (:at 1519368111046) (:by |root) (:id |HyxD3wVpvM) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1519368111912) (:by |root) (:id |rJZPnw4TvG) (:text |div) (:type :leaf)
                      |L $ {} (:at 1519368112156) (:by |root) (:id |SJXO3vNaDM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519368113787) (:by |root) (:id |S1fd3wN6Dz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519368114295) (:by |root) (:id |SyGqhw46wG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519368116587) (:by |root) (:id |SJ-9hDETDf) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519368119982) (:by |root) (:id |Byg6DV6wz) (:type :expr)
                                :data $ {}
                                  |5 $ {} (:at 1519368124581) (:by |root) (:id |H1lV6vNaPf) (:text |merge) (:type :leaf)
                                  |D $ {} (:at 1519368123630) (:by |root) (:id |BJxe6vNavM) (:text |ui/flex) (:type :leaf)
                                  |T $ {} (:at 1519368119197) (:by |root) (:id |rJlpnDVawM) (:text |ui/center) (:type :leaf)
                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text "|\"Username") (:type :leaf)
                                          |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:username) (:type :leaf)
                                                          |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                              |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                              |x $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text "|\"Password") (:type :leaf)
                                          |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                                          |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                          |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |x $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:text-align) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:right) (:type :leaf)
                              |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text "|\"Sign up") (:type :leaf)
                                      |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |ui/link) (:type :leaf)
                                      |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |true) (:type :leaf)
                              |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text "|\"Log in") (:type :leaf)
                                      |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |ui/link) (:type :leaf)
                                      |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1608356991877) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
          |initial-state $ {} (:at 1500541010211) (:by nil) (:id |BkQcW5IlxCrb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |HJN9bcIlg0rW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |B1B9-9Uel0Hb) (:text |initial-state) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H1IqZcLgg0BW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hyvq-qIllRrZ) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |Hkd9b5UxgCBW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ryF5b9IgxRB-) (:text |:username) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |SJq5-qUll0rb) (:text ||) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJs5-qLel0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |HyhcbqUggRHb) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |S16cbc8lx0Bb) (:text ||) (:type :leaf)
          |on-submit $ {} (:at 1500541010211) (:by nil) (:id |ryRox98ggCBW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |H1k3e58glCr-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |SylnxqLgg0H-) (:text |on-submit) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |Hk-2e9IglCrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |SkG2lqIxe0SW) (:text |username) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |r172xqLexCr-) (:text |password) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by |root) (:id |SkEhlqIegRB-) (:text |signup?) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |SyB2gqIleArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJLhecIxg0rb) (:text |fn) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJDne5LgxASZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |SJOnxqUxx0Sb) (:text |e) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |BJK2xcLglCHZ) (:text |dispatch!) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |BJ93x98gg0rW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkshx5Lgx0HZ) (:text |dispatch!) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |By22eqIxxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkT3gqIlgArb) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |SJR3gqLegCr-) (:text |signup?) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |r11Te5UxgABZ) (:text |:user/sign-up) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |r1l6e5IgxCBb) (:text |:user/log-in) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |By-Tx58xgRSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1GTxcIleAHb) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |Hy7ax5LexRHb) (:text |username) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |S1E6l9Lle0r-) (:text |password) (:type :leaf)
                  |v $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:text |.setItem) (:type :leaf)
                      |j $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:text |js/localStorage) (:type :leaf)
                      |r $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                          |j $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                      |v $ {} (:at 1629432098440) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1629432102677) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                          |T $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1608356257555) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |Hys_eqLgeAH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3Ox5LleArW) (:text |ns) (:type :leaf)
            |j $ {} (:at 1510936619134) (:by |root) (:id |ry6_xqLxgCS-) (:text |app.comp.login) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SJ3YeqUlxABZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |By6Fe5LlgRr-) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rJxw4e52kz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1-Yg5UelCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |HyfFecIgxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkQKx5Lxg0rZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1VFg98ex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1HtxqIelASb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BJLFecUle0S-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |r1Dtg9Igg0rW) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SydYe98xe0BW) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJttec8elRrW) (:text |input) (:type :leaf)
                        |y $ {} (:at 1500541010211) (:by |root) (:id |HJ9tl98xxAHb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1500541010211) (:by |root) (:id |SyoYl9LelCBW) (:text |span) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |rkBqe58el0HZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S189lq8leAHW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1DcxqUexABZ) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |r1dcgc8xg0HZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyF5x98llCSW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJc9g58xg0HZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1j9g98ggCB-) (:text |=<) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |S129ecIxeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |By6cgq8llCr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJ09lqUxeRBb) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkJoxqUeg0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJxigqIex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkWslq8eeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |S1Gsg98geRrb) (:text |comp-inspect) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |rk7ol9IxxABZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |ry4ie5IgeArW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547410331) (:by |root) (:id |B1Bjgc8gxRrW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkIjeq8xxCBZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1vixqLll0SZ) (:text |ui) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |SJdID4pPz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368017028) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.style) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368019779) (:by |root) (:id |r1niecUxlCrZ) (:text |style) (:type :leaf)
                |yj $ {} (:at 1608356263218) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608356263218) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608356263218) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1608356263218) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608356263218) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |Bkajg9LggCH-) (:type :expr)
          :data $ {}
      |app.comp.navigation $ {}
        :defs $ {}
          |comp-entry $ {} (:at 1525507845105) (:by |root) (:id |Skea-wJsTz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525507847805) (:by |root) (:id |rkbabwyipz) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1525507845105) (:by |root) (:id |HJM6bwyspG) (:text |comp-entry) (:type :leaf)
              |n $ {} (:at 1525507848710) (:by |root) (:id |r1gbMP1jpG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525507851749) (:by |root) (:id |By-zvyspM) (:text |page) (:type :leaf)
                  |j $ {} (:at 1525507853794) (:by |root) (:id |HJSfwyopG) (:text |title) (:type :leaf)
                  |r $ {} (:at 1525507968215) (:by |root) (:id |rkeBtwJspz) (:text |focused?) (:type :leaf)
              |r $ {} (:at 1525507845105) (:by |root) (:id |H1mTWvJjaM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525507845105) (:by |root) (:id |ByVpbPJj6G) (:text |div) (:type :leaf)
                  |j $ {} (:at 1525507845105) (:by |root) (:id |ByBa-Pyopz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525507845105) (:by |root) (:id |Hk8pZv1jpz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1525507845105) (:by |root) (:id |BJDTWwJsaM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525507845105) (:by |root) (:id |BkuTbPJo6f) (:text |:on-click) (:type :leaf)
                          |j $ {} (:at 1608354335415) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1608354336471) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |L $ {} (:at 1608354336801) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608354337044) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                  |j $ {} (:at 1608354337675) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                              |T $ {} (:at 1525507845105) (:by |root) (:id |Hyt6bvkoTG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608354334782) (:by |B1y7Rc-Zz) (:id |H1c6WwJsaM) (:text |d!) (:type :leaf)
                                  |j $ {} (:at 1525507845105) (:by |root) (:id |HJi6ZDyjpG) (:text |:router/change) (:type :leaf)
                                  |r $ {} (:at 1525507845105) (:by |root) (:id |ryn6-wkjTf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525507845105) (:by |root) (:id |ryaTZw1j6f) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1525507845105) (:by |root) (:id |BJCT-PyoTG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525507845105) (:by |root) (:id |Hk1g6-DksTf) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1525507860305) (:by |root) (:id |SkxlaZvJspz) (:text |page) (:type :leaf)
                      |r $ {} (:at 1525507845105) (:by |root) (:id |rk-xaZvki6z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525507845105) (:by |root) (:id |B1zl6Ww1spG) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1525507983568) (:by |root) (:id |rkd9vyjTf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1525507984458) (:by |root) (:id |rJl_cDJs6f) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1525507845105) (:by |root) (:id |ryml6Ww1opM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525507845105) (:by |root) (:id |S1NeTZw1iaG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1525507845105) (:by |root) (:id |B1Sgp-wJi6M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525507845105) (:by |root) (:id |H1UeaZD1i6z) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1525507845105) (:by |root) (:id |BkvlaWDJoaz) (:text |:pointer) (:type :leaf)
                              |j $ {} (:at 1525507985958) (:by |root) (:id |SJZ55DJipM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525507987751) (:by |root) (:id |BylY5vysTz) (:text |when) (:type :leaf)
                                  |j $ {} (:at 1525508001240) (:by |root) (:id |S1zh9PkjTM) (:text |focused?) (:type :leaf)
                                  |r $ {} (:at 1525507989237) (:by |root) (:id |rJVT9v1sTf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525507989570) (:by |root) (:id |rJ7a5DysaM) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1525507990444) (:by |root) (:id |Sy7C5vksaz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525507993018) (:by |root) (:id |rJZCcDko6f) (:text |:font-weight) (:type :leaf)
                                          |j $ {} (:at 1525508033584) (:by |root) (:id |SkNWjDJopG) (:text |500) (:type :leaf)
                  |r $ {} (:at 1525507845105) (:by |root) (:id |rkdx6Wwyi6z) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525507845105) (:by |root) (:id |SJYeTWvkj6M) (:text |<>) (:type :leaf)
                      |r $ {} (:at 1525507857431) (:by |root) (:id |H1seaZwkoTG) (:text |title) (:type :leaf)
          |comp-navigation $ {} (:at 1500541010211) (:by nil) (:id |Bk2vfqUxl0BZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6DG9UglCrb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |rJRPfqLgxArb) (:text |comp-navigation) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H11df58le0Bb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |rJxuzcLle0S-) (:text |logged-in?) (:type :leaf)
                  |j $ {} (:at 1523120365880) (:by |root) (:id |r1W-lK_Lsz) (:text |count-members) (:type :leaf)
                  |r $ {} (:at 1525507934579) (:by |root) (:id |H1x8vvko6z) (:text |router) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |rkW_zqUxlCrZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |HJM_fc8elAHW) (:text |div) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1QdzqLge0SW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |BJNOG5LleABZ) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |SyBufq8elAHZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkUOfqIxxRS-) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1vdGcUglRr-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |H1u_z9Ixe0HZ) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |H1YdfcUxxCB-) (:text |ui/row-center) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BkAw7iE5z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Byb2zcIlx0SW) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |Byz3z9UxgCBb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJQ2f5LglCSb) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |SyEnGqLggRSZ) (:text |48) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by nil) (:id |BJO3GqIex0Bb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJY3GqLxgAHb) (:text |:justify-content) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |H1qhGq8leCSW) (:text |:space-between) (:type :leaf)
                                  |x $ {} (:at 1500541010211) (:by nil) (:id |S1s3M5LglCr-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Sy3nMqLexRBW) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |H1a2M5LleAH-) (:text "||0 16px") (:type :leaf)
                                  |y $ {} (:at 1500541010211) (:by nil) (:id |SJR2MqIlx0S-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SkkpfcUxeCHb) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |SJeazq8llABZ) (:text |16) (:type :leaf)
                                  |yT $ {} (:at 1519314625999) (:by |root) (:id |Bkl9pLP2Pf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314630138) (:by |root) (:id |Bkl9pLP2Pfleaf) (:text |:border-bottom) (:type :leaf)
                                      |j $ {} (:at 1519314630743) (:by |root) (:id |rkgy08vnwf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519314632214) (:by |root) (:id |SJk0UDhDG) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1519314635000) (:by |root) (:id |rJEl08P3wf) (:text "||1px solid ") (:type :leaf)
                                          |r $ {} (:at 1519314635976) (:by |root) (:id |SyxNRUw2Pz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1519314636519) (:by |root) (:id |BJVRIPnvM) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1519314637558) (:by |root) (:id |SklrAUwhvz) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1519314637788) (:by |root) (:id |HJeIRIwnPG) (:text |0) (:type :leaf)
                                              |v $ {} (:at 1519314638678) (:by |root) (:id |ByMUC8vnPM) (:text |0) (:type :leaf)
                                              |x $ {} (:at 1519314643853) (:by |root) (:id |HkgD0IwhPM) (:text |0.1) (:type :leaf)
                                  |yj $ {} (:at 1519314651278) (:by |root) (:id |B1-mkPw2DG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314653842) (:by |root) (:id |B1-mkPw2DGleaf) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1519314661374) (:by |root) (:id |Bkg81wD2wz) (:text |ui/font-fancy) (:type :leaf)
                                  |yr $ {} (:at 1525508009887) (:by |root) (:id |HJgMhv1spz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525508013421) (:by |root) (:id |HJgMhv1spzleaf) (:text |:font-weight) (:type :leaf)
                                      |j $ {} (:at 1525508014333) (:by |root) (:id |S1IH2vkj6f) (:text |100) (:type :leaf)
                                  |yv $ {} (:at 1527096614610) (:by |root) (:id |B114BXm1Q) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1527096618627) (:by |root) (:id |B114BXm1Qleaf) (:text |:flex-shrink) (:type :leaf)
                                      |j $ {} (:at 1527096619569) (:by |root) (:id |HyW7NBmQ1X) (:text |0) (:type :leaf)
                  |r $ {} (:at 1532454155458) (:by |root) (:id |SJmfrJS4X) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1532454160413) (:by |root) (:id |ryOfrySEQ) (:text |div) (:type :leaf)
                      |L $ {} (:at 1532454160638) (:by |root) (:id |ryYMHJrEX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1532454161554) (:by |root) (:id |By7dGH1B4Q) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1532454179260) (:by |root) (:id |SJljXHyHVm) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1532454165817) (:by |root) (:id |H1gafrJHV7) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1532454180775) (:by |root) (:id |SJepXS1S4X) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1532454181985) (:by |root) (:id |BybpQr1BEQ) (:text |merge) (:type :leaf)
                                  |L $ {} (:at 1532454185833) (:by |root) (:id |B1Z0mHJSVm) (:text |ui/row-parted) (:type :leaf)
                                  |T $ {} (:at 1532454166307) (:by |root) (:id |HJz0GHJSN7) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1532454166962) (:by |root) (:id |By17B1SEm) (:text |{}) (:type :leaf)
                                      |T $ {} (:at 1532454161819) (:by |root) (:id |r1-cGr1rNm) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1532454162907) (:by |root) (:id |SJg9zSkHVm) (:text |:width) (:type :leaf)
                                          |j $ {} (:at 1608700869784) (:by |B1y7Rc-Zz) (:id |HkWifSyBVX) (:text "|\"72%") (:type :leaf)
                                      |j $ {} (:at 1532454189832) (:by |root) (:id |Sy84S1HN7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1532454191635) (:by |root) (:id |Sy84S1HN7leaf) (:text |:margin) (:type :leaf)
                                          |j $ {} (:at 1532454192844) (:by |root) (:id |H1MdNB1rVX) (:text |:auto) (:type :leaf)
                      |T $ {} (:at 1532454142520) (:by |root) (:id |SyPbHkBV7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525193914418) (:by |root) (:id |Hyxzp2MU6G) (:text |div) (:type :leaf)
                          |j $ {} (:at 1525193914640) (:by |root) (:id |BJma2fUpM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525193914986) (:by |root) (:id |BkNGThfI6f) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1525193915319) (:by |root) (:id |BkQXp3M8pG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525193916185) (:by |root) (:id |ryzQphMLpz) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1525193917699) (:by |root) (:id |H1E463MUaz) (:text |ui/row) (:type :leaf)
                          |r $ {} (:at 1525507862119) (:by |root) (:id |ryAGwJiaz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525507845105) (:by |root) (:id |rypgpZD1iaz) (:text |comp-entry) (:type :leaf)
                              |j $ {} (:at 1525507866992) (:by |root) (:id |rJ-QPJiTM) (:text |:home) (:type :leaf)
                              |r $ {} (:at 1608360846201) (:by |B1y7Rc-Zz) (:id |SJrQQvkjaz) (:text "|\"Everyday") (:type :leaf)
                              |v $ {} (:at 1525507937686) (:by |root) (:id |Bycwwkjpz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525507938232) (:by |root) (:id |ryFvv1opM) (:text |=) (:type :leaf)
                                  |b $ {} (:at 1525507950810) (:by |root) (:id |B1IHuwyoaM) (:text |:home) (:type :leaf)
                                  |j $ {} (:at 1525507939438) (:by |root) (:id |Byxswwki6G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525507947002) (:by |root) (:id |HybqPD1jTM) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1525507948788) (:by |root) (:id |r10wDJiaf) (:text |router) (:type :leaf)
                          |v $ {} (:at 1525193925156) (:by |root) (:id |HJlGVwyipG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525193925737) (:by |root) (:id |r1gp6hGUaMleaf) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1525193926766) (:by |root) (:id |H1e0TnM8pf) (:text |16) (:type :leaf)
                              |r $ {} (:at 1525193927348) (:by |root) (:id |rkZyR3MIpf) (:text |nil) (:type :leaf)
                          |x $ {} (:at 1525507872026) (:by |root) (:id |rJed7vyoTG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525507873856) (:by |root) (:id |rJed7vyoTGleaf) (:text |comp-entry) (:type :leaf)
                              |j $ {} (:at 1525507875714) (:by |root) (:id |Hkm9mwkopG) (:text |:plan) (:type :leaf)
                              |r $ {} (:at 1525507877500) (:by |root) (:id |ryW37DJiTG) (:text "|\"Plan") (:type :leaf)
                              |v $ {} (:at 1525507952307) (:by |root) (:id |H1ZduDyo6G) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525507952620) (:by |root) (:id |SJgOODJspz) (:text |=) (:type :leaf)
                                  |j $ {} (:at 1525507953972) (:by |root) (:id |BkeFOvys6f) (:text |:plan) (:type :leaf)
                                  |r $ {} (:at 1525507954478) (:by |root) (:id |S1NqOP1spM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525507955062) (:by |root) (:id |B1m9_P1oaf) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1525507955723) (:by |root) (:id |r14sdwyoaG) (:text |router) (:type :leaf)
                          |y $ {} (:at 1525193925156) (:by |root) (:id |ry7HvyipM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525193925737) (:by |root) (:id |r1gp6hGUaMleaf) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1525193926766) (:by |root) (:id |H1e0TnM8pf) (:text |16) (:type :leaf)
                              |r $ {} (:at 1525193927348) (:by |root) (:id |rkZyR3MIpf) (:text |nil) (:type :leaf)
                          |yT $ {} (:at 1525507872026) (:by |root) (:id |HJYVvkipz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525507873856) (:by |root) (:id |rJed7vyoTGleaf) (:text |comp-entry) (:type :leaf)
                              |j $ {} (:at 1525507891918) (:by |root) (:id |Hkm9mwkopG) (:text |:history) (:type :leaf)
                              |r $ {} (:at 1525507905305) (:by |root) (:id |ryW37DJiTG) (:text "|\"History") (:type :leaf)
                              |v $ {} (:at 1525507956741) (:by |root) (:id |HkbpuDkiaf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525507957557) (:by |root) (:id |ryeauwkiTM) (:text |=) (:type :leaf)
                                  |j $ {} (:at 1525507959048) (:by |root) (:id |ryg0dwJoaG) (:text |:history) (:type :leaf)
                                  |r $ {} (:at 1525507961069) (:by |root) (:id |HkgWKwkoaM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525507961466) (:by |root) (:id |H1gtw1jaM) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1525507962594) (:by |root) (:id |ryfYv1jaG) (:text |router) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |HyHQSkBE7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |ByyqzcUglRHZ) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |rkl5GcLglABW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HybqMqUge0SW) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BkfcMq8ge0HZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkX5G5Ueg0rW) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |SybUXoVcf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SyYjz9UgxCrZ) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |B1ciG9UlxRrW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HJjozqIgl0Sb) (:text |:cursor) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |BknsM58xxRrW) (:text ||pointer) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |SJeLFokgXG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1514302332444) (:by |root) (:id |Hkc5MqUgeCBb) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1608354005938) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1608354006548) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |L $ {} (:at 1608354007009) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608354007275) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1608354007753) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |T $ {} (:at 1500541010211) (:by nil) (:id |SkwUXjN5z) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608354005468) (:by |B1y7Rc-Zz) (:id |HyvLfcIelAHb) (:text |d!) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |r1_8fqLxgRHZ) (:text |:router/change) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |S1KIfc8xx0Sb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJqIM5LexCH-) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |SyjIfc8ggAHZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HJ3LM5LgxABb) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJT8GqIgxRr-) (:text |:profile) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |Hkhcfq8gx0Sb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SJ69McLelASZ) (:text |<>) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |ByysG5UgxABb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SkesM9IllRBZ) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |H1bjz98xxRSb) (:text |logged-in?) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |Syziz98ggAS-) (:text ||Me) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by |root) (:id |Hk7izqLel0rb) (:text ||Guest) (:type :leaf)
                          |v $ {} (:at 1523120369216) (:by |root) (:id |BkeFgYdUif) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1523120369974) (:by |root) (:id |BkeFgYdUifleaf) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1523120371053) (:by |root) (:id |S1lcgFd8if) (:text |8) (:type :leaf)
                              |r $ {} (:at 1523120371555) (:by |root) (:id |HyeogYO8jM) (:text |nil) (:type :leaf)
                          |x $ {} (:at 1523120371997) (:by |root) (:id |Hk-2xtuUjf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1523120372630) (:by |root) (:id |Hk-2xtuUjfleaf) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1523120373023) (:by |root) (:id |HkZpxFdIiM) (:text |count-members) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |BkUXGcUegABW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ) (:text |app.comp.navigation) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk_4zqLggASb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629428772354) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |ry3NM5IegRSW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJySMq8xgRSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:id |BkxlWtdUjM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:id |BkxlWtdUjMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:id |Sk--WFuIoG) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:id |By4XbFu8oG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:id |r1DWtdUjM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:id |SJEUbFOLjG) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:id |BkGPZKu8oM) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SkVQg5h1z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk2XMq8lgCHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkxNGqLxg0rZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |SJ1Uz9LeeAB-) (:type :expr)
          :data $ {}
      |app.comp.plan $ {}
        :defs $ {}
          |comp-deleted-task $ {} (:at 1527096110783) (:by |root) (:id |H1gvE7X7JX) (:type :expr)
            :data $ {}
              |T $ {} (:at 1527096113771) (:by |root) (:id |BJbP4mQ7kQ) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1527096110783) (:by |root) (:id |r1MvNX7QJX) (:text |comp-deleted-task) (:type :leaf)
              |r $ {} (:at 1527096110783) (:by |root) (:id |H1QwNmmmJm) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1527096121086) (:by |root) (:id |Sy347XmyQ) (:text |sort-key) (:type :leaf)
                  |j $ {} (:at 1527096117362) (:by |root) (:id |SJeT4XXmk7) (:text |task) (:type :leaf)
              |v $ {} (:at 1527096122473) (:by |root) (:id |rylMSQmXym) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1527096125206) (:by |root) (:id |rylMSQmXymleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1527096125462) (:by |root) (:id |HkSBrQX7yX) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527096165169) (:by |root) (:id |BJEBSXmQ1m) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1527096170575) (:by |root) (:id |B1mu7mXJ7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1527096173408) (:by |root) (:id |BJl2wXXQ1X) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1527096266619) (:by |root) (:id |HkmRX7mJm) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1527096267647) (:by |root) (:id |rkxm0QQ7yQ) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1527096177937) (:by |root) (:id |Bk8dXmQJ7) (:text |ui/row-parted) (:type :leaf)
                              |j $ {} (:at 1527096268073) (:by |root) (:id |SyXERQ77Jm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1527096268362) (:by |root) (:id |SyME0777J7) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1527096275584) (:by |root) (:id |SJnCmXmy7) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1527096279787) (:by |root) (:id |SJnCmXmy7leaf) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1527096280039) (:by |root) (:id |SkmlkVmmJX) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1527096280345) (:by |root) (:id |HJMeJ4X7JX) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1527096281011) (:by |root) (:id |SJb1NQQk7) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1527096281210) (:by |root) (:id |Byb-J47X1m) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1527096287217) (:by |root) (:id |rJ7bkEQQkX) (:text |96) (:type :leaf)
                                  |v $ {} (:at 1527096289949) (:by |root) (:id |Byc1VQ717) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1527096303898) (:by |root) (:id |Byc1VQ717leaf) (:text |:margin-bottom) (:type :leaf)
                                      |j $ {} (:at 1527096292570) (:by |root) (:id |Hyg2yVQ7km) (:text |8) (:type :leaf)
                                  |x $ {} (:at 1527096294955) (:by |root) (:id |HklkgN7mJm) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1527096296074) (:by |root) (:id |HklkgN7mJmleaf) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1527096296663) (:by |root) (:id |ByHlgNmmkm) (:text |8) (:type :leaf)
                  |r $ {} (:at 1527096185901) (:by |root) (:id |S1fY7X7JQ) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1527096186652) (:by |root) (:id |HJeftQm7km) (:text |div) (:type :leaf)
                      |L $ {} (:at 1527096186888) (:by |root) (:id |rkMQtm7Q17) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1527096187290) (:by |root) (:id |SyWmKQQQyQ) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1527096187572) (:by |root) (:id |BJ4KXQ7J7) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1527096188954) (:by |root) (:id |r1B7KXmXyQ) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1527096191637) (:by |root) (:id |rklSYm7QJX) (:text |ui/flex) (:type :leaf)
                      |T $ {} (:at 1527096127683) (:by |root) (:id |r1OrmmQy7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1527096128186) (:by |root) (:id |r1OrmmQy7leaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1527096154533) (:by |root) (:id |SJmPmmQJX) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1527096157687) (:by |root) (:id |BJx7PmQQ1Q) (:text |:text) (:type :leaf)
                              |T $ {} (:at 1527096131318) (:by |root) (:id |S1MdB7Q7yX) (:text |task) (:type :leaf)
                  |v $ {} (:at 1527096258111) (:by |root) (:id |SyxqpmmQyX) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1527096259362) (:by |root) (:id |H1Z967Q71m) (:text |span) (:type :leaf)
                      |L $ {} (:at 1527096259651) (:by |root) (:id |B1hpQmmkQ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1527096259987) (:by |root) (:id |ByQoTXX71X) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1527096314023) (:by |root) (:id |r1zWEmXyQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1527096316208) (:by |root) (:id |r1ZZZEmmJX) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1608354292013) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1608354292592) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1608354292933) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608354293175) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1608354294077) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1527096316927) (:by |root) (:id |HJerZ4QmJX) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608354291080) (:by |B1y7Rc-Zz) (:id |rySWVQ7JQ) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1527096334891) (:by |root) (:id |r1NzVQmJQ) (:text |:plan/reuse) (:type :leaf)
                                      |r $ {} (:at 1527096340543) (:by |root) (:id |H1tGVm7kX) (:text |sort-key) (:type :leaf)
                          |r $ {} (:at 1527097201601) (:by |root) (:id |ry9uv7mJQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1527097204203) (:by |root) (:id |ry9uv7mJQleaf) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1527097204418) (:by |root) (:id |H1rn_DQXJX) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1527097205350) (:by |root) (:id |ryNndDX7kX) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1527097205611) (:by |root) (:id |HyA_vQ7J7) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1527097207146) (:by |root) (:id |BkB6uPm7y7) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1527097208282) (:by |root) (:id |S1M1FD7X1m) (:text |:pointer) (:type :leaf)
                      |T $ {} (:at 1527096192624) (:by |root) (:id |HkFtXXX1X) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608353737215) (:by |B1y7Rc-Zz) (:id |HkFtXXX1Xleaf) (:text |comp-i) (:type :leaf)
                          |j $ {} (:at 1608353775754) (:by |B1y7Rc-Zz) (:id |SkhYmXQJQ) (:text |:shuffle) (:type :leaf)
                          |r $ {} (:at 1608353787553) (:by |B1y7Rc-Zz) (:text |14) (:type :leaf)
                          |v $ {} (:at 1608353788097) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608353789293) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                              |j $ {} (:at 1608353790315) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                              |r $ {} (:at 1608353792779) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                              |v $ {} (:at 1608353793564) (:by |B1y7Rc-Zz) (:text |70) (:type :leaf)
          |comp-plan $ {} (:at 1525194955061) (:by |root) (:id |H1xXCg78aG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525194957532) (:by |root) (:id |rkWXReQLTM) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1525194955061) (:by |root) (:id |HJfmCx78af) (:text |comp-plan) (:type :leaf)
              |r $ {} (:at 1525194955061) (:by |root) (:id |B1X7Ag78az) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1528219583588) (:by |root) (:id |H1w6wHElQ) (:text |states) (:type :leaf)
                  |T $ {} (:at 1525282278239) (:by |root) (:id |rJaJU_PTM) (:text |plan) (:type :leaf)
              |v $ {} (:at 1608477957070) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1608477957944) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |L $ {} (:at 1608477958214) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1608477965035) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608477966055) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1608477966251) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608477967894) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1608477969011) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                      |T $ {} (:at 1608477958444) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608477959062) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                          |j $ {} (:at 1608477959709) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608477963968) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                              |j $ {} (:at 1608477971904) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608477975571) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1608477973265) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                              |r $ {} (:at 1608477976454) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608477976790) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1608477977589) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608477989007) (:by |B1y7Rc-Zz) (:text |:show-deprecated?) (:type :leaf)
                                      |j $ {} (:at 1608544286915) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
                      |j $ {} (:at 1629430744691) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629430747132) (:by |B1y7Rc-Zz) (:text |create-plugin) (:type :leaf)
                          |j $ {} (:at 1629430748213) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629430765573) (:by |B1y7Rc-Zz) (:text |use-prompt) (:type :leaf)
                              |j $ {} (:at 1629430800565) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629430801056) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1629430802730) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1629430804710) (:by |B1y7Rc-Zz) (:text |:create) (:type :leaf)
                              |r $ {} (:at 1629430806119) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629430806640) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1629430810968) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629430812468) (:by |B1y7Rc-Zz) (:text |:title) (:type :leaf)
                                      |j $ {} (:at 1629430815227) (:by |B1y7Rc-Zz) (:text "|\"A task") (:type :leaf)
                                  |r $ {} (:at 1629430817154) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629430818517) (:by |B1y7Rc-Zz) (:text |:initial) (:type :leaf)
                                      |j $ {} (:at 1629430819610) (:by |B1y7Rc-Zz) (:text "|\"") (:type :leaf)
                  |T $ {} (:at 1525194958869) (:by |root) (:id |HkP0gmL6f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525194959325) (:by |root) (:id |HkP0gmL6fleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1525194959569) (:by |root) (:id |HJ_AgmUaz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525194959921) (:by |root) (:id |Bkmw0gm8pf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1525195010095) (:by |root) (:id |SJb5ZbQUpf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525195011778) (:by |root) (:id |Bkg5bZ7LpM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1532453961534) (:by |root) (:id |BJfLEkrVm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1532453961996) (:by |root) (:id |rkeWLVJS47) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1608544673721) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608544674805) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1608700844809) (:by |B1y7Rc-Zz) (:text "|\"60%") (:type :leaf)
                      |r $ {} (:at 1527096031929) (:by |root) (:id |Syguk7Q71X) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1527096032644) (:by |root) (:id |HkZOyXXXJ7) (:text |div) (:type :leaf)
                          |L $ {} (:at 1527096032835) (:by |root) (:id |SkbY1XXXkX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1527096033149) (:by |root) (:id |r1lF1mXXkX) (:text |{}) (:type :leaf)
                          |T $ {} (:at 1525368195947) (:by |root) (:id |HJZntSa_az) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1525368196660) (:by |root) (:id |SkMhKrpupM) (:text |div) (:type :leaf)
                              |L $ {} (:at 1525368196860) (:by |root) (:id |ryMpYHaO6f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525368197924) (:by |root) (:id |ByZ6tS6O6z) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1525368198179) (:by |root) (:id |rybCKB6Opz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525368198895) (:by |root) (:id |rkgAYHadTG) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1527096442171) (:by |root) (:id |ryGYEQQyX) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1527096444220) (:by |root) (:id |rygfFEQm1m) (:text |merge) (:type :leaf)
                                          |L $ {} (:at 1527096512906) (:by |root) (:id |Syez2EQ717) (:text |ui/row) (:type :leaf)
                                          |T $ {} (:at 1525538801869) (:by |root) (:id |HybwegPsaM) (:text |style/title) (:type :leaf)
                                          |j $ {} (:at 1527096472705) (:by |root) (:id |S1WjVQXJX) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1527096473086) (:by |root) (:id |rkmgoNXQkQ) (:text |{}) (:type :leaf)
                              |T $ {} (:at 1525194960423) (:by |root) (:id |BJm_AgXI6z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525194960767) (:by |root) (:id |BJm_AgXI6zleaf) (:text |<>) (:type :leaf)
                                  |j $ {} (:at 1525194963002) (:by |root) (:id |BkbYAgmITz) (:text "|\"Plan") (:type :leaf)
                              |b $ {} (:at 1527096433950) (:by |root) (:id |SkcdNXXkX) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1527096436740) (:by |root) (:id |SkcdNXXkXleaf) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1527096437233) (:by |root) (:id |HJ-TuNQQyQ) (:text |16) (:type :leaf)
                                  |r $ {} (:at 1527096438141) (:by |root) (:id |HkCOEXX17) (:text |nil) (:type :leaf)
                              |j $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |button) (:type :leaf)
                                  |j $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |ui/button) (:type :leaf)
                                              |r $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                                                      |j $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |32) (:type :leaf)
                                                  |r $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |:vertical-align) (:type :leaf)
                                                      |j $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |:middle) (:type :leaf)
                                      |r $ {} (:at 1629430832708) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629430834668) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1629430835030) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629430835316) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1629430835581) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629430835749) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1629430836896) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1629430837623) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629430839730) (:by |B1y7Rc-Zz) (:text |.show) (:type :leaf)
                                                  |j $ {} (:at 1629430844563) (:by |B1y7Rc-Zz) (:text |create-plugin) (:type :leaf)
                                                  |r $ {} (:at 1629430849097) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |v $ {} (:at 1629430849521) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629430850530) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                      |j $ {} (:at 1629430850803) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629430851559) (:by |B1y7Rc-Zz) (:text |text) (:type :leaf)
                                                      |r $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                                                          |j $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                                                              |j $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1629430888181) (:by |B1y7Rc-Zz) (:text |.blank?) (:type :leaf)
                                                                  |j $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:text |text) (:type :leaf)
                                                          |r $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                              |j $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:text |:plan/create) (:type :leaf)
                                                              |r $ {} (:at 1629430857949) (:by |B1y7Rc-Zz) (:text |text) (:type :leaf)
                                  |r $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1629430830514) (:by |B1y7Rc-Zz) (:text "|\"Add") (:type :leaf)
                          |j $ {} (:at 1525282581669) (:by |root) (:id |SJnyQ7Q1Q) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525282583380) (:by |root) (:id |S1RGvdwTfleaf) (:text |list->) (:type :leaf)
                              |j $ {} (:at 1525282589924) (:by |root) (:id |ByUmDuw6z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525282590944) (:by |root) (:id |HkeHXwuvpG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1525282781535) (:by |root) (:id |BJUku_PTG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525282782289) (:by |root) (:id |H1lSJ_OvTz) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1525282784404) (:by |root) (:id |BkgdydODpG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629432165141) (:by |B1y7Rc-Zz) (:id |SytkduDaG) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1525282591909) (:by |root) (:id |SJd7P_wTf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629430893844) (:by |B1y7Rc-Zz) (:id |ryGDQwOD6G) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1525282593889) (:by |root) (:id |ryxY7vuvaG) (:text |plan) (:type :leaf)
                                  |l $ {} (:at 1629432187597) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629432187868) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                      |j $ {} (:at 1629432188561) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629435016936) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |m $ {} (:at 1629435018560) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629435020242) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                  |n $ {} (:at 1525543961114) (:by |root) (:id |SJ-m4dsaG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1525543962321) (:by |root) (:id |H1gWmV_oTG) (:text |filter) (:type :leaf)
                                      |T $ {} (:at 1525543936052) (:by |root) (:id |rk_-VdjaM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525543985826) (:by |root) (:id |rk_-VdjaMleaf) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1525543937645) (:by |root) (:id |BycW4Oopz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629430901183) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |r $ {} (:at 1525543942779) (:by |root) (:id |BJe1GV_j6M) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525543946024) (:by |root) (:id |BJe1GV_j6Mleaf) (:text |not) (:type :leaf)
                                              |j $ {} (:at 1525543947036) (:by |root) (:id |rygXf4doaG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525543949191) (:by |root) (:id |SyQG4_s6G) (:text |:deleted?) (:type :leaf)
                                                  |j $ {} (:at 1629430895703) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629430897446) (:by |B1y7Rc-Zz) (:id |B1MSfEdiaz) (:text |last) (:type :leaf)
                                                      |j $ {} (:at 1629430898506) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                  |r $ {} (:at 1525282594754) (:by |root) (:id |ByxoQw_vTM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629430902732) (:by |B1y7Rc-Zz) (:id |BJomDODpG) (:text |.sort-by) (:type :leaf)
                                      |j $ {} (:at 1525282602701) (:by |root) (:id |H1fk4D_vTf) (:text |first) (:type :leaf)
                                  |v $ {} (:at 1525282603303) (:by |root) (:id |rk-XND_wTz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525282603882) (:by |root) (:id |rk-XND_wTzleaf) (:text |map) (:type :leaf)
                                      |j $ {} (:at 1525282604370) (:by |root) (:id |BJ7EVwOwTM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525282604704) (:by |root) (:id |S1MV4v_PaG) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1525282604977) (:by |root) (:id |BkGS4PdPTf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629430918336) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |r $ {} (:at 1629430906575) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1629430910861) (:by |B1y7Rc-Zz) (:text |let[]) (:type :leaf)
                                              |L $ {} (:at 1629430911205) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629430911533) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                                  |j $ {} (:at 1629430912328) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                              |P $ {} (:at 1629430914421) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                              |T $ {} (:at 1525282610326) (:by |root) (:id |Sy54Duv6z) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525282610813) (:by |root) (:id |Sy54Duv6zleaf) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1525282612077) (:by |root) (:id |Hk3VDdwaf) (:text |k) (:type :leaf)
                                                  |r $ {} (:at 1525282613326) (:by |root) (:id |HJlTEvdwpf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525282628729) (:by |root) (:id |ByZ3NPuPaf) (:text |div) (:type :leaf)
                                                      |b $ {} (:at 1525282629251) (:by |root) (:id |Hyf6rP_wTz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525282629661) (:by |root) (:id |BJbTSP_wTf) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1525282631074) (:by |root) (:id |r1ekIDdw6G) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1525282672825) (:by |root) (:id |rJWJUPuvaM) (:text |comp-task) (:type :leaf)
                                                          |H $ {} (:at 1608354270586) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1608354271322) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                                              |T $ {} (:at 1528219599733) (:by |root) (:id |r1ZL0vS4xQ) (:text |states) (:type :leaf)
                                                              |j $ {} (:at 1608354272095) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                                          |L $ {} (:at 1525282675672) (:by |root) (:id |r1eiuDOvTz) (:text |k) (:type :leaf)
                                                          |T $ {} (:at 1525282615472) (:by |root) (:id |ry1SPOPaf) (:text |task) (:type :leaf)
                      |t $ {} (:at 1527096076770) (:by |root) (:id |SkerM7Q71X) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1527096077985) (:by |root) (:id |SkerM7Q71Xleaf) (:text |=<) (:type :leaf)
                          |r $ {} (:at 1527096080110) (:by |root) (:id |Bk-DG777kX) (:text |nil) (:type :leaf)
                          |v $ {} (:at 1527096579689) (:by |root) (:id |HkH-rQQk7) (:text |80) (:type :leaf)
                      |v $ {} (:at 1527097167338) (:by |root) (:id |SkgDIwmQyQ) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1527097169906) (:by |root) (:id |rkd8DXm1X) (:text |let) (:type :leaf)
                          |L $ {} (:at 1527097113887) (:by |root) (:id |BJTIw7XyX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1527097114038) (:by |root) (:id |rkZGXDmQJX) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1527097118229) (:by |root) (:id |rkMmwQ71Q) (:text |deleted-plans) (:type :leaf)
                                  |j $ {} (:at 1525282591909) (:by |root) (:id |HkcQPXQJQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431097297) (:by |B1y7Rc-Zz) (:id |ryGDQwOD6G) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1525282593889) (:by |root) (:id |ryxY7vuvaG) (:text |plan) (:type :leaf)
                                      |l $ {} (:at 1629432192539) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629432193077) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                          |j $ {} (:at 1629432193487) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629435026143) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |m $ {} (:at 1629435027235) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629435030571) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                      |n $ {} (:at 1525543961114) (:by |root) (:id |SJ-m4dsaG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1525543962321) (:by |root) (:id |H1gWmV_oTG) (:text |filter) (:type :leaf)
                                          |T $ {} (:at 1525543936052) (:by |root) (:id |rk_-VdjaM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525543985826) (:by |root) (:id |rk_-VdjaMleaf) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1525543937645) (:by |root) (:id |BycW4Oopz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629431109780) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                              |r $ {} (:at 1525543947036) (:by |root) (:id |rygXf4doaG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525543949191) (:by |root) (:id |SyQG4_s6G) (:text |:deleted?) (:type :leaf)
                                                  |j $ {} (:at 1629431098989) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1629431100097) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                                      |T $ {} (:at 1629431102129) (:by |B1y7Rc-Zz) (:id |B1MSfEdiaz) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1525282594754) (:by |root) (:id |ByxoQw_vTM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629431503050) (:by |B1y7Rc-Zz) (:id |BJomDODpG) (:text |.sort-by) (:type :leaf)
                                          |j $ {} (:at 1525282602701) (:by |root) (:id |H1fk4D_vTf) (:text |first) (:type :leaf)
                          |T $ {} (:at 1527097178675) (:by |root) (:id |H1mwPmXJX) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1527097179297) (:by |root) (:id |ryxXwvQX1m) (:text |if) (:type :leaf)
                              |L $ {} (:at 1527097179604) (:by |root) (:id |SJEvP7X1Q) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1527097180836) (:by |root) (:id |HkQXDP771m) (:text |not) (:type :leaf)
                                  |j $ {} (:at 1527097181215) (:by |root) (:id |rybSwPQQ1Q) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1527097182532) (:by |root) (:id |BJervDXXk7) (:text |empty?) (:type :leaf)
                                      |j $ {} (:at 1527097185413) (:by |root) (:id |S1lDvwXQym) (:text |deleted-plans) (:type :leaf)
                              |T $ {} (:at 1527096051304) (:by |root) (:id |HJbjgX7Q1m) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1527096051808) (:by |root) (:id |HJbjgX7Q1mleaf) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1527096052003) (:by |root) (:id |Bymhx7771Q) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1527096052321) (:by |root) (:id |B1MhxmmmJQ) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1525368195947) (:by |root) (:id |rJ-Lb77XkX) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1525368196660) (:by |root) (:id |SkMhKrpupM) (:text |div) (:type :leaf)
                                      |L $ {} (:at 1525368196860) (:by |root) (:id |ryMpYHaO6f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525368197924) (:by |root) (:id |ByZ6tS6O6z) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1525368198179) (:by |root) (:id |rybCKB6Opz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525368198895) (:by |root) (:id |rkgAYHadTG) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1527097093249) (:by |root) (:id |HkgTWD7XyQ) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1527097094209) (:by |root) (:id |SkC-PXXym) (:text |merge) (:type :leaf)
                                                  |T $ {} (:at 1525538801869) (:by |root) (:id |HybwegPsaM) (:text |style/title) (:type :leaf)
                                                  |j $ {} (:at 1527097094707) (:by |root) (:id |SJlyzvm7JQ) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1527097095084) (:by |root) (:id |By1MP7my7) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1527097095349) (:by |root) (:id |ByEkfv7Xy7) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1527097096709) (:by |root) (:id |S1Q1GvX71Q) (:text |:color) (:type :leaf)
                                                          |j $ {} (:at 1527097096971) (:by |root) (:id |SyG-GDmmJm) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1527097097359) (:by |root) (:id |HJWWfvQQyX) (:text |hsl) (:type :leaf)
                                                              |j $ {} (:at 1527097098050) (:by |root) (:id |HyMMPQ7y7) (:text |0) (:type :leaf)
                                                              |r $ {} (:at 1527097098265) (:by |root) (:id |r1-fGP77y7) (:text |0) (:type :leaf)
                                                              |v $ {} (:at 1527097103665) (:by |root) (:id |HyQGzPQmJ7) (:text |70) (:type :leaf)
                                      |T $ {} (:at 1525194960423) (:by |root) (:id |BJm_AgXI6z) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525194960767) (:by |root) (:id |BJm_AgXI6zleaf) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1527096073118) (:by |root) (:id |BkbYAgmITz) (:text "|\"Deleted") (:type :leaf)
                                      |j $ {} (:at 1608478006093) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608478006715) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                                          |j $ {} (:at 1608478007341) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                                          |r $ {} (:at 1608478007976) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |r $ {} (:at 1608478008805) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608478011931) (:by |B1y7Rc-Zz) (:text |comp-icon) (:type :leaf)
                                          |j $ {} (:at 1608478015060) (:by |B1y7Rc-Zz) (:text |:eye) (:type :leaf)
                                          |r $ {} (:at 1608478016138) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608478016482) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1608478016767) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608478017972) (:by |B1y7Rc-Zz) (:text |:font-size) (:type :leaf)
                                                  |j $ {} (:at 1608478018588) (:by |B1y7Rc-Zz) (:text |14) (:type :leaf)
                                              |r $ {} (:at 1608478019015) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608478020448) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                                  |j $ {} (:at 1608478020681) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608478021083) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1608478023722) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                                                      |r $ {} (:at 1608478024478) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                                                      |v $ {} (:at 1608478024869) (:by |B1y7Rc-Zz) (:text |70) (:type :leaf)
                                              |v $ {} (:at 1608478120102) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608478121945) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                                                  |j $ {} (:at 1608478123020) (:by |B1y7Rc-Zz) (:text |:pointer) (:type :leaf)
                                          |v $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                                      |j $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                      |r $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:text |:show-deprecated?) (:type :leaf)
                                                      |v $ {} (:at 1608478099853) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                                  |v $ {} (:at 1608478051151) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1608478051719) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                                      |L $ {} (:at 1608478051919) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608478055770) (:by |B1y7Rc-Zz) (:text |:show-deprecated?) (:type :leaf)
                                          |j $ {} (:at 1608478058796) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                      |T $ {} (:at 1525282581669) (:by |root) (:id |HkgZvvX7JQ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525282583380) (:by |root) (:id |S1RGvdwTfleaf) (:text |list->) (:type :leaf)
                                          |j $ {} (:at 1525282589924) (:by |root) (:id |ByUmDuw6z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525282590944) (:by |root) (:id |HkeHXwuvpG) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1525282781535) (:by |root) (:id |BJUku_PTG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525282782289) (:by |root) (:id |H1lSJ_OvTz) (:text |:style) (:type :leaf)
                                                  |j $ {} (:at 1525282784404) (:by |root) (:id |BkgdydODpG) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1636985943626) (:by |B1y7Rc-Zz) (:id |SytkduDaG) (:text |{}) (:type :leaf)
                                          |r $ {} (:at 1525282591909) (:by |root) (:id |SJd7P_wTf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629431197548) (:by |B1y7Rc-Zz) (:id |ryGDQwOD6G) (:text |->) (:type :leaf)
                                              |j $ {} (:at 1527097128438) (:by |root) (:id |ryxY7vuvaG) (:text |deleted-plans) (:type :leaf)
                                              |p $ {} (:at 1629435037784) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629435040193) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                              |v $ {} (:at 1525282603303) (:by |root) (:id |rk-XND_wTz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525282603882) (:by |root) (:id |rk-XND_wTzleaf) (:text |map) (:type :leaf)
                                                  |j $ {} (:at 1525282604370) (:by |root) (:id |BJ7EVwOwTM) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525282604704) (:by |root) (:id |S1MV4v_PaG) (:text |fn) (:type :leaf)
                                                      |j $ {} (:at 1525282604977) (:by |root) (:id |BkGS4PdPTf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629431249430) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                      |r $ {} (:at 1629431238635) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1629431242762) (:by |B1y7Rc-Zz) (:text |let[]) (:type :leaf)
                                                          |L $ {} (:at 1629431243480) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629431243837) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                                              |j $ {} (:at 1629431244481) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                          |P $ {} (:at 1629431246049) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                          |T $ {} (:at 1525282610326) (:by |root) (:id |Sy54Duv6z) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525282610813) (:by |root) (:id |Sy54Duv6zleaf) (:text |[]) (:type :leaf)
                                                              |j $ {} (:at 1525282612077) (:by |root) (:id |Hk3VDdwaf) (:text |k) (:type :leaf)
                                                              |r $ {} (:at 1525282613326) (:by |root) (:id |HJlTEvdwpf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1525282628729) (:by |root) (:id |ByZ3NPuPaf) (:text |div) (:type :leaf)
                                                                  |b $ {} (:at 1525282629251) (:by |root) (:id |Hyf6rP_wTz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1525282629661) (:by |root) (:id |BJbTSP_wTf) (:text |{}) (:type :leaf)
                                                                  |j $ {} (:at 1525282631074) (:by |root) (:id |r1ekIDdw6G) (:type :expr)
                                                                    :data $ {}
                                                                      |D $ {} (:at 1527096109311) (:by |root) (:id |rJWJUPuvaM) (:text |comp-deleted-task) (:type :leaf)
                                                                      |L $ {} (:at 1525282675672) (:by |root) (:id |r1eiuDOvTz) (:text |k) (:type :leaf)
                                                                      |T $ {} (:at 1525282615472) (:by |root) (:id |ry1SPOPaf) (:text |task) (:type :leaf)
                                      |j $ {} (:at 1608478131931) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608478134176) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1608478159772) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1608478160995) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                              |L $ {} (:at 1608478175006) (:by |B1y7Rc-Zz) (:text "|\"(") (:type :leaf)
                                              |T $ {} (:at 1608478138304) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608478139157) (:by |B1y7Rc-Zz) (:text |count) (:type :leaf)
                                                  |j $ {} (:at 1608478145779) (:by |B1y7Rc-Zz) (:text |deleted-plans) (:type :leaf)
                                              |j $ {} (:at 1608544364380) (:by |B1y7Rc-Zz) (:text "|\") tasks deprecated.") (:type :leaf)
                                          |r $ {} (:at 1608478179400) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608478179686) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1608478180008) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608478181808) (:by |B1y7Rc-Zz) (:text |:font-family) (:type :leaf)
                                                  |j $ {} (:at 1608478184338) (:by |B1y7Rc-Zz) (:text |ui/font-fancy) (:type :leaf)
                                              |r $ {} (:at 1608478189737) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608478190649) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                                  |j $ {} (:at 1608478190915) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608478191248) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1608478191850) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                                      |r $ {} (:at 1608478192134) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                                      |v $ {} (:at 1608478193862) (:by |B1y7Rc-Zz) (:text |50) (:type :leaf)
                      |x $ {} (:at 1629430870959) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629430872616) (:by |B1y7Rc-Zz) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1629430875482) (:by |B1y7Rc-Zz) (:text |create-plugin) (:type :leaf)
          |comp-task $ {} (:at 1525282677881) (:by |root) (:id |HkxCOvOv6M) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525282691138) (:by |root) (:id |Skb0OvOPpM) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1525282677881) (:by |root) (:id |r1fCuvOPTM) (:text |comp-task) (:type :leaf)
              |r $ {} (:at 1525282677881) (:by |root) (:id |BJX0Ov_wTM) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1528219613137) (:by |root) (:id |ByEkuBVgm) (:text |states) (:type :leaf)
                  |T $ {} (:at 1525282681095) (:by |root) (:id |ryW1YD_P6f) (:text |sort-id) (:type :leaf)
                  |j $ {} (:at 1525282681671) (:by |root) (:id |HyzWFPOvaf) (:text |task) (:type :leaf)
              |v $ {} (:at 1629431524722) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1629431527122) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |L $ {} (:at 1629431527662) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629431528453) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629431535696) (:by |B1y7Rc-Zz) (:text |update-plugin) (:type :leaf)
                          |j $ {} (:at 1629431548051) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629431555018) (:by |B1y7Rc-Zz) (:text |use-prompt) (:type :leaf)
                              |j $ {} (:at 1629431559633) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629431560246) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1629431561773) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1629431563843) (:by |B1y7Rc-Zz) (:text |:update) (:type :leaf)
                              |r $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:text "|\"New task:") (:type :leaf)
                                  |v $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:text |:initial) (:type :leaf)
                                      |j $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1629431572716) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                      |j $ {} (:at 1629431541141) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629431546414) (:by |B1y7Rc-Zz) (:text |remove-plugin) (:type :leaf)
                          |j $ {} (:at 1629431578398) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629431581093) (:by |B1y7Rc-Zz) (:text |use-confirm) (:type :leaf)
                              |j $ {} (:at 1629431582244) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629431582707) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1629431583645) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1629431585495) (:by |B1y7Rc-Zz) (:text |:remove) (:type :leaf)
                              |r $ {} (:at 1629431590696) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629431590696) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1629431590696) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431590696) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1629431590696) (:by |B1y7Rc-Zz) (:text "|\"Sure to remove from everyday task?") (:type :leaf)
                  |T $ {} (:at 1525282693251) (:by |root) (:id |B1-TKvOvpz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525282694092) (:by |root) (:id |B1-TKvOvpzleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1525282694353) (:by |root) (:id |rJm0YvdwaG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282695680) (:by |root) (:id |rkzAFPuDTM) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1525282696927) (:by |root) (:id |HkZb9wODTM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525282697683) (:by |root) (:id |SJg-5vuvaz) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1525282800853) (:by |root) (:id |SyxKgudvTM) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1525282802869) (:by |root) (:id |HJ-te_uPpG) (:text |merge) (:type :leaf)
                                  |T $ {} (:at 1525282701791) (:by |root) (:id |BkZM9wuw6G) (:text |ui/row-parted) (:type :leaf)
                                  |j $ {} (:at 1525282803414) (:by |root) (:id |Bk4sgOdPTM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525282803717) (:by |root) (:id |HyQsxudDTM) (:text |{}) (:type :leaf)
                                      |r $ {} (:at 1525282808038) (:by |root) (:id |Syxx-udP6z) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525282813854) (:by |root) (:id |Syxx-udP6zleaf) (:text |:background-color) (:type :leaf)
                                          |j $ {} (:at 1525282814122) (:by |root) (:id |rymIbOODpG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525282814467) (:by |root) (:id |ryfLZOOwpG) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1525282815093) (:by |root) (:id |Hkw-ddDTM) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1525282816765) (:by |root) (:id |ByWv-d_vaG) (:text |0) (:type :leaf)
                                              |v $ {} (:at 1525282820454) (:by |root) (:id |rkbtWdOPaz) (:text |96) (:type :leaf)
                                      |v $ {} (:at 1525282832991) (:by |root) (:id |rJxFGO_PTM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525282833922) (:by |root) (:id |rJxFGO_PTMleaf) (:text |:margin) (:type :leaf)
                                          |j $ {} (:at 1525368237640) (:by |root) (:id |H1oGudPaf) (:text "|\"0 8px 8px 0") (:type :leaf)
                                      |x $ {} (:at 1525282859069) (:by |root) (:id |BJbX4dOv6G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525282860153) (:by |root) (:id |BJbX4dOv6Gleaf) (:text |:padding) (:type :leaf)
                                          |j $ {} (:at 1525282860559) (:by |root) (:id |ryL4Vddw6M) (:text |8) (:type :leaf)
                          |r $ {} (:at 1525542208715) (:by |root) (:id |BkKBpPs6f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525542214293) (:by |root) (:id |BkKBpPs6fleaf) (:text |:draggable) (:type :leaf)
                              |j $ {} (:at 1525542215498) (:by |root) (:id |B11UpPopM) (:text |true) (:type :leaf)
                          |v $ {} (:at 1525542251960) (:by |root) (:id |HJ4uaPiTz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525542254961) (:by |root) (:id |HJ4uaPiTzleaf) (:text |:on-dragstart) (:type :leaf)
                              |j $ {} (:at 1525542255567) (:by |root) (:id |r1uuTPspf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525542255869) (:by |root) (:id |B1EDupPsaf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1525542256207) (:by |root) (:id |rkQu_6Ds6G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525542256437) (:by |root) (:id |ByGudpDjaM) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1525542257069) (:by |root) (:id |SJF_6vjTz) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1525542260324) (:by |root) (:id |rk9_pPsTf) (:text |m!) (:type :leaf)
                                  |r $ {} (:at 1525542267718) (:by |root) (:id |BkFJCvoTM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431429801) (:by |B1y7Rc-Zz) (:id |S1NFpPiaGleaf) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1525542264387) (:by |root) (:id |rygI10vjpM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525542265614) (:by |root) (:id |ry8kFaDsaz) (:text |:event) (:type :leaf)
                                          |j $ {} (:at 1525542265822) (:by |root) (:id |rkxztTPoTG) (:text |e) (:type :leaf)
                                      |r $ {} (:at 1629431428071) (:by |B1y7Rc-Zz) (:id |B1htavjpG) (:text |.-dataTransfer) (:type :leaf)
                                      |v $ {} (:at 1525542355066) (:by |root) (:id |HyliAaPs6z) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629431437021) (:by |B1y7Rc-Zz) (:id |Bk--9aDs6z) (:text |.!setData) (:type :leaf)
                                          |j $ {} (:at 1525542359106) (:by |root) (:id |H1l0RpDo6G) (:text "|\"text/plain") (:type :leaf)
                                          |r $ {} (:at 1525543075083) (:by |root) (:id |rkl9oe_sTG) (:text |sort-id) (:type :leaf)
                          |x $ {} (:at 1525542299150) (:by |root) (:id |B1lmopwi6f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525542315375) (:by |root) (:id |B1lmopwi6fleaf) (:text |:on-dragover) (:type :leaf)
                              |j $ {} (:at 1525542317956) (:by |root) (:id |S1xIn6Di6f) (:type :expr)
                                :data $ {}
                                  |j $ {} (:at 1525542318570) (:by |root) (:id |S1ZI3aDopM) (:text |fn) (:type :leaf)
                                  |r $ {} (:at 1525542318903) (:by |root) (:id |Sy-v2pwiaM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525542319646) (:by |root) (:id |BklwhTwipM) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1525542320297) (:by |root) (:id |BJgd3pDsaz) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1525542321013) (:by |root) (:id |S1XOhaDspM) (:text |m!) (:type :leaf)
                                  |t $ {} (:at 1525542392387) (:by |root) (:id |Syll-RPs6G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431431910) (:by |B1y7Rc-Zz) (:id |Syll-RPs6Gleaf) (:text |.!preventDefault) (:type :leaf)
                                      |j $ {} (:at 1525542395388) (:by |root) (:id |ryIXbRvs6f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525542396151) (:by |root) (:id |B1BX-RDs6G) (:text |:event) (:type :leaf)
                                          |j $ {} (:at 1525542396388) (:by |root) (:id |rkHEbCviTM) (:text |e) (:type :leaf)
                                  |u $ {} (:at 1525542400916) (:by |root) (:id |rkKZRwjpG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525542402399) (:by |root) (:id |rkKZRwjpGleaf) (:text |set!) (:type :leaf)
                                      |j $ {} (:at 1525542403802) (:by |root) (:id |SynZAPspG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629431414755) (:by |B1y7Rc-Zz) (:id |S1o-CvoTG) (:text |->) (:type :leaf)
                                          |j $ {} (:at 1525542406708) (:by |root) (:id |ryJf0Pj6f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525542407551) (:by |root) (:id |rJA-Awoaz) (:text |:event) (:type :leaf)
                                              |j $ {} (:at 1525542448872) (:by |root) (:id |H1FNCwiTz) (:text |e) (:type :leaf)
                                          |r $ {} (:at 1629431412604) (:by |B1y7Rc-Zz) (:id |S1-gfCPi6G) (:text |.-dataTransfer) (:type :leaf)
                                          |v $ {} (:at 1629431416486) (:by |B1y7Rc-Zz) (:id |BydMCvi6M) (:text |.-dropEffect) (:type :leaf)
                                      |r $ {} (:at 1525542423228) (:by |root) (:id |SJZRfCDspz) (:text "|\"move") (:type :leaf)
                          |y $ {} (:at 1525542425527) (:by |root) (:id |HJM7Cvjpf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525542427189) (:by |root) (:id |HJM7Cvjpfleaf) (:text |:on-drop) (:type :leaf)
                              |j $ {} (:at 1525542427423) (:by |root) (:id |SkrQmAwjTM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525542427673) (:by |root) (:id |S1EQQAwo6G) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1525542427961) (:by |root) (:id |BkM4QAPoaz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525542428176) (:by |root) (:id |Hy-VmCwi6f) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1525542429898) (:by |root) (:id |rkVVm0PoTM) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1525542431250) (:by |root) (:id |HyZ8mRDsaG) (:text |m!) (:type :leaf)
                                  |r $ {} (:at 1525542323479) (:by |root) (:id |HJjm0viaM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525542336772) (:by |root) (:id |H17D6avs6G) (:text |let) (:type :leaf)
                                      |j $ {} (:at 1525542336991) (:by |root) (:id |BJ7taawipz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525542337156) (:by |root) (:id |rkEY6avjaM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525542733135) (:by |root) (:id |B1MFTTDsaz) (:text |drag-id) (:type :leaf)
                                              |j $ {} (:at 1525542339036) (:by |root) (:id |HyMj6pPiTz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629431418936) (:by |B1y7Rc-Zz) (:id |r1WjppDoTf) (:text |->) (:type :leaf)
                                                  |j $ {} (:at 1525542340588) (:by |root) (:id |BJT6awi6z) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525542342370) (:by |root) (:id |SyG3aTvi6f) (:text |:event) (:type :leaf)
                                                      |j $ {} (:at 1525542343326) (:by |root) (:id |Hy1AawoTM) (:text |e) (:type :leaf)
                                                  |r $ {} (:at 1629431422188) (:by |B1y7Rc-Zz) (:id |B1gxCTvopM) (:text |.-dataTransfer) (:type :leaf)
                                                  |v $ {} (:at 1525542351715) (:by |root) (:id |rJdRTvo6z) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629431439656) (:by |B1y7Rc-Zz) (:id |H1eICpwspM) (:text |.!getData) (:type :leaf)
                                                      |j $ {} (:at 1525542382076) (:by |root) (:id |S1310wiaM) (:text "|\"text") (:type :leaf)
                                          |j $ {} (:at 1525542721089) (:by |root) (:id |rylFSyOopG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525542734629) (:by |root) (:id |rylFSyOopGleaf) (:text |drop-id) (:type :leaf)
                                              |j $ {} (:at 1525543081732) (:by |root) (:id |HkW3gOspM) (:text |sort-id) (:type :leaf)
                                      |v $ {} (:at 1525542709957) (:by |root) (:id |ByRE1dsTf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525542713532) (:by |root) (:id |ByRE1dsTfleaf) (:text |when) (:type :leaf)
                                          |j $ {} (:at 1525542716052) (:by |root) (:id |r1bUDkOoTM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525542745490) (:by |root) (:id |HyNBydj6G) (:text |not=) (:type :leaf)
                                              |j $ {} (:at 1525542747965) (:by |root) (:id |rkMNHk_s6f) (:text |drag-id) (:type :leaf)
                                              |r $ {} (:at 1525542749374) (:by |root) (:id |BJ1wydiTG) (:text |drop-id) (:type :leaf)
                                          |r $ {} (:at 1525542753116) (:by |root) (:id |rkYvkdiTz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525542753998) (:by |root) (:id |rkYvkdiTzleaf) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1525542819072) (:by |root) (:id |B1W9w1dopf) (:text |:plan/move) (:type :leaf)
                                              |r $ {} (:at 1525542761518) (:by |root) (:id |ryzd1diTG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525542761910) (:by |root) (:id |rJgbOy_iTM) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1525542762105) (:by |root) (:id |r1Qfdy_sTG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525542769718) (:by |root) (:id |S1zzOydiaf) (:text |:from) (:type :leaf)
                                                      |j $ {} (:at 1525542768323) (:by |root) (:id |H1PdyujpG) (:text |drag-id) (:type :leaf)
                                                  |r $ {} (:at 1525542770246) (:by |root) (:id |BJb9O1OoaG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525542770830) (:by |root) (:id |BJb9O1OoaGleaf) (:text |:to) (:type :leaf)
                                                      |j $ {} (:at 1525542773828) (:by |root) (:id |BJZod1uo6z) (:text |drop-id) (:type :leaf)
                      |r $ {} (:at 1525282703991) (:by |root) (:id |BJ_5DODpM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282705639) (:by |root) (:id |BJ_5DODpMleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1525282708321) (:by |root) (:id |Hyf25vdDTM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525282709522) (:by |root) (:id |rk-95wdD6f) (:text |:text) (:type :leaf)
                              |j $ {} (:at 1525282710592) (:by |root) (:id |SklCcvOvTM) (:text |task) (:type :leaf)
                      |v $ {} (:at 1525282711876) (:by |root) (:id |BylgjvuPaz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282712374) (:by |root) (:id |BylgjvuPazleaf) (:text |div) (:type :leaf)
                          |j $ {} (:at 1525282712604) (:by |root) (:id |ryWowdDTf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525282713665) (:by |root) (:id |Hk4esPuwpG) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1525282714095) (:by |root) (:id |HybGiDuvaz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525282715011) (:by |root) (:id |rkgGsPuDaf) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1525282716180) (:by |root) (:id |BkbQsPdDaz) (:text |ui/row) (:type :leaf)
                          |o $ {} (:at 1629431615782) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629431619757) (:by |B1y7Rc-Zz) (:text |comp-icon) (:type :leaf)
                              |j $ {} (:at 1629431615782) (:by |B1y7Rc-Zz) (:text |:edit) (:type :leaf)
                              |v $ {} (:at 1629431621926) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1629431623886) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1629431624417) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629431626807) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                      |T $ {} (:at 1629431615782) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629431615782) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1629431615782) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                                          |r $ {} (:at 1629431615782) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                                          |v $ {} (:at 1629431615782) (:by |B1y7Rc-Zz) (:text |70) (:type :leaf)
                                  |j $ {} (:at 1629431627308) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431631597) (:by |B1y7Rc-Zz) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1629431634244) (:by |B1y7Rc-Zz) (:text |14) (:type :leaf)
                                  |r $ {} (:at 1629431635356) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431637174) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1629431640106) (:by |B1y7Rc-Zz) (:text |:pointer) (:type :leaf)
                              |x $ {} (:at 1629431640863) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629431644654) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629431644988) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431645439) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1629431646120) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1629431646577) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431650765) (:by |B1y7Rc-Zz) (:text |.show) (:type :leaf)
                                      |j $ {} (:at 1629431655145) (:by |B1y7Rc-Zz) (:text |update-plugin) (:type :leaf)
                                      |r $ {} (:at 1629431656342) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |v $ {} (:at 1629431656848) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629431659630) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1629431660219) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629431668990) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                                          |r $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                                              |j $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                                                  |j $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |.blank?) (:type :leaf)
                                                      |j $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                                              |r $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |:plan/update-text) (:type :leaf)
                                                  |r $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |sort-id) (:type :leaf)
                                                      |r $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                          |j $ {} (:at 1629431664889) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                          |v $ {} (:at 1525282746361) (:by |root) (:id |rkGTv_PpG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525282747356) (:by |root) (:id |rkGTv_PpGleaf) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1525368178208) (:by |root) (:id |BJETDOwTz) (:text |16) (:type :leaf)
                              |r $ {} (:at 1525282748336) (:by |root) (:id |SJbVpvOv6z) (:text |nil) (:type :leaf)
                          |w $ {} (:at 1629431673630) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629431676080) (:by |B1y7Rc-Zz) (:text |comp-icon) (:type :leaf)
                              |j $ {} (:at 1629431679584) (:by |B1y7Rc-Zz) (:text |:eye-off) (:type :leaf)
                              |r $ {} (:at 1629431681624) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629431681980) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1629431682351) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431684166) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1629431686117) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629431686117) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1629431686117) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                                          |r $ {} (:at 1629431686117) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                                          |v $ {} (:at 1629431686117) (:by |B1y7Rc-Zz) (:text |70) (:type :leaf)
                                  |r $ {} (:at 1629431686825) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431688658) (:by |B1y7Rc-Zz) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1629431689462) (:by |B1y7Rc-Zz) (:text |14) (:type :leaf)
                                  |v $ {} (:at 1629431696999) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431699048) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1629431700886) (:by |B1y7Rc-Zz) (:text |:pointer) (:type :leaf)
                              |v $ {} (:at 1629431701635) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629431702277) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629431702432) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431703454) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1629431704228) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1629431704774) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629431713878) (:by |B1y7Rc-Zz) (:text |.show) (:type :leaf)
                                      |j $ {} (:at 1629431716991) (:by |B1y7Rc-Zz) (:text |remove-plugin) (:type :leaf)
                                      |r $ {} (:at 1629431718706) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |v $ {} (:at 1629431719075) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629431719524) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1629431719760) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                          |r $ {} (:at 1629431743251) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629431743251) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1629431743251) (:by |B1y7Rc-Zz) (:text |:plan/remove-one) (:type :leaf)
                                              |r $ {} (:at 1629431743251) (:by |B1y7Rc-Zz) (:text |sort-id) (:type :leaf)
                          |yT $ {} (:at 1629431597775) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629431599711) (:by |B1y7Rc-Zz) (:text |.render) (:type :leaf)
                              |j $ {} (:at 1629431604690) (:by |B1y7Rc-Zz) (:text |update-plugin) (:type :leaf)
                          |yj $ {} (:at 1629431605241) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629431606128) (:by |B1y7Rc-Zz) (:text |.render) (:type :leaf)
                              |j $ {} (:at 1629431608920) (:by |B1y7Rc-Zz) (:text |remove-plugin) (:type :leaf)
        :ns $ {} (:at 1525194950971) (:by |root) (:id |S1x1RxQ8Tz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1525194950971) (:by |root) (:id |HJ-yAlmLaf) (:text |ns) (:type :leaf)
            |j $ {} (:at 1525194950971) (:by |root) (:id |BkMyAl7IaM) (:text |app.comp.plan) (:type :leaf)
            |r $ {} (:at 1500541010211) (:by nil) (:id |rkrkbmL6G) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |By6Fe5LlgRr-) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rJxw4e52kz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1-Yg5UelCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |HyfFecIgxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkQKx5Lxg0rZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1VFg98ex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1HtxqIelASb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BJLFecUle0S-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |r1Dtg9Igg0rW) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SydYe98xe0BW) (:text |div) (:type :leaf)
                        |w $ {} (:at 1525282587890) (:by |root) (:id |B1Mmwuv6z) (:text |list->) (:type :leaf)
                        |wT $ {} (:at 1608354082041) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJttec8elRrW) (:text |input) (:type :leaf)
                        |y $ {} (:at 1500541010211) (:by |root) (:id |HJ9tl98xxAHb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1500541010211) (:by |root) (:id |SyoYl9LelCBW) (:text |span) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |rkBqe58el0HZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S189lq8leAHW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1DcxqUexABZ) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |r1dcgc8xg0HZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyF5x98llCSW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJc9g58xg0HZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1j9g98ggCB-) (:text |=<) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |S129ecIxeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |By6cgq8llCr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJ09lqUxeRBb) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkJoxqUeg0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJxigqIex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkWslq8eeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |S1Gsg98geRrb) (:text |comp-inspect) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |rk7ol9IxxABZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |ry4ie5IgeArW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547410331) (:by |root) (:id |B1Bjgc8gxRrW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkIjeq8xxCBZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1vixqLll0SZ) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |ry_sxqUeeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1niecUxlCrZ) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |SJdID4pPz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368017028) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.style) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368019779) (:by |root) (:id |r1niecUxlCrZ) (:text |style) (:type :leaf)
                |yr $ {} (:at 1525282822946) (:by |root) (:id |S1JMuuwTG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525282824160) (:by |root) (:id |S1JMuuwTGleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629428903678) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1525282826201) (:by |root) (:id |ryGfuuD6M) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1525282826459) (:by |root) (:id |SJwGG_dP6z) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1525282827307) (:by |root) (:id |HyUGfuOv6z) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1525282827853) (:by |root) (:id |SkZ7GuOP6G) (:text |hsl) (:type :leaf)
                |yy $ {} (:at 1528219642939) (:by |root) (:id |SJg7bdr4xm) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1528219643991) (:by |root) (:id |SJg7bdr4xmleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608353810146) (:by |B1y7Rc-Zz) (:id |SkeV-OrEgm) (:text |respo-alerts.core) (:type :leaf)
                    |r $ {} (:at 1528219649352) (:by |root) (:id |HyFbOSVgQ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1528219649592) (:by |root) (:id |Sk5Z_rNlQ) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1528219649832) (:by |root) (:id |SkLFWdHVxX) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1629430760924) (:by |B1y7Rc-Zz) (:id |B1Mc-ur4xX) (:text |use-confirm) (:type :leaf)
                        |r $ {} (:at 1629430757312) (:by |B1y7Rc-Zz) (:id |BygPiOH4x7) (:text |use-prompt) (:type :leaf)
                |yyT $ {} (:at 1608353710513) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608353710893) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608353713362) (:by |B1y7Rc-Zz) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1608353714075) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608353714279) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608353714505) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608353723198) (:by |B1y7Rc-Zz) (:text |comp-i) (:type :leaf)
                        |r $ {} (:at 1608478068973) (:by |B1y7Rc-Zz) (:text |comp-icon) (:type :leaf)
        :proc $ {} (:at 1525194950971) (:by |root) (:id |r1710emIpz) (:type :expr)
          :data $ {}
      |app.comp.profile $ {}
        :defs $ {}
          |comp-profile $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |comp-profile) (:type :leaf)
              |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |members) (:type :leaf)
              |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |ui/flex) (:type :leaf)
                              |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                                  |r $ {} (:at 1608544724966) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608544728267) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1608700852003) (:by |B1y7Rc-Zz) (:text "|\"60%") (:type :leaf)
                  |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |ui/font-fancy) (:type :leaf)
                                  |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |32) (:type :leaf)
                                  |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:font-weight) (:type :leaf)
                                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |100) (:type :leaf)
                      |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text "|\"Hello! ") (:type :leaf)
                              |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                  |x $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |ui/row) (:type :leaf)
                      |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text "|\"Members:") (:type :leaf)
                      |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                      |x $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |ui/row) (:type :leaf)
                          |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629431256502) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |members) (:type :leaf)
                              |n $ {} (:at 1636986385826) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636986386995) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636986389325) (:by |B1y7Rc-Zz) (:text |map) (:type :leaf)
                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636986394907) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1636986316291) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1636986399363) (:by |B1y7Rc-Zz) (:text |let[]) (:type :leaf)
                                          |L $ {} (:at 1636986399635) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636986401108) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                              |j $ {} (:at 1636986403783) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                          |P $ {} (:at 1636986406144) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                              |r $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                                  |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                                          |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                                                                  |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text "|\"0 8px") (:type :leaf)
                                                              |r $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |:border) (:type :leaf)
                                                                  |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                                      |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text "|\"1px solid ") (:type :leaf)
                                                                      |r $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                                                          |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                                                          |r $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                                                          |v $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                                                              |v $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |:border-radius) (:type :leaf)
                                                                  |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text "|\"16px") (:type :leaf)
                                                              |x $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |:margin) (:type :leaf)
                                                                  |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text "|\"0 4px") (:type :leaf)
                                                  |r $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                                                      |j $ {} (:at 1636986194632) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                  |y $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |48) (:type :leaf)
                  |yT $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |button) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |ui/button) (:type :leaf)
                              |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |js/location.replace) (:type :leaf)
                                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |js/location.origin) (:type :leaf)
                                              |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text "|\"?time=") (:type :leaf)
                                              |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |.now) (:type :leaf)
                                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |js/Date) (:type :leaf)
                          |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text "|\"Refresh") (:type :leaf)
                      |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                      |x $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |button) (:type :leaf)
                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |ui/button) (:type :leaf)
                                      |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:red) (:type :leaf)
                                          |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:border-color) (:type :leaf)
                                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:red) (:type :leaf)
                              |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:user/log-out) (:type :leaf)
                                          |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |.removeItem) (:type :leaf)
                                          |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |js/localStorage) (:type :leaf)
                                          |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                          |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text "|\"Log out") (:type :leaf)
        :ns $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |app.comp.profile) (:type :leaf)
            |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629431279797) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |ui) (:type :leaf)
                |x $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |list->) (:type :leaf)
                        |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                        |x $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |span) (:type :leaf)
                        |y $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                        |yT $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |button) (:type :leaf)
                |y $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                |yT $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
        :proc $ {} (:at 1608357047520) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
      |app.comp.today $ {}
        :defs $ {}
          |comp-task $ {} (:at 1525541456363) (:by |root) (:id |BJeOL5vs6f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525541459143) (:by |root) (:id |HJbuIqwjpf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1525541456363) (:by |root) (:id |r1Gd8qvjaG) (:text |comp-task) (:type :leaf)
              |n $ {} (:at 1525541461853) (:by |root) (:id |r1bCLqDs6f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525541461611) (:by |root) (:id |Bkg2IcviTG) (:text |task) (:type :leaf)
                  |j $ {} (:at 1525541464486) (:by |root) (:id |B1G0LcPiTG) (:text |operation) (:type :leaf)
              |r $ {} (:at 1525541456363) (:by |root) (:id |H17uUqvs6f) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525541456363) (:by |root) (:id |SkEOUqwspM) (:text |div) (:type :leaf)
                  |j $ {} (:at 1525541456363) (:by |root) (:id |ryH_I9vj6z) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525541456363) (:by |root) (:id |S18_I9vipM) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1525541456363) (:by |root) (:id |S1wdI5Di6z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525541456363) (:by |root) (:id |Bk_uU9vs6f) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1525541456363) (:by |root) (:id |S1Y_U9Do6M) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525541456363) (:by |root) (:id |H1cuL5Dopf) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1525541456363) (:by |root) (:id |Hyi_U5wspM) (:text |ui/row) (:type :leaf)
                              |r $ {} (:at 1525541456363) (:by |root) (:id |S1hOIqDiTM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525541456363) (:by |root) (:id |Hkpu8cDipf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1525541456363) (:by |root) (:id |SyRuUqvsTf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541456363) (:by |root) (:id |SJyguU9Di6G) (:text |:align-items) (:type :leaf)
                                      |j $ {} (:at 1525541456363) (:by |root) (:id |S1lgOUcDspf) (:text |:center) (:type :leaf)
                                  |r $ {} (:at 1525541456363) (:by |root) (:id |ryWguLqvoTG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541456363) (:by |root) (:id |S1GedI5vs6M) (:text |:margin) (:type :leaf)
                                      |j $ {} (:at 1525541456363) (:by |root) (:id |SkQeu89vsaM) (:text |8) (:type :leaf)
                                  |x $ {} (:at 1525541456363) (:by |root) (:id |r1wxOIcPj6f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541456363) (:by |root) (:id |r1_xO85woaM) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1525541456363) (:by |root) (:id |ryFluI9wsTM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525541456363) (:by |root) (:id |HJ9gOI5DsaG) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1525541456363) (:by |root) (:id |HkseO8qPjaG) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1525541456363) (:by |root) (:id |HJ3guI9wiTG) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1525541456363) (:by |root) (:id |SJag_89wipf) (:text |96) (:type :leaf)
                  |r $ {} (:at 1525541456363) (:by |root) (:id |H1RxuLqPopM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525541456363) (:by |root) (:id |H1kbd85vsaG) (:text |div) (:type :leaf)
                      |j $ {} (:at 1525541456363) (:by |root) (:id |HkeW_85woTf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525541456363) (:by |root) (:id |SJZ-OU9Djpf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1525541456363) (:by |root) (:id |rJzZ_IqDoaf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525541456363) (:by |root) (:id |SJQbOLcPo6f) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1525541456363) (:by |root) (:id |SyN-d8qviTz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525541456363) (:by |root) (:id |B1SWOLqPjTG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1525541456363) (:by |root) (:id |S1UZ_I9vsaf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541456363) (:by |root) (:id |H1DZuL9DjTf) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1525541456363) (:by |root) (:id |r1uWuL5PoTz) (:text |32) (:type :leaf)
                                  |r $ {} (:at 1525541456363) (:by |root) (:id |ryYbOLqDoaG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541456363) (:by |root) (:id |SkcbOU9wjaG) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1525541456363) (:by |root) (:id |r1o-O8qwopM) (:text |32) (:type :leaf)
                                  |v $ {} (:at 1525541456363) (:by |root) (:id |ryhW_U9Dsaz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541456363) (:by |root) (:id |S1T-_LqDo6M) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1525541456363) (:by |root) (:id |HJ0WOIcviaG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525541456363) (:by |root) (:id |r1Jfd85PiaG) (:text |if) (:type :leaf)
                                          |j $ {} (:at 1525541456363) (:by |root) (:id |HygfuI5PjpM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525541456363) (:by |root) (:id |rybf_IcwjpG) (:text |:done?) (:type :leaf)
                                              |j $ {} (:at 1525541456363) (:by |root) (:id |H1zGd8cPoaG) (:text |operation) (:type :leaf)
                                          |r $ {} (:at 1525541456363) (:by |root) (:id |rkQf_89Psaf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525541456363) (:by |root) (:id |B1Ez_L9wsaM) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1525541456363) (:by |root) (:id |rkHG_I5Pspf) (:text |200) (:type :leaf)
                                              |r $ {} (:at 1525541456363) (:by |root) (:id |rkUzOL9wipz) (:text |80) (:type :leaf)
                                              |v $ {} (:at 1525541456363) (:by |root) (:id |SkwGu8qwoTG) (:text |80) (:type :leaf)
                                          |v $ {} (:at 1525541456363) (:by |root) (:id |HJOMd8qDoTf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525541456363) (:by |root) (:id |H1YfdIqDs6z) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1525541456363) (:by |root) (:id |H1qzuL9wi6z) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1525541456363) (:by |root) (:id |HJoGdU9Pjaz) (:text |0) (:type :leaf)
                                              |v $ {} (:at 1525541456363) (:by |root) (:id |Bk2fO8cPj6z) (:text |90) (:type :leaf)
                                  |x $ {} (:at 1525541456363) (:by |root) (:id |HkpfuIqvoTf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541456363) (:by |root) (:id |B1Afd8cDspz) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1525541456363) (:by |root) (:id |HJyXdUqwsTf) (:text |:pointer) (:type :leaf)
                          |r $ {} (:at 1525541456363) (:by |root) (:id |rJgQO85Ds6M) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525541456363) (:by |root) (:id |ByZQ_LqDoaf) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1608354226913) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1608354227446) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1608354227671) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608354227907) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1608354228494) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1525541456363) (:by |root) (:id |BkzQ_Ucwj6M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608354226321) (:by |B1y7Rc-Zz) (:id |rkQQOUqPo6M) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1525541456363) (:by |root) (:id |H14QuL5Doaz) (:text |:operation/toggle-task) (:type :leaf)
                                      |r $ {} (:at 1525541456363) (:by |root) (:id |B1SX_Icvopf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525541456363) (:by |root) (:id |HJ8X_89wipf) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1525541456363) (:by |root) (:id |S1PXd8qwjTz) (:text |task) (:type :leaf)
                  |v $ {} (:at 1525541456363) (:by |root) (:id |B1_XO85Dj6M) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525541456363) (:by |root) (:id |SyK7_I9PoaM) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1525541456363) (:by |root) (:id |B1qQu8cwipz) (:text |8) (:type :leaf)
                      |r $ {} (:at 1525541456363) (:by |root) (:id |SJomuIcvsaz) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1525541456363) (:by |root) (:id |Hy3XdLcPjpG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525541456363) (:by |root) (:id |SJ6XdL9wsTz) (:text |<>) (:type :leaf)
                      |j $ {} (:at 1525541456363) (:by |root) (:id |SJAmdL5DoTG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525541456363) (:by |root) (:id |Sk1NOI9wsaG) (:text |:text) (:type :leaf)
                          |j $ {} (:at 1525541456363) (:by |root) (:id |rkxVuUcvjaG) (:text |task) (:type :leaf)
          |comp-today $ {} (:at 1525195032028) (:by |root) (:id |r1xem-mU6f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525195038497) (:by |root) (:id |BJ-l7b7U6M) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1525195032028) (:by |root) (:id |rJzxm-XLaz) (:text |comp-today) (:type :leaf)
              |r $ {} (:at 1525195032028) (:by |root) (:id |H1Xe7WmUTM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525281655784) (:by |root) (:id |BJx1F7uDTz) (:text |date) (:type :leaf)
                  |j $ {} (:at 1525368531518) (:by |root) (:id |rk-9C8a_aG) (:text |plan) (:type :leaf)
                  |r $ {} (:at 1525368533481) (:by |root) (:id |r1gnRI6Oaf) (:text |operations) (:type :leaf)
              |v $ {} (:at 1525195041149) (:by |root) (:id |SJKXbQLTf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525195041514) (:by |root) (:id |SJKXbQLTfleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1525195041738) (:by |root) (:id |H1x97ZXUTz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525195043482) (:by |root) (:id |HJc7-QI6z) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1525195043754) (:by |root) (:id |H1xnQWQUTf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525195044551) (:by |root) (:id |rJ2XZXIpf) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1525195044788) (:by |root) (:id |B1Zambm86G) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525195045137) (:by |root) (:id |rJl6XbXU6M) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1608544641797) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608544641797) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                                  |j $ {} (:at 1608700839719) (:by |B1y7Rc-Zz) (:text "|\"60%") (:type :leaf)
                  |v $ {} (:at 1525368540149) (:by |root) (:id |ByVJwadaz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1525368540850) (:by |root) (:id |rJlNyPpuaz) (:text |div) (:type :leaf)
                      |L $ {} (:at 1525368541051) (:by |root) (:id |H1XSkwpOTG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525368541334) (:by |root) (:id |r1MS1va_6G) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1525538784213) (:by |root) (:id |ryW_kxDjpz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525538784910) (:by |root) (:id |BJx_kgvspG) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1525538788590) (:by |root) (:id |HJmtJxwoTG) (:text |style/title) (:type :leaf)
                      |P $ {} (:at 1525508391279) (:by |root) (:id |SJmJNKkjaM) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1525508391929) (:by |root) (:id |HJeVtkiTz) (:text |<>) (:type :leaf)
                          |T $ {} (:at 1525195048505) (:by |root) (:id |rJg5JvTdaM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525508390879) (:by |root) (:id |SkXlNWm8azleaf) (:text |str) (:type :leaf)
                              |j $ {} (:at 1525508382867) (:by |root) (:id |SJZ-VZmIpG) (:text "|\"Today(") (:type :leaf)
                              |n $ {} (:at 1525508386401) (:by |root) (:id |Bkq7F1j6G) (:text |date) (:type :leaf)
                              |r $ {} (:at 1525508384857) (:by |root) (:id |HkxPXtyjTM) (:text "|\")") (:type :leaf)
                  |w $ {} (:at 1525541973163) (:by |root) (:id |rk68nPipf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1525541975368) (:by |root) (:id |HyRL3wipf) (:text |let) (:type :leaf)
                      |L $ {} (:at 1525541975592) (:by |root) (:id |HyxPnPi6z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525541975728) (:by |root) (:id |HJglv2PsTM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525541977777) (:by |root) (:id |H1z1w3DsTG) (:text |todo-tasks) (:type :leaf)
                              |j $ {} (:at 1525368563653) (:by |root) (:id |H1lLwhDiaM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428780955) (:by |B1y7Rc-Zz) (:id |B1gjgPpdpf) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1525368574870) (:by |root) (:id |SJClvpuTM) (:text |plan) (:type :leaf)
                                  |l $ {} (:at 1629432140241) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629432141039) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                      |j $ {} (:at 1629432141719) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629435072135) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |m $ {} (:at 1629435073675) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629435076143) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                  |n $ {} (:at 1525541866692) (:by |root) (:id |rkme2viaM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541868212) (:by |root) (:id |rkme2viaMleaf) (:text |filter) (:type :leaf)
                                      |j $ {} (:at 1525541873365) (:by |root) (:id |BJFlnDiTf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525541874258) (:by |root) (:id |HJ4_xhvipz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1525541874535) (:by |root) (:id |rJsehwiaM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428794971) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |r $ {} (:at 1525541888030) (:by |root) (:id |H1uWnwj6G) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428807738) (:by |B1y7Rc-Zz) (:id |H1uWnwj6Gleaf) (:text |let-sugar) (:type :leaf)
                                              |j $ {} (:at 1525368626176) (:by |root) (:id |HkeCWhvopz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1629428799222) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629428800251) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629428800251) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                                          |j $ {} (:at 1629428800251) (:by |B1y7Rc-Zz) (:text |sort-id) (:type :leaf)
                                                          |r $ {} (:at 1629428800251) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                      |j $ {} (:at 1629428805035) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                  |T $ {} (:at 1525368626332) (:by |root) (:id |ryXqNPpOaz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525368632706) (:by |root) (:id |ByZ5VDa_az) (:text |operation) (:type :leaf)
                                                      |j $ {} (:at 1629435155041) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1629435155723) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                                          |T $ {} (:at 1525368633271) (:by |root) (:id |SJbWrwadTf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525368636097) (:by |root) (:id |BkgZBD6Opz) (:text |get) (:type :leaf)
                                                              |j $ {} (:at 1525368637934) (:by |root) (:id |H1NErDTuTG) (:text |operations) (:type :leaf)
                                                              |r $ {} (:at 1525368640294) (:by |root) (:id |SJeurDa_6G) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1525368640842) (:by |root) (:id |BkdrD6_TM) (:text |:id) (:type :leaf)
                                                                  |j $ {} (:at 1525368641361) (:by |root) (:id |ryZtHDTuTz) (:text |task) (:type :leaf)
                                                          |j $ {} (:at 1629435157891) (:by |B1y7Rc-Zz) (:text |schema/operation) (:type :leaf)
                                              |r $ {} (:at 1527439572946) (:by |root) (:id |HkgpAgDdyQ) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1527439573706) (:by |root) (:id |rkWp0xwdy7) (:text |and) (:type :leaf)
                                                  |L $ {} (:at 1527439574384) (:by |root) (:id |S1G0ReDuJ7) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1527439575111) (:by |root) (:id |B1bRRlw_J7) (:text |not) (:type :leaf)
                                                      |j $ {} (:at 1527439575730) (:by |root) (:id |ryxk-wd1X) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1527439577086) (:by |root) (:id |SJzJJ-DdyX) (:text |:deleted?) (:type :leaf)
                                                          |j $ {} (:at 1527439588899) (:by |root) (:id |SkmbkbPu17) (:text |task) (:type :leaf)
                                                  |T $ {} (:at 1525541903451) (:by |root) (:id |B1lPzhPoaM) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1525541904117) (:by |root) (:id |ryuG3wiaG) (:text |not) (:type :leaf)
                                                      |T $ {} (:at 1525541894820) (:by |root) (:id |Byyf2wsaM) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525541896760) (:by |root) (:id |Byyf2wsaMleaf) (:text |:done?) (:type :leaf)
                                                          |j $ {} (:at 1525541898780) (:by |root) (:id |BkxZz2voTf) (:text |operation) (:type :leaf)
                          |j $ {} (:at 1525542010172) (:by |root) (:id |BkZfF2PspG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525542012433) (:by |root) (:id |BkZfF2PspGleaf) (:text |done-tasks) (:type :leaf)
                              |j $ {} (:at 1525368563653) (:by |root) (:id |SyUK2wi6M) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428782536) (:by |B1y7Rc-Zz) (:id |B1gjgPpdpf) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1525368574870) (:by |root) (:id |SJClvpuTM) (:text |plan) (:type :leaf)
                                  |l $ {} (:at 1629432145069) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629432146233) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                      |j $ {} (:at 1629432146540) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629435065913) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |m $ {} (:at 1629435066915) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629435068863) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                  |n $ {} (:at 1525541866692) (:by |root) (:id |HJW1Q2DoTM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541868212) (:by |root) (:id |rkme2viaMleaf) (:text |filter) (:type :leaf)
                                      |j $ {} (:at 1525541873365) (:by |root) (:id |BJFlnDiTf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525541874258) (:by |root) (:id |HJ4_xhvipz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1525541874535) (:by |root) (:id |rJsehwiaM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428816916) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |r $ {} (:at 1525541888030) (:by |root) (:id |H1uWnwj6G) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428881456) (:by |B1y7Rc-Zz) (:id |H1uWnwj6Gleaf) (:text |let-sugar) (:type :leaf)
                                              |j $ {} (:at 1525368626176) (:by |root) (:id |HkeCWhvopz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1629428812842) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629428811373) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629428811373) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                                          |j $ {} (:at 1629428811373) (:by |B1y7Rc-Zz) (:text |sort-id) (:type :leaf)
                                                          |r $ {} (:at 1629428811373) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                      |j $ {} (:at 1629428814155) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                  |T $ {} (:at 1525368626332) (:by |root) (:id |ryXqNPpOaz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525368632706) (:by |root) (:id |ByZ5VDa_az) (:text |operation) (:type :leaf)
                                                      |j $ {} (:at 1629435162563) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1629435163246) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                                          |T $ {} (:at 1525368633271) (:by |root) (:id |SJbWrwadTf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525368636097) (:by |root) (:id |BkgZBD6Opz) (:text |get) (:type :leaf)
                                                              |j $ {} (:at 1525368637934) (:by |root) (:id |H1NErDTuTG) (:text |operations) (:type :leaf)
                                                              |r $ {} (:at 1525368640294) (:by |root) (:id |SJeurDa_6G) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1525368640842) (:by |root) (:id |BkdrD6_TM) (:text |:id) (:type :leaf)
                                                                  |j $ {} (:at 1525368641361) (:by |root) (:id |ryZtHDTuTz) (:text |task) (:type :leaf)
                                                          |j $ {} (:at 1629435163984) (:by |B1y7Rc-Zz) (:text |schema/operation) (:type :leaf)
                                              |r $ {} (:at 1527439590859) (:by |root) (:id |B1l1xZwu1m) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1527439592046) (:by |root) (:id |BkZkeZDO1X) (:text |and) (:type :leaf)
                                                  |L $ {} (:at 1527439592213) (:by |root) (:id |HyQlxbDuyX) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1527439593430) (:by |root) (:id |S1MggWwuJQ) (:text |not) (:type :leaf)
                                                      |j $ {} (:at 1527439594947) (:by |root) (:id |Sybml-POkm) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1527439597759) (:by |root) (:id |r1gXeWw_kQ) (:text |:deleted?) (:type :leaf)
                                                          |j $ {} (:at 1527439598635) (:by |root) (:id |HygLxbvOyX) (:text |task) (:type :leaf)
                                                  |T $ {} (:at 1525541894820) (:by |root) (:id |Byyf2wsaM) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525541896760) (:by |root) (:id |Byyf2wsaMleaf) (:text |:done?) (:type :leaf)
                                                      |j $ {} (:at 1525541898780) (:by |root) (:id |BkxZz2voTf) (:text |operation) (:type :leaf)
                      |T $ {} (:at 1525541685176) (:by |root) (:id |Sy6NoPopG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525541687015) (:by |root) (:id |Sy6NoPopGleaf) (:text |div) (:type :leaf)
                          |j $ {} (:at 1525541687247) (:by |root) (:id |ryNkHivj6z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525541687671) (:by |root) (:id |r1Q1Bsvsaz) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1525541687922) (:by |root) (:id |HJzlBjPjaG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525541689746) (:by |root) (:id |ry-gSovoTM) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1608544609751) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1608544610664) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                      |T $ {} (:at 1532453989760) (:by |root) (:id |B1ZGHsDspz) (:text |ui/column) (:type :leaf)
                          |p $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                              |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |style/title) (:type :leaf)
                                  |r $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text "|\"Todo") (:type :leaf)
                              |v $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |list->) (:type :leaf)
                                  |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428823957) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |todo-tasks) (:type :leaf)
                                      |r $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |map) (:type :leaf)
                                          |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629428838149) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                              |r $ {} (:at 1629428824962) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1629428870051) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                                                  |L $ {} (:at 1629428890433) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629428826352) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629428831915) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629428831915) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                                              |j $ {} (:at 1629428831915) (:by |B1y7Rc-Zz) (:text |sort-id) (:type :leaf)
                                                              |r $ {} (:at 1629428831915) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                          |j $ {} (:at 1629428834637) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                  |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                                      |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |sort-id) (:type :leaf)
                                                      |r $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                                          |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |operation) (:type :leaf)
                                                                  |j $ {} (:at 1629435251545) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |D $ {} (:at 1629435270457) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                                                      |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                                                          |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |operations) (:type :leaf)
                                                                          |r $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                                              |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                                      |j $ {} (:at 1629435254911) (:by |B1y7Rc-Zz) (:text |schema/operation) (:type :leaf)
                                                          |r $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |comp-task) (:type :leaf)
                                                              |j $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                              |r $ {} (:at 1608544275035) (:by |B1y7Rc-Zz) (:text |operation) (:type :leaf)
                          |v $ {} (:at 1525541708062) (:by |root) (:id |HygVLjwspz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1525541709348) (:by |root) (:id |SkWNLsPoaM) (:text |div) (:type :leaf)
                              |L $ {} (:at 1525541709563) (:by |root) (:id |HJ8IsDopz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525541710419) (:by |root) (:id |H1XSLswsTM) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1525542045931) (:by |root) (:id |B1b8ohPiTM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525542046791) (:by |root) (:id |HkeIi2vsaM) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1525542048791) (:by |root) (:id |BkKsnPjaM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525542049260) (:by |root) (:id |Bkfvj2wipf) (:text |{}) (:type :leaf)
                              |P $ {} (:at 1525541712165) (:by |root) (:id |BkCDsvs6z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525541714291) (:by |root) (:id |rygdLsDspGleaf) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1525541714479) (:by |root) (:id |SkEq8iDi6z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541714919) (:by |root) (:id |SyX9Liwi6M) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1525541719054) (:by |root) (:id |BkGyDoPopM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525541719800) (:by |root) (:id |Hk-kviPspM) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1525541722924) (:by |root) (:id |BJZlviwopM) (:text |style/title) (:type :leaf)
                                  |r $ {} (:at 1525541724332) (:by |root) (:id |HJZVvsDipz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525541725665) (:by |root) (:id |HJZVvsDipzleaf) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1525541735573) (:by |root) (:id |SkgIDsvjpG) (:text "|\"Done") (:type :leaf)
                              |T $ {} (:at 1532454012057) (:by |root) (:id |rJ4Y4kH4Q) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1532454012740) (:by |root) (:id |rJlEtNJHVm) (:text |if) (:type :leaf)
                                  |L $ {} (:at 1532454012976) (:by |root) (:id |HyGrYEJHVm) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1532454015077) (:by |root) (:id |rJWrY4JBNQ) (:text |empty?) (:type :leaf)
                                      |j $ {} (:at 1532454016699) (:by |root) (:id |Hy-wtNyHEm) (:text |done-tasks) (:type :leaf)
                                  |P $ {} (:at 1532454017438) (:by |root) (:id |rJWtY4kB4m) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1532454018098) (:by |root) (:id |rJWtY4kB4mleaf) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1532454072622) (:by |root) (:id |HJjF4kHN7) (:text "|\"Nothing.") (:type :leaf)
                                      |r $ {} (:at 1532454025847) (:by |root) (:id |HylMq4krNQ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1532454026207) (:by |root) (:id |rkfc4kBE7) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1532454026402) (:by |root) (:id |HJEf5EyrE7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1532454031458) (:by |root) (:id |H1XfcEkrVX) (:text |:margin-left) (:type :leaf)
                                              |j $ {} (:at 1532454040539) (:by |root) (:id |Sy_5N1rVX) (:text |8) (:type :leaf)
                                          |r $ {} (:at 1532454041745) (:by |root) (:id |ryMjNkBNQ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1532454044516) (:by |root) (:id |ryMjNkBNQleaf) (:text |:margin-bottom) (:type :leaf)
                                              |j $ {} (:at 1532454046441) (:by |root) (:id |r1SjNkr4m) (:text |16) (:type :leaf)
                                          |v $ {} (:at 1532454048881) (:by |root) (:id |rktoEkSN7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1532454051762) (:by |root) (:id |rktoEkSN7leaf) (:text |:font-family) (:type :leaf)
                                              |j $ {} (:at 1532454055149) (:by |root) (:id |rJghiVyH4X) (:text |ui/font-fancy) (:type :leaf)
                                          |x $ {} (:at 1532454059167) (:by |root) (:id |rke7nN1HE7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1532454062511) (:by |root) (:id |rke7nN1HE7leaf) (:text |:color) (:type :leaf)
                                              |j $ {} (:at 1532454062747) (:by |root) (:id |H1gP24JHVm) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1532454063754) (:by |root) (:id |ByDhEkSEm) (:text |hsl) (:type :leaf)
                                                  |j $ {} (:at 1532454064062) (:by |root) (:id |ByMd3EJBV7) (:text |0) (:type :leaf)
                                                  |r $ {} (:at 1532454064332) (:by |root) (:id |H1Nu24yHEX) (:text |0) (:type :leaf)
                                                  |v $ {} (:at 1532454068099) (:by |root) (:id |HJIO2NySEX) (:text |60) (:type :leaf)
                                  |T $ {} (:at 1525368550873) (:by |root) (:id |ryxuBswopG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525368554686) (:by |root) (:id |B1xkgDTuTzleaf) (:text |list->) (:type :leaf)
                                      |j $ {} (:at 1525368558981) (:by |root) (:id |BJgvgPTOpM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525368559299) (:by |root) (:id |S1wewTO6G) (:text |{}) (:type :leaf)
                                      |r $ {} (:at 1525368563653) (:by |root) (:id |rJngwadaG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428876528) (:by |B1y7Rc-Zz) (:id |B1gjgPpdpf) (:text |->) (:type :leaf)
                                          |j $ {} (:at 1525542020185) (:by |root) (:id |SJClvpuTM) (:text |done-tasks) (:type :leaf)
                                          |r $ {} (:at 1525368575516) (:by |root) (:id |HkzPWP6Oaz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525368575980) (:by |root) (:id |Hy-vbP6_Tf) (:text |map) (:type :leaf)
                                              |j $ {} (:at 1525368576301) (:by |root) (:id |rkXubDTdaG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525368576624) (:by |root) (:id |B1Md-waOaz) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1525368577275) (:by |root) (:id |rkMKbDTdpz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629428855518) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                  |r $ {} (:at 1629428844967) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1629428847045) (:by |B1y7Rc-Zz) (:text |let[]) (:type :leaf)
                                                      |L $ {} (:at 1629428848261) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |j $ {} (:at 1629428848261) (:by |B1y7Rc-Zz) (:text |sort-id) (:type :leaf)
                                                          |r $ {} (:at 1629428848261) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                      |P $ {} (:at 1629428852745) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                      |T $ {} (:at 1525368583380) (:by |root) (:id |rJ-JzPauaf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525368583821) (:by |root) (:id |rJ-JzPauafleaf) (:text |[]) (:type :leaf)
                                                          |j $ {} (:at 1525368586690) (:by |root) (:id |ryZzvp_af) (:text |sort-id) (:type :leaf)
                                                          |r $ {} (:at 1525368624470) (:by |root) (:id |HyOVP6_6z) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1525368625858) (:by |root) (:id |SJFEva_6M) (:text |let) (:type :leaf)
                                                              |L $ {} (:at 1525368626176) (:by |root) (:id |SyGq4DTOTz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1525368626332) (:by |root) (:id |ryXqNPpOaz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1525368632706) (:by |root) (:id |ByZ5VDa_az) (:text |operation) (:type :leaf)
                                                                      |j $ {} (:at 1629439771484) (:by |B1y7Rc-Zz) (:type :expr)
                                                                        :data $ {}
                                                                          |D $ {} (:at 1629439772164) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                                                          |T $ {} (:at 1525368633271) (:by |root) (:id |SJbWrwadTf) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1525368636097) (:by |root) (:id |BkgZBD6Opz) (:text |get) (:type :leaf)
                                                                              |j $ {} (:at 1525368637934) (:by |root) (:id |H1NErDTuTG) (:text |operations) (:type :leaf)
                                                                              |r $ {} (:at 1525368640294) (:by |root) (:id |SJeurDa_6G) (:type :expr)
                                                                                :data $ {}
                                                                                  |T $ {} (:at 1525368640842) (:by |root) (:id |BkdrD6_TM) (:text |:id) (:type :leaf)
                                                                                  |j $ {} (:at 1525368641361) (:by |root) (:id |ryZtHDTuTz) (:text |task) (:type :leaf)
                                                                          |j $ {} (:at 1629439772841) (:by |B1y7Rc-Zz) (:text |schema/operation) (:type :leaf)
                                                              |T $ {} (:at 1525541466966) (:by |root) (:id |ByQvqPs6f) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1525541456363) (:by |root) (:id |rkWEuLqvipz) (:text |comp-task) (:type :leaf)
                                                                  |j $ {} (:at 1525541469669) (:by |root) (:id |B1eQP9Di6G) (:text |task) (:type :leaf)
                                                                  |r $ {} (:at 1525541474551) (:by |root) (:id |SylIwcvs6f) (:text |operation) (:type :leaf)
        :ns $ {} (:at 1525195024781) (:by |root) (:id |BkeFM-X8TM) (:type :expr)
          :data $ {}
            |T $ {} (:at 1525195024781) (:by |root) (:id |rJWYf-7LaM) (:text |ns) (:type :leaf)
            |j $ {} (:at 1525195024781) (:by |root) (:id |H1zYfZ7LpG) (:text |app.comp.today) (:type :leaf)
            |r $ {} (:at 1500541010211) (:by nil) (:id |SJZ77Wm86G) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |By6Fe5LlgRr-) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rJxw4e52kz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1-Yg5UelCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |HyfFecIgxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkQKx5Lxg0rZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1VFg98ex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1HtxqIelASb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BJLFecUle0S-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |r1Dtg9Igg0rW) (:text |<>) (:type :leaf)
                        |u $ {} (:at 1525368557555) (:by |root) (:id |BJlHeP6_aG) (:text |list->) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SydYe98xe0BW) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJttec8elRrW) (:text |input) (:type :leaf)
                        |y $ {} (:at 1500541010211) (:by |root) (:id |HJ9tl98xxAHb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1500541010211) (:by |root) (:id |SyoYl9LelCBW) (:text |span) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |rkBqe58el0HZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S189lq8leAHW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1DcxqUexABZ) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |r1dcgc8xg0HZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyF5x98llCSW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJc9g58xg0HZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1j9g98ggCB-) (:text |=<) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |S129ecIxeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |By6cgq8llCr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJ09lqUxeRBb) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkJoxqUeg0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJxigqIex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkWslq8eeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |S1Gsg98geRrb) (:text |comp-inspect) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |rk7ol9IxxABZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |ry4ie5IgeArW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547410331) (:by |root) (:id |B1Bjgc8gxRrW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkIjeq8xxCBZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1vixqLll0SZ) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |ry_sxqUeeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1niecUxlCrZ) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |SJdID4pPz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368017028) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.style) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368019779) (:by |root) (:id |r1niecUxlCrZ) (:text |style) (:type :leaf)
                |yj $ {} (:at 1525455522642) (:by |root) (:id |H1jo9Gqaz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525455522978) (:by |root) (:id |H1jo9Gqazleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629428930561) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1525455530785) (:by |root) (:id |H1XMh9f9az) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1525455531213) (:by |root) (:id |HkmQh5G5TG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1525455531398) (:by |root) (:id |r1MXn5z5pM) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1525455531912) (:by |root) (:id |rJ4ncGqTf) (:text |hsl) (:type :leaf)
        :proc $ {} (:at 1525195024781) (:by |root) (:id |rJQYfWXITz) (:type :expr)
          :data $ {}
      |app.config $ {}
        :defs $ {}
          |cdn? $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |cdn?) (:type :leaf)
              |r $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |cond) (:type :leaf)
                  |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |exists?) (:type :leaf)
                          |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |js/window) (:type :leaf)
                      |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
                  |r $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |exists?) (:type :leaf)
                          |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |js/process) (:type :leaf)
                      |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                          |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text "|\"true") (:type :leaf)
                          |r $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |js/process.env.cdn) (:type :leaf)
                  |v $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:else) (:type :leaf)
                      |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
          |dev? $ {} (:at 1629428478564) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428478564) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1629428478564) (:by |B1y7Rc-Zz) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1629428478564) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428478564) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                  |j $ {} (:at 1629428478564) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                  |r $ {} (:at 1629428478564) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428478564) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                      |j $ {} (:at 1629428478564) (:by |B1y7Rc-Zz) (:text "|\"mode") (:type :leaf)
                      |n $ {} (:at 1658772339237) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |site) (:type :leaf)
              |r $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                      |j $ {} (:at 1608357583987) (:by |B1y7Rc-Zz) (:text |11007) (:type :leaf)
                  |r $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1608360864660) (:by |B1y7Rc-Zz) (:text "|\"Everyday") (:type :leaf)
                  |v $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:icon) (:type :leaf)
                      |j $ {} (:at 1608544206275) (:by |B1y7Rc-Zz) (:text "|\"http://cdn.tiye.me/logo/topix.png") (:type :leaf)
                  |x $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:dev-ui) (:type :leaf)
                      |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text "|\"http://localhost:8100/main.css") (:type :leaf)
                  |y $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:release-ui) (:type :leaf)
                      |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css") (:type :leaf)
                  |yT $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:cdn-url) (:type :leaf)
                      |j $ {} (:at 1608360871946) (:by |B1y7Rc-Zz) (:text "|\"http://cdn.tiye.me/everyday/") (:type :leaf)
                  |yj $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:theme) (:type :leaf)
                      |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text "|\"#eeeeff") (:type :leaf)
                  |yr $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1608360867855) (:by |B1y7Rc-Zz) (:text "|\"everyday") (:type :leaf)
                  |yv $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                      |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text "|\"storage.edn") (:type :leaf)
        :ns $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1608356049661) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |database $ {} (:at 1500541255553) (:by nil) (:id |S1c5lLblCBZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BkjcxUbgAH-) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ryhqlIZxRSb) (:text |database) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |S169e8WeAH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJCqxL-gASW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |SJJolIbeArb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkgjlUZxArb) (:text |:sessions) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |H1WsxIbeCSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |r1GseIWx0S-) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Symjg8bg0BZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HJ4ix8beAB-) (:text |:users) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |r1BieLbe0rZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |BJUjl8bg0SW) (:text |{}) (:type :leaf)
                  |v $ {} (:at 1525281308748) (:by |root) (:id |HkBXM_vTf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525281312960) (:by |root) (:id |HkBXM_vTfleaf) (:text |:date) (:type :leaf)
                      |j $ {} (:at 1525281313869) (:by |root) (:id |H1cQGuwTG) (:text |nil) (:type :leaf)
          |notification $ {} (:at 1500541255553) (:by nil) (:id |B156eIbeRS-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJoalUbxCrZ) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |r1hTeLZe0rW) (:text |notification) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |r1pTlUZxABb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkRpeLbg0r-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |rJkCe8-l0S-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |B1eCgL-xCHW) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ryb0eUWx0BW) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |B1MAgUZxAHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HJQRe8WlRBb) (:text |:kind) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HJN0xL-x0rb) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |SJSRxLWgCS-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |SJIClIWgCH-) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HJwCxIWxRBb) (:text |nil) (:type :leaf)
          |operation $ {} (:at 1525194523137) (:by |root) (:id |BklQ7kmUaf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525194526986) (:by |root) (:id |H1-Qmk7Ipz) (:text |def) (:type :leaf)
              |j $ {} (:at 1525194523137) (:by |root) (:id |SJzXXJQLpf) (:text |operation) (:type :leaf)
              |r $ {} (:at 1525194523137) (:by |root) (:id |rkQmXJm8Tf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525194528736) (:by |root) (:id |BkgOQJ7LpM) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1525194533528) (:by |root) (:id |Bk07JQITf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525194538905) (:by |root) (:id |Bk07JQITfleaf) (:text |:done?) (:type :leaf)
                      |j $ {} (:at 1525194539971) (:by |root) (:id |Hy-QEyQ86z) (:text |false) (:type :leaf)
                  |v $ {} (:at 1525194547088) (:by |root) (:id |HkxsEy7UpG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525194547902) (:by |root) (:id |HkxsEy7UpGleaf) (:text |:time) (:type :leaf)
                      |j $ {} (:at 1525194549809) (:by |root) (:id |BJQn417ITM) (:text |0) (:type :leaf)
          |page $ {} (:at 1525107082906) (:by |root) (:id |BkgQcFTE6z) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525107085441) (:by |root) (:id |BkW79Fp4Tf) (:text |def) (:type :leaf)
              |j $ {} (:at 1525107082906) (:by |root) (:id |SkzXqtpVaf) (:text |page) (:type :leaf)
              |r $ {} (:at 1525107082906) (:by |root) (:id |SJXQcYpVpz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525107086712) (:by |root) (:id |BJZ8cFaNaz) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1525107087020) (:by |root) (:id |H1MD5tTNpz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525107088360) (:by |root) (:id |B1ZD5K6NaM) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1525107088754) (:by |root) (:id |B1X_9KpETz) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1525107089227) (:by |root) (:id |SJztcKaETf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525107091552) (:by |root) (:id |SJztcKaETfleaf) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1525107095971) (:by |root) (:id |HJg2qF64TM) (:text "|\"") (:type :leaf)
                  |v $ {} (:at 1525107092520) (:by |root) (:id |HyT9KT4pG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525107093179) (:by |root) (:id |HyT9KT4pGleaf) (:text |:time) (:type :leaf)
                      |j $ {} (:at 1525107093921) (:by |root) (:id |SkHpcYpE6z) (:text |nil) (:type :leaf)
          |router $ {} (:at 1500541255553) (:by nil) (:id |BJaugUbeABb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJR_lI-xRBZ) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |BJyFl8-l0B-) (:text |router) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |HyeKlU-gCHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJbYl8bxCr-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyzFe8blRHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJQtlI-x0rW) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Bk4teL-lRS-) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |SyrYlL-lRBZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1IYxUWlCBW) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |SJPKlIbeCBZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |Hy_tgU-eAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rJtFx8ZeRr-) (:text |:data) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |SJ9KlUZeCSb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |HJstxIbeAS-) (:text |{}) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |Sk2YxIbg0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |B1aYe8Wg0rW) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1CteIWlCrZ) (:text |nil) (:type :leaf)
          |session $ {} (:at 1500541255553) (:by nil) (:id |HyiseLZlCB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |S1hseLZlCBW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |rJpslIZxAHW) (:text |session) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkCilU-eCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B11neI-gAH-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |Byx2e8-e0rZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rybnxUWe0BZ) (:text |:user-id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ryf2xIbxAHZ) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |B1m2eIbxAHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S143xIblCrZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |S1ShgL-l0rZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |HJU2gU-lRrb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyPheIZxCSZ) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1_hx8ZeRrW) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |rkthlU-gCHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HycngIbeCrb) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyjhgL-xArW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Hy23gUZgRH-) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |H1T2eUZeAH-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |r1C3lUWgCHb) (:text |:name) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJkalLZxArW) (:text |:home) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by nil) (:id |HyxTeL-gRSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |B1baxLZeCr-) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |SyGpe8WgAHZ) (:text |nil) (:type :leaf)
                          |v $ {} (:at 1500541255553) (:by nil) (:id |rk7TlUWl0SW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |Bk4pe8ZgCBZ) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |rJB6l8-g0H-) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |SyL6eIbgRr-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544119336104) (:by |B1y7Rc-Zz) (:id |HyPTeIZx0SZ) (:text |:messages) (:type :leaf)
                      |j $ {} (:at 1544119337025) (:by |B1y7Rc-Zz) (:id |qVwm252MTl) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1544119337352) (:by |B1y7Rc-Zz) (:id |dfH9qJIRRp) (:text |{}) (:type :leaf)
                  |yT $ {} (:at 1525508180435) (:by |root) (:id |S1ghLOyoaM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525508181181) (:by |root) (:id |S1ghLOyoaMleaf) (:text |:date) (:type :leaf)
                      |j $ {} (:at 1525508182603) (:by |root) (:id |ByA8OyjpG) (:text |nil) (:type :leaf)
          |task $ {} (:at 1525194385247) (:by |root) (:id |B1gYqRMUTf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525194388121) (:by |root) (:id |H1ZK9CMUTz) (:text |def) (:type :leaf)
              |j $ {} (:at 1525194385247) (:by |root) (:id |B1GtcAGLTf) (:text |task) (:type :leaf)
              |r $ {} (:at 1525194385247) (:by |root) (:id |rymYcRzI6G) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525194389348) (:by |root) (:id |Byea9RfU6M) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1525194389635) (:by |root) (:id |H1A90M8pG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525194390252) (:by |root) (:id |rJXp5CfITf) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1525194391046) (:by |root) (:id |rkX0c0z8TG) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1525194391943) (:by |root) (:id |HJgsAGIpz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525194393869) (:by |root) (:id |HJgsAGIpzleaf) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1525194394602) (:by |root) (:id |HybMi0GITz) (:text "|\"") (:type :leaf)
                  |v $ {} (:at 1525194395703) (:by |root) (:id |Skx4jRzUaM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525194397361) (:by |root) (:id |Skx4jRzUaMleaf) (:text |:time) (:type :leaf)
                      |j $ {} (:at 1525194400464) (:by |root) (:id |B14HsRM86z) (:text |0) (:type :leaf)
                  |x $ {} (:at 1525194878995) (:by |root) (:id |rJPFemLTf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525194881649) (:by |root) (:id |rJPFemLTfleaf) (:text |:deleted?) (:type :leaf)
                      |j $ {} (:at 1525194883447) (:by |root) (:id |r1g5temL6M) (:text |false) (:type :leaf)
          |user $ {} (:at 1500541255553) (:by nil) (:id |BJKwxIbx0rZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy9weU-x0SW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |r1jDx8bx0SZ) (:text |user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkhPxUWx0r-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkpPl8ZlRrW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HkAPxIZxRB-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |ryJul8beCrb) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HJlOxIWgRBW) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |HkbdlLZlRSW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |r1M_gIWxCSZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rk7_eIbxRB-) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |B14ug8bg0rb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HySOgLWeASW) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ByIue8Ze0B-) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |H1PulIbx0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |SyudlUWeCBW) (:text |:avatar) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rJYdlLbe0BW) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |HJcOxIbgAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1jOeUbxArW) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hynug8bxCSZ) (:text |nil) (:type :leaf)
                  |yT $ {} (:at 1525193960994) (:by |root) (:id |r1gWg6MIpM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525193964127) (:by |root) (:id |r1gWg6MIpMleaf) (:text |:plan) (:type :leaf)
                      |j $ {} (:at 1525193964445) (:by |root) (:id |ryfEl6zUpf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525193964901) (:by |root) (:id |S1Z4xpfI6f) (:text |{}) (:type :leaf)
                  |yj $ {} (:at 1525193991550) (:by |root) (:id |SylfpMIpG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525194081859) (:by |root) (:id |SylfpMIpGleaf) (:text |:days) (:type :leaf)
                      |j $ {} (:at 1525193994164) (:by |root) (:id |BJWMzTzIpM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525193994627) (:by |root) (:id |SyxGzaf8Tf) (:text |{}) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |B1Swe8bxAr-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |Bk8PgIbeCr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |SyDDxIWeRrb) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SJuPg8bxRH-) (:type :expr)
          :data $ {}
      |app.server $ {}
        :defs $ {}
          |*client-caches $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
              |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
          |*initial-db $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |*initial-db) (:type :leaf)
              |r $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                      |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |w-log) (:type :leaf)
                          |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |r $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data") (:type :leaf)
                      |r $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                          |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
                          |r $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |read-file) (:type :leaf)
                                  |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |v $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text "|\"Found no data") (:type :leaf)
                      |r $ {} (:at 1636985626595) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
          |*reader-reel $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |*reader-reel) (:type :leaf)
              |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
          |*reel $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                  |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:base) (:type :leaf)
                          |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                          |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
          |dispatch! $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
              |v $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |generate-id!) (:type :leaf)
                      |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                          |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                              |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |.timestamp) (:type :leaf)
                  |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!") (:type :leaf)
                          |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                              |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |v $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                          |x $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                          |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |:effect/persist) (:type :leaf)
                      |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
                      |v $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                              |j $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                              |r $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                              |v $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                              |x $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                              |y $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |yT $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |yj $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                              |yr $ {} (:at 1636985644620) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
          |get-backup-path! $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
              |r $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |j $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |.extract) (:type :leaf)
                              |j $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                  |r $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
                      |j $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text "|\"backups") (:type :leaf)
                      |v $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |:month) (:type :leaf)
                              |j $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                      |x $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |:day) (:type :leaf)
                              |j $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |r $ {} (:at 1636985655614) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru") (:type :leaf)
          |main! $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |x $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                          |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                              |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text "|\"port") (:type :leaf)
                      |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |parse-float) (:type :leaf)
                                  |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |v $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
                      |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |v $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:") (:type :leaf)
                          |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |y $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                  |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                      |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading") (:type :leaf)
                  |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |identity) (:type :leaf)
                      |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
              |yT $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                  |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |yj $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |600000) (:type :leaf)
                  |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |yr $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |on-control-c) (:type :leaf)
                  |j $ {} (:at 1636985669665) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
          |on-exit! $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
              |r $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |x $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                  |j $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |r $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:text "|\"exit code is...") (:type :leaf)
              |y $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:text |quit!) (:type :leaf)
                  |j $ {} (:at 1636985680198) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
          |persist-db! $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |r $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                          |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                                  |r $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |v $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                          |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                      |r $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                          |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
                  |r $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                      |r $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                  |v $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |j $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                      |r $ {} (:at 1636985690694) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
          |reload! $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text "|\"Code updated..") (:type :leaf)
              |x $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |j $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                  |r $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |raise) (:type :leaf)
                      |j $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text "|\"reloading only happens in dev mode") (:type :leaf)
              |y $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
              |yT $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                      |j $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                      |r $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |v $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
              |yj $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                  |j $ {} (:at 1636985711440) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |render-loop! $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |identical?) (:type :leaf)
                          |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
                          |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |*reader-reel) (:type :leaf)
                      |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |v $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |run-server! $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
              |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |v $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |&{}) (:type :leaf)
                      |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                      |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                      |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |key-match) (:type :leaf)
                          |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:connect) (:type :leaf)
                                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:session/connect) (:type :leaf)
                                      |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text "|\"New client.") (:type :leaf)
                          |v $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:message) (:type :leaf)
                                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                              |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                          |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                              |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                                  |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                                      |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                          |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                          |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text "|\"unknown action:") (:type :leaf)
                                          |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |v $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                          |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                              |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |v $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |x $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:disconnect) (:type :leaf)
                                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text "|\"Client closed!") (:type :leaf)
                                  |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |:session/disconnect) (:type :leaf)
                                      |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |y $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |_) (:type :leaf)
                              |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text "|\"unknown data:") (:type :leaf)
                                  |r $ {} (:at 1636985733138) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
          |storage-file $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
              |r $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                  |r $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |j $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |j $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |v $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |j $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text "|\"/") (:type :leaf)
                      |v $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |j $ {} (:at 1636985753407) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
          |sync-clients! $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
              |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
              |v $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:records) (:type :leaf)
                                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |get-in) (:type :leaf)
                                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                          |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |v $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                          |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |@*client-caches) (:type :leaf)
                                          |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |v $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                              |y $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                      |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                      |v $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:key) (:type :leaf)
                                              |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                          |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1636985768130) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                              |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text "|\"Changes for") (:type :leaf)
                                  |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                                  |x $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |y $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                          |v $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                                  |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                                      |j $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |r $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                                          |j $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                                  |j $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                                              |r $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |j $ {} (:at 1636985783882) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |swap!) (:type :leaf)
                                      |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
                                      |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |v $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |x $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
              |x $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
        :ns $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |app.server) (:type :leaf)
            |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |app.updater) (:type :leaf)
                    |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                |x $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core) (:type :leaf)
                    |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                        |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                        |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                |yj $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |yx $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |app.twig.container) (:type :leaf)
                    |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                |yy $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |recollect.diff) (:type :leaf)
                    |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                |yyT $ {} (:at 1636985812235) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636985812235) (:by |B1y7Rc-Zz) (:text |wss.core) (:type :leaf)
                    |j $ {} (:at 1636985812235) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636985812235) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636985812235) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                        |j $ {} (:at 1636985812235) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                        |r $ {} (:at 1636985812235) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                |yyj $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |recollect.twig) (:type :leaf)
                    |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
                        |j $ {} (:at 1629428107462) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
                |yyr $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |app.$meta) (:type :leaf)
                    |j $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                |yyv $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |calcit.std.fs) (:type :leaf)
                    |j $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                        |j $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                |yyx $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |calcit.std.time) (:type :leaf)
                    |j $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                |yyy $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |calcit.std.date) (:type :leaf)
                    |j $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |Date) (:type :leaf)
                        |j $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                |yyyT $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |calcit.std.path) (:type :leaf)
                    |j $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636985818123) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
      |app.style $ {}
        :defs $ {}
          |link $ {} (:at 1519367966237) (:by |root) (:id |B1eU7P4avf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1519367970413) (:by |root) (:id |SyWUQP46vz) (:text |def) (:type :leaf)
              |j $ {} (:at 1519367966237) (:by |root) (:id |H1MImvEaPG) (:text |link) (:type :leaf)
              |r $ {} (:at 1519367966237) (:by |root) (:id |BkX8QDNpPM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1519367974187) (:by |root) (:id |HJAQwV6Df) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1519367974501) (:by |root) (:id |rkQAmw4pPG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519367980887) (:by |root) (:id |B1M0QDE6Dz) (:text |:text-decoration) (:type :leaf)
                      |j $ {} (:at 1519367984967) (:by |root) (:id |BkQSEDNTwf) (:text |:underline) (:type :leaf)
                  |r $ {} (:at 1519367985371) (:by |root) (:id |S1QYVP4pPG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519367998049) (:by |root) (:id |S1QYVP4pPGleaf) (:text |:cursor) (:type :leaf)
                      |j $ {} (:at 1519367996458) (:by |root) (:id |HkzfrDEaPf) (:text |:pointer) (:type :leaf)
                  |v $ {} (:at 1519368028360) (:by |root) (:id |Bk-Nvv4aPz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519368029579) (:by |root) (:id |Bk-Nvv4aPzleaf) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1519368031142) (:by |root) (:id |SylwPvNTvf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519368031562) (:by |root) (:id |rygIwwV6Df) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1519368032307) (:by |root) (:id |rkx_wPNTPz) (:text |240) (:type :leaf)
                          |r $ {} (:at 1519368032737) (:by |root) (:id |B1NOvw4pwM) (:text |80) (:type :leaf)
                          |v $ {} (:at 1519368033240) (:by |root) (:id |By-FwDEaPG) (:text |80) (:type :leaf)
                  |x $ {} (:at 1519368217607) (:by |root) (:id |SkfXu46vf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519368219848) (:by |root) (:id |SkfXu46vfleaf) (:text |:font-family) (:type :leaf)
                      |j $ {} (:at 1519368227853) (:by |root) (:id |rJWVXuV6wG) (:text |ui/font-fancy) (:type :leaf)
          |title $ {} (:at 1525538746624) (:by |root) (:id |B1lmTkvo6f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525538750833) (:by |root) (:id |HJ-7TyDj6G) (:text |def) (:type :leaf)
              |j $ {} (:at 1525538746624) (:by |root) (:id |BJf7ayDsTz) (:text |title) (:type :leaf)
              |r $ {} (:at 1525538685456) (:by |root) (:id |Bk26ywoTf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525538687333) (:by |root) (:id |HJlEYJwo6G) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1525538689049) (:by |root) (:id |HyKFJDipM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525538711571) (:by |root) (:id |Hk_KkPipf) (:text |:font-family) (:type :leaf)
                      |j $ {} (:at 1525538715962) (:by |root) (:id |HJexskws6f) (:text |ui/font-fancy) (:type :leaf)
                  |r $ {} (:at 1525538717263) (:by |root) (:id |BJlBjJDiTf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525538726788) (:by |root) (:id |BJlBjJDiTfleaf) (:text |:font-weight) (:type :leaf)
                      |j $ {} (:at 1525538738678) (:by |root) (:id |B1X1h1Djaz) (:text |300) (:type :leaf)
                  |v $ {} (:at 1525538728537) (:by |root) (:id |HJWhkvsaG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525538732689) (:by |root) (:id |HJWhkvsaGleaf) (:text |:font-size) (:type :leaf)
                      |j $ {} (:at 1525538733429) (:by |root) (:id |rkbH31Ps6f) (:text |24) (:type :leaf)
        :ns $ {} (:at 1519367963533) (:by |root) (:id |HygVXDNTvf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1519367963533) (:by |root) (:id |rkbV7wETvz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1519367963533) (:by |root) (:id |BkfNmPV6wG) (:text |app.style) (:type :leaf)
            |r $ {} (:at 1519368036923) (:by |root) (:id |S1fTDw4pDf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1519368038192) (:by |root) (:id |BJWpwDNavz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1519368038575) (:by |root) (:id |S1ydDETwM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1519368038764) (:by |root) (:id |BJSADvEpPz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368040947) (:by |root) (:id |HyfJOwN6Pf) (:text |hsl.core) (:type :leaf)
                    |r $ {} (:at 1519368041713) (:by |root) (:id |rkXWdwEavf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1519368041918) (:by |root) (:id |H1GzdP46Pz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1519368042785) (:by |root) (:id |HkWf_w46wf) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1519368043289) (:by |root) (:id |ryxQdvEpDM) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1519368236509) (:by |root) (:id |HJZV4OEavG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1519368236979) (:by |root) (:id |HJZV4OEavGleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368258261) (:by |root) (:id |BJ-HV_VTPz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1519368241627) (:by |root) (:id |Bkm_4d4pvG) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368242073) (:by |root) (:id |SyW5N_46wG) (:text |ui) (:type :leaf)
        :proc $ {} (:at 1519367963533) (:by |root) (:id |SyXN7PVpPM) (:type :expr)
          :data $ {}
      |app.twig.container $ {}
        :defs $ {}
          |twig-container $ {} (:at 1500541255553) (:by nil) (:id |ByY-eUZeAr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428116337) (:by |B1y7Rc-Zz) (:id |BJ5bxLZlRBZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkibe8Wl0S-) (:text |twig-container) (:type :leaf)
              |n $ {} (:at 1500541255553) (:by nil) (:id |Sk-PI_qp1z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Hkzzg8WlRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |ByXzxL-lCH-) (:text |session) (:type :leaf)
                  |r $ {} (:at 1507828952210) (:by |root) (:id |rklw6NmanW) (:text |records) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ryl38_qaJf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |ByHzl8bgCSZ) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyUflIWgRrZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HywGl8-gCHW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |H1_MlIbg0SW) (:text |logged-in?) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |B1FGxLWeRHW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ry5fe8ZlRS-) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:id |BkiGlU-e0B-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJnGeLZlAHb) (:text |:user-id) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |HJTMlI-eAB-) (:text |session) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |rJ0GgLZlCS-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |BkkQeLZlCHW) (:text |router) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |SkemlIWxRBb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |SJWmlLWeRHZ) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJzXlLWxAHZ) (:text |session) (:type :leaf)
                      |r $ {} (:at 1507830626848) (:by |root) (:id |ryowoQp2W) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507830630278) (:by |root) (:id |ryowoQp2Wleaf) (:text |base-data) (:type :leaf)
                          |j $ {} (:at 1507830631302) (:by |root) (:id |r1lyujmp3b) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830631896) (:by |root) (:id |By1djQTnb) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507830632113) (:by |root) (:id |ryGxdimT2-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830641027) (:by |root) (:id |Sy-guiXp2b) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1507830639219) (:by |root) (:id |ByBusQ6hW) (:text |logged-in?) (:type :leaf)
                              |n $ {} (:at 1507830674443) (:by |root) (:id |ByecqsQ6nW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830677551) (:by |root) (:id |ByecqsQ6nWleaf) (:text |:session) (:type :leaf)
                                  |j $ {} (:at 1507830679311) (:by |root) (:id |BJlA5oXpn-) (:text |session) (:type :leaf)
                              |v $ {} (:at 1507830649968) (:by |root) (:id |SyxMtsm62Z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830655148) (:by |root) (:id |SyxMtsm62Zleaf) (:text |:reel-length) (:type :leaf)
                                  |j $ {} (:at 1507830655987) (:by |root) (:id |B1xuKj7p3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830657551) (:by |root) (:id |S1dKjma2Z) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1507830658789) (:by |root) (:id |HkgcFsXT3b) (:text |records) (:type :leaf)
                      |v $ {} (:at 1525368396589) (:by |root) (:id |r1HLIpdpG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525368397250) (:by |root) (:id |r1HLIpdpGleaf) (:text |date) (:type :leaf)
                          |j $ {} (:at 1525368397794) (:by |root) (:id |BkL8UTOTf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525508329762) (:by |root) (:id |SyNHL8adaz) (:text |:date) (:type :leaf)
                              |j $ {} (:at 1525508331942) (:by |root) (:id |BJLILLaOTf) (:text |session) (:type :leaf)
                  |r $ {} (:at 1507830661017) (:by |root) (:id |BkxpKj76h-) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1507830661999) (:by |root) (:id |H1W6KoQ6hZ) (:text |merge) (:type :leaf)
                      |L $ {} (:at 1507830664014) (:by |root) (:id |rJVCFjmp2b) (:text |base-data) (:type :leaf)
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HJQmlU-e0rW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |rJVmgLZlAr-) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |r1S7gUZlArb) (:text |logged-in?) (:type :leaf)
                          |r $ {} (:at 1525280338420) (:by |root) (:id |ryx9UAvw6G) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1525280339046) (:by |root) (:id |rkiU0PvTz) (:text |let) (:type :leaf)
                              |L $ {} (:at 1525280339252) (:by |root) (:id |Bk4iIRDP6G) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525280339420) (:by |root) (:id |SkBiLCPD6f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525280340459) (:by |root) (:id |Hy7iI0vPpM) (:text |user) (:type :leaf)
                                      |j $ {} (:at 1500541255553) (:by nil) (:id |rJmDCwwpG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541255553) (:by |root) (:id |HkXVeL-l0Sb) (:text |get-in) (:type :leaf)
                                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJ4Nx8WeCrb) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1500541255553) (:by nil) (:id |HkrVgLZg0B-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541255553) (:by |root) (:id |ByIEeLbxCHb) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1500541255553) (:by |root) (:id |H1v4xIWxArZ) (:text |:users) (:type :leaf)
                                              |r $ {} (:at 1500541255553) (:by nil) (:id |HJ_VxL-xRr-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJYNgUbgCBb) (:text |:user-id) (:type :leaf)
                                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryqNeLZeCHb) (:text |session) (:type :leaf)
                              |T $ {} (:at 1500541255553) (:by nil) (:id |HJUQxIbx0rZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJPQl8ZgCHb) (:text |{}) (:type :leaf)
                                  |v $ {} (:at 1500541255553) (:by nil) (:id |B107eU-lCHZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |Hy1VxUbeCS-) (:text |:user) (:type :leaf)
                                      |j $ {} (:at 1500541255553) (:by nil) (:id |HJlNxUbx0r-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541255553) (:by |root) (:id |SyZVxIZeCS-) (:text |twig-user) (:type :leaf)
                                          |j $ {} (:at 1525280344904) (:by |root) (:id |BJ-xwRDwpM) (:text |user) (:type :leaf)
                                  |x $ {} (:at 1500541255553) (:by nil) (:id |SJsEe8ZgCBZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |HJ2EeUWe0SZ) (:text |:router) (:type :leaf)
                                      |j $ {} (:at 1524070628251) (:by |root) (:id |ryh1FgBhM) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1524070634499) (:by |root) (:id |rJbWgKgBhz) (:text |assoc) (:type :leaf)
                                          |T $ {} (:at 1500541255553) (:by |root) (:id |BJaEl8ZxCS-) (:text |router) (:type :leaf)
                                          |j $ {} (:at 1524070635855) (:by |root) (:id |rygQeYlH3G) (:text |:data) (:type :leaf)
                                          |r $ {} (:at 1524070636122) (:by |root) (:id |r1VNlFlHnz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428461517) (:by |B1y7Rc-Zz) (:id |BJ74eFlB2z) (:text |case-default) (:type :leaf)
                                              |j $ {} (:at 1524070641804) (:by |root) (:id |HybcgKxB2G) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070642493) (:by |root) (:id |S1g9etlS2M) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1524070643351) (:by |root) (:id |HJilKgSnf) (:text |router) (:type :leaf)
                                              |l $ {} (:at 1629428463247) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629428463247) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |n $ {} (:at 1525108994160) (:by |root) (:id |BJxq-bAE6z) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525108995413) (:by |root) (:id |BJxq-bAE6zleaf) (:text |:home) (:type :leaf)
                                                  |j $ {} (:at 1525193810850) (:by |root) (:id |Syi82M86f) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525193811227) (:by |root) (:id |ry-qInMUTf) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1525368256123) (:by |root) (:id |S1ZOaSTuTz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525368257582) (:by |root) (:id |rJguTra_aM) (:text |:plan) (:type :leaf)
                                                          |j $ {} (:at 1525368257907) (:by |root) (:id |BJWc6SaO6M) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525368259531) (:by |root) (:id |Hyg9pBa_aM) (:text |:plan) (:type :leaf)
                                                              |j $ {} (:at 1525368260115) (:by |root) (:id |BJxhprT_Tz) (:text |user) (:type :leaf)
                                                      |r $ {} (:at 1525368350883) (:by |root) (:id |rylDQUpdTM) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525368391466) (:by |root) (:id |rylDQUpdTMleaf) (:text |:operations) (:type :leaf)
                                                          |j $ {} (:at 1525368391680) (:by |root) (:id |SJllUU6dpG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525368402135) (:by |root) (:id |Hyx886OaM) (:text |when) (:type :leaf)
                                                              |j $ {} (:at 1525368407549) (:by |root) (:id |HJeP8pd6M) (:type :expr)
                                                                :data $ {}
                                                                  |D $ {} (:at 1525368408476) (:by |root) (:id |rJlewI6O6G) (:text |some?) (:type :leaf)
                                                                  |T $ {} (:at 1525368407033) (:by |root) (:id |BylM88pdpz) (:text |date) (:type :leaf)
                                                              |r $ {} (:at 1629438325094) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |D $ {} (:at 1629438325657) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                                                  |T $ {} (:at 1525368409284) (:by |root) (:id |rJl-vL6dpz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1525368448580) (:by |root) (:id |rJl-vL6dpzleaf) (:text |get-in) (:type :leaf)
                                                                      |j $ {} (:at 1525368421585) (:by |root) (:id |H1rvI6OTG) (:text |user) (:type :leaf)
                                                                      |r $ {} (:at 1525368449741) (:by |root) (:id |SyqtI6uaM) (:type :expr)
                                                                        :data $ {}
                                                                          |D $ {} (:at 1525368450987) (:by |root) (:id |ryxctIp_TM) (:text |[]) (:type :leaf)
                                                                          |L $ {} (:at 1525368451840) (:by |root) (:id |SJ-oFUpuTf) (:text |:days) (:type :leaf)
                                                                          |T $ {} (:at 1525368424911) (:by |root) (:id |Syk_LpuaM) (:text |date) (:type :leaf)
                                                                  |j $ {} (:at 1629438327271) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1629438327271) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |p $ {} (:at 1525280285154) (:by |root) (:id |HygBXAwv6G) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525280287378) (:by |root) (:id |HygBXAwv6Gleaf) (:text |:plan) (:type :leaf)
                                                  |j $ {} (:at 1525280287924) (:by |root) (:id |S1g_70wP6z) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525280354594) (:by |root) (:id |SJdmADDpf) (:text |:plan) (:type :leaf)
                                                      |j $ {} (:at 1525280355440) (:by |root) (:id |BklovRPv6M) (:text |user) (:type :leaf)
                                              |q $ {} (:at 1525508654826) (:by |root) (:id |SkDE9yi6M) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525508658425) (:by |root) (:id |SkDE9yi6Mleaf) (:text |:history) (:type :leaf)
                                                  |j $ {} (:at 1525508658797) (:by |root) (:id |rylj4qyipz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1525508660869) (:by |root) (:id |r1oE51o6z) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1525508661181) (:by |root) (:id |HJGT4cJo6M) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525508662955) (:by |root) (:id |H1-p45Jj6M) (:text |:plan) (:type :leaf)
                                                          |j $ {} (:at 1525508673107) (:by |root) (:id |rkKHcJsTz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525508676499) (:by |root) (:id |SyXySqJiTG) (:text |:plan) (:type :leaf)
                                                              |j $ {} (:at 1525508679511) (:by |root) (:id |S1lkL5ysaf) (:text |user) (:type :leaf)
                                                      |r $ {} (:at 1525508686173) (:by |root) (:id |rkeI8qyo6G) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1525508696762) (:by |root) (:id |rkeI8qyo6Gleaf) (:text |:days) (:type :leaf)
                                                          |j $ {} (:at 1525508697360) (:by |root) (:id |S1fZPcJoaf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1525508700683) (:by |root) (:id |rkbZwcJs6z) (:text |:days) (:type :leaf)
                                                              |j $ {} (:at 1525508701305) (:by |root) (:id |r1-Bwc1j6f) (:text |user) (:type :leaf)
                                              |r $ {} (:at 1524070643948) (:by |root) (:id |Bke3gKgB3z) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070646898) (:by |root) (:id |Skb6etxBhG) (:text |:profile) (:type :leaf)
                                                  |j $ {} (:at 1524070654495) (:by |root) (:id |ryLWFernz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070662619) (:by |root) (:id |B1zJ-teBnM) (:text |twig-members) (:type :leaf)
                                                      |j $ {} (:at 1524070665615) (:by |root) (:id |B1MzFxBhz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1524070670477) (:by |root) (:id |Bk-MYxShG) (:text |:sessions) (:type :leaf)
                                                          |j $ {} (:at 1524070672563) (:by |root) (:id |SyPMtxH2G) (:text |db) (:type :leaf)
                                                      |r $ {} (:at 1524070673171) (:by |root) (:id |HyWFMYxB3G) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1524070674094) (:by |root) (:id |HyWFMYxB3Gleaf) (:text |:users) (:type :leaf)
                                                          |j $ {} (:at 1524070675166) (:by |root) (:id |HyVcztlS2f) (:text |db) (:type :leaf)
                                  |y $ {} (:at 1523120222572) (:by |root) (:id |H1DPud8iG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1523120223864) (:by |root) (:id |H1DPud8iGleaf) (:text |:count) (:type :leaf)
                                      |j $ {} (:at 1523120229051) (:by |root) (:id |rygpP_OUif) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1523120230136) (:by |root) (:id |HkaDOd8iM) (:text |count) (:type :leaf)
                                          |j $ {} (:at 1523120230346) (:by |root) (:id |SJrAwd_8oM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1523120232122) (:by |root) (:id |rJVAwd_8if) (:text |:sessions) (:type :leaf)
                                              |j $ {} (:at 1523120232500) (:by |root) (:id |BJreO_d8of) (:text |db) (:type :leaf)
                                  |yT $ {} (:at 1524279105545) (:by |root) (:id |rycrDmO2f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279110147) (:by |root) (:id |rycrDmO2fleaf) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1524279111422) (:by |root) (:id |Hyx1LP7d3z) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636985976861) (:by |B1y7Rc-Zz) (:id |ryJUwQd2f) (:text |rand-hex-color!) (:type :leaf)
                          |v $ {} (:at 1636985967105) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636985969249) (:by |B1y7Rc-Zz) (:id |ryg7ssXahb) (:text |{}) (:type :leaf)
          |twig-members $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |twig-members) (:type :leaf)
              |r $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |sessions) (:type :leaf)
                  |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |users) (:type :leaf)
              |v $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                  |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |sessions) (:type :leaf)
                  |r $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                  |v $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |map) (:type :leaf)
                      |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                          |r $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |let[]) (:type :leaf)
                              |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                  |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                              |r $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                              |v $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                  |r $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |get-in) (:type :leaf)
                                      |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |users) (:type :leaf)
                                      |r $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                                              |j $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                          |r $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                  |x $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428442951) (:by |B1y7Rc-Zz) (:text |pairs-map) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rkSex8bg0S-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |SkIleLblAr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ByDelU-eRSZ) (:text |app.twig.container) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |HkOlxUZlRH-) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |r1txeIZlRSb) (:text |:require) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:id |rkZblUblRHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |SkM-lUbxASW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |SJX-gU-e0SW) (:text |app.twig.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |Hy4We8bgCB-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by nil) (:id |r1SbgUbg0S-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541255553) (:by |root) (:id |BJ8-x8WeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541255553) (:by |root) (:id |BJv-e8beRSW) (:text |twig-user) (:type :leaf)
                |v $ {} (:at 1636985987692) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636985987692) (:by |B1y7Rc-Zz) (:text |calcit.std.rand) (:type :leaf)
                    |j $ {} (:at 1636985987692) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636985987692) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636985987692) (:by |B1y7Rc-Zz) (:text |rand-hex-color!) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1ubxLZx0SZ) (:type :expr)
          :data $ {}
      |app.twig.user $ {}
        :defs $ {}
          |twig-user $ {} (:at 1500541255553) (:by nil) (:id |SJxcQeIWxASZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428124409) (:by |B1y7Rc-Zz) (:id |S1ZqXeIblCH-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByzcXgUblRBW) (:text |twig-user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ByuqXg8ZxArZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJY57eLWxAH-) (:text |user) (:type :leaf)
              |v $ {} (:at 1525280323222) (:by |root) (:id |rJeiSCDvTG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1525280324063) (:by |root) (:id |r1nBCPP6G) (:text |->) (:type :leaf)
                  |L $ {} (:at 1525280325101) (:by |root) (:id |HJprRDPTz) (:text |user) (:type :leaf)
                  |T $ {} (:at 1500541255553) (:by nil) (:id |Hk99QgIbxAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |Bkjc7xUZlCSW) (:text |dissoc) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |rk6cXgLZx0HZ) (:text |:password) (:type :leaf)
                  |j $ {} (:at 1525280327284) (:by |root) (:id |BJzJICww6G) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525280328228) (:by |root) (:id |BJzJICww6Gleaf) (:text |dissoc) (:type :leaf)
                      |j $ {} (:at 1525280330860) (:by |root) (:id |H1Hl8RvwaM) (:text |:plan) (:type :leaf)
                  |r $ {} (:at 1525280331378) (:by |root) (:id |rkz78Cwvpf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525280334661) (:by |root) (:id |rkz78Cwvpfleaf) (:text |dissoc) (:type :leaf)
                      |j $ {} (:at 1525280335591) (:by |root) (:id |HJevIADvpf) (:text |:days) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rJ7t7eU-lRrZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |rkVF7xUWgASZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |rkrFQxUZxRBb) (:text |app.twig.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |By8K7xL-eArW) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |HyvKQx8WlRHW) (:text |:require) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1JqQxLblABb) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1500541255553) (:by nil) (:id |Hk7nmeIbx0SZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SkV3Qe8WlRHb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkrn7xI-gASZ) (:text |updater) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rk82mlUZxRB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Byw3XlIZg0B-) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1_hme8WxAr-) (:text |op) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ByY2QgLbxArZ) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1517930722619) (:by |root) (:id |H1537x8-gABW) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hksn7xL-gASW) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by |root) (:id |SJ22mx8ZeRBb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1517930695338) (:by |root) (:id |rykROrP8f) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1517930698044) (:by |root) (:id |rklROHw8z) (:text |let) (:type :leaf)
                  |T $ {} (:at 1517930701054) (:by |root) (:id |SJlBRdSPUz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930698683) (:by |root) (:id |H1X0OSD8f) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1517930699996) (:by |root) (:id |r14RdHv8M) (:text |f) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |BJ6hmlU-lASb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428307178) (:by |B1y7Rc-Zz) (:id |SJ0h7eUbg0rb) (:text |case-default) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJyaXeU-gRBZ) (:text |op) (:type :leaf)
                              |n $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:text |&) (:type :leaf)
                                      |j $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:text |args) (:type :leaf)
                                  |r $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:text "|\"Unknown op:") (:type :leaf)
                                      |r $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                                  |v $ {} (:at 1629428301068) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:id |HygpXe8Ze0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJZ6XxLWe0HW) (:text |:session/connect) (:type :leaf)
                                  |j $ {} (:at 1517930788022) (:by |root) (:id |SksmtSP8z) (:text |session/connect) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |r1KaQgU-xRrW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1cTQlUWlASW) (:text |:session/disconnect) (:type :leaf)
                                  |j $ {} (:at 1517930783929) (:by |root) (:id |r1_7FBPIM) (:text |session/disconnect) (:type :leaf)
                              |x $ {} (:at 1500541255553) (:by nil) (:id |r1fCQxUWe0rb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bkm0mgLZx0S-) (:text |:user/log-in) (:type :leaf)
                                  |j $ {} (:at 1517930780888) (:by |root) (:id |BkBmtrD8M) (:text |user/log-in) (:type :leaf)
                              |y $ {} (:at 1500541255553) (:by nil) (:id |rksRmlIZlCSW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |ry3Cmx8blABb) (:text |:user/sign-up) (:type :leaf)
                                  |j $ {} (:at 1517930777757) (:by |root) (:id |Bke-QtSDUM) (:text |user/sign-up) (:type :leaf)
                              |yT $ {} (:at 1500541255553) (:by nil) (:id |B1V1Nl8Zx0BZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1rJ4eIblRr-) (:text |:user/log-out) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryvkVgIbg0rW) (:text |user/log-out) (:type :leaf)
                              |yj $ {} (:at 1544119259757) (:by |B1y7Rc-Zz) (:id |RI1fN3rKfd) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1544119259757) (:by |B1y7Rc-Zz) (:id |sycZhL6HYJ) (:text |:session/remove-message) (:type :leaf)
                                  |j $ {} (:at 1544119259757) (:by |B1y7Rc-Zz) (:id |ZtuBGmmmHP) (:text |session/remove-message) (:type :leaf)
                              |yn $ {} (:at 1525508213147) (:by |root) (:id |B1lpuukjpz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525508469260) (:by |root) (:id |B1lpuukjpzleaf) (:text |:session/local-date) (:type :leaf)
                                  |j $ {} (:at 1525508467346) (:by |root) (:id |S1ZtOyjaG) (:text |session/local-date) (:type :leaf)
                              |yr $ {} (:at 1500541255553) (:by nil) (:id |HyUe4gLbxCr-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJDxEeLWgASb) (:text |:router/change) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1tl4lIZx0SW) (:text |router/change) (:type :leaf)
                              |yu $ {} (:at 1525281686362) (:by |root) (:id |HkeA5X_wTM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525281696002) (:by |root) (:id |HkeA5X_wTMleaf) (:text |:plan/create) (:type :leaf)
                                  |j $ {} (:at 1525281739556) (:by |root) (:id |r1-07uPTf) (:text |plan/create) (:type :leaf)
                              |yuT $ {} (:at 1525281697428) (:by |root) (:id |SJZKsm_vaz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525281733975) (:by |root) (:id |SJZKsm_vazleaf) (:text |:plan/update-text) (:type :leaf)
                                  |j $ {} (:at 1525281742632) (:by |root) (:id |HkI07ODaz) (:text |plan/update-text) (:type :leaf)
                              |yuj $ {} (:at 1525281711144) (:by |root) (:id |BylwnXOwaG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525281723174) (:by |root) (:id |BylwnXOwaGleaf) (:text |:plan/remove-one) (:type :leaf)
                                  |j $ {} (:at 1525281745350) (:by |root) (:id |BJYRQdwpM) (:text |plan/remove-one) (:type :leaf)
                              |yul $ {} (:at 1525281711144) (:by |root) (:id |HJwN4Q7yX) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1527096369842) (:by |root) (:id |BylwnXOwaGleaf) (:text |:plan/reuse) (:type :leaf)
                                  |j $ {} (:at 1527096372760) (:by |root) (:id |BJYRQdwpM) (:text |plan/reuse) (:type :leaf)
                              |yun $ {} (:at 1525542797575) (:by |root) (:id |S1L5ydsaf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525542800516) (:by |root) (:id |S1L5ydsafleaf) (:text |:plan/move) (:type :leaf)
                                  |j $ {} (:at 1525542802949) (:by |root) (:id |SkF91_spG) (:text |plan/move) (:type :leaf)
                              |yur $ {} (:at 1525368776031) (:by |root) (:id |r1ggCwp_Tz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525368781003) (:by |root) (:id |r1ggCwp_Tzleaf) (:text |:operation/toggle-task) (:type :leaf)
                                  |j $ {} (:at 1525368786161) (:by |root) (:id |r1VH0w6O6f) (:text |operation/toggle-task) (:type :leaf)
                  |j $ {} (:at 1517930704255) (:by |root) (:id |HyxOAOHDUM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930704937) (:by |root) (:id |HyxOAOHDUMleaf) (:text |f) (:type :leaf)
                      |j $ {} (:at 1517930706635) (:by |root) (:id |SkcC_SvLM) (:text |db) (:type :leaf)
                      |r $ {} (:at 1517930709018) (:by |root) (:id |HJ2RdSPUf) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1517930725426) (:by |root) (:id |r1JytHD8G) (:text |sid) (:type :leaf)
                      |x $ {} (:at 1517930717948) (:by |root) (:id |S1z4JKSDLG) (:text |op-id) (:type :leaf)
                      |y $ {} (:at 1517930719120) (:by |root) (:id |BkGLkYrDUz) (:text |op-time) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |BJR97lLZlRSZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |ry1omxI-g0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryxjmgIZgArZ) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |SJ-o7eUZlRBZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |SkGj7eUZgCrZ) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |S1momeUWgRHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rkEsmx8Wg0rZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |BySiQgUZxCS-) (:text |app.updater.session) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1Ismg8blABW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |BkDsme8-l0H-) (:text |session) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:id |S1uoQlLWe0HW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |r1FoXeI-e0BZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |H19oXxI-xAH-) (:text |app.updater.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |HyojQg8WeCH-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |SJ2o7eIWeAHb) (:text |user) (:type :leaf)
                |v $ {} (:at 1500541255553) (:by nil) (:id |BkTsXxUbg0S-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |Sy0sXlLbxRBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |B1J3XgIZe0SZ) (:text |app.updater.router) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |rkgnmg8-x0BZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |HkZ3XxLZlCSW) (:text |router) (:type :leaf)
                |x $ {} (:at 1525281747122) (:by |root) (:id |S1gjR7dPaz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525281747444) (:by |root) (:id |S1gjR7dPazleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1525281751206) (:by |root) (:id |BkmiA7dDpG) (:text |app.updater.plan) (:type :leaf)
                    |r $ {} (:at 1525281751637) (:by |root) (:id |SyXJJEOv6f) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1525281752777) (:by |root) (:id |BkZekVuwaG) (:text |plan) (:type :leaf)
                |y $ {} (:at 1525281747122) (:by |root) (:id |H1exkOpdTM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525281747444) (:by |root) (:id |S1gjR7dPazleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1525368795057) (:by |root) (:id |BkmiA7dDpG) (:text |app.updater.operation) (:type :leaf)
                    |r $ {} (:at 1525281751637) (:by |root) (:id |SyXJJEOv6f) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1525368796891) (:by |root) (:id |BkZekVuwaG) (:text |operation) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SkfhmgLbxRHb) (:type :expr)
          :data $ {}
      |app.updater.operation $ {}
        :defs $ {}
          |toggle-task $ {} (:at 1525368807938) (:by |root) (:id |SklexOTdaz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525368807938) (:by |root) (:id |B1blgu6_aG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1525368807938) (:by |root) (:id |HkzgxOT_pf) (:text |toggle-task) (:type :leaf)
              |r $ {} (:at 1525368807938) (:by |root) (:id |ry7lg_aOTG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525368810306) (:by |root) (:id |ByzxupOpz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1525368811256) (:by |root) (:id |SJMMxuT_pf) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1525368812901) (:by |root) (:id |BkUQgupOTf) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1525368814480) (:by |root) (:id |H1ZrgupOaf) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1525368815410) (:by |root) (:id |SkPeup_pG) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1525368821216) (:by |root) (:id |BJe6edT_aG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525368821726) (:by |root) (:id |BJe6edT_aGleaf) (:text |let) (:type :leaf)
                  |j $ {} (:at 1525368822074) (:by |root) (:id |ByM0eOp_aG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1525540822542) (:by |root) (:id |ry1JdwspG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525540824375) (:by |root) (:id |ry1JdwspGleaf) (:text |session) (:type :leaf)
                          |j $ {} (:at 1525540826130) (:by |root) (:id |SJfJdvspG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525540827293) (:by |root) (:id |S1ZyODiTM) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1525540827807) (:by |root) (:id |ryB7yuDjpf) (:text |db) (:type :leaf)
                              |r $ {} (:at 1525540828087) (:by |root) (:id |BJfEkuDspG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525540828334) (:by |root) (:id |r1ZEydvi6f) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1525540829727) (:by |root) (:id |rkBN1_PoaG) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1525540830406) (:by |root) (:id |HJzLyOwsaM) (:text |sid) (:type :leaf)
                      |T $ {} (:at 1525368822221) (:by |root) (:id |B170e_pdaG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525368823555) (:by |root) (:id |HkWRldpuaf) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1525540833331) (:by |root) (:id |ByMF1dPi6f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525540834889) (:by |root) (:id |HygFyODjaM) (:text |:user-id) (:type :leaf)
                              |j $ {} (:at 1525540835986) (:by |root) (:id |rJQskuDiaz) (:text |session) (:type :leaf)
                      |j $ {} (:at 1629439704988) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1629439710121) (:by |B1y7Rc-Zz) (:text |path) (:type :leaf)
                          |T $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                              |r $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:text |user-id) (:type :leaf)
                              |v $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:text |:days) (:type :leaf)
                              |x $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:text |:date) (:type :leaf)
                                  |j $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                              |y $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                              |yT $ {} (:at 1629439704033) (:by |B1y7Rc-Zz) (:text |:done?) (:type :leaf)
                  |r $ {} (:at 1525368835331) (:by |root) (:id |rJMo-dTdTz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629439712876) (:by |B1y7Rc-Zz) (:id |rJMo-dTdTzleaf) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1525368839186) (:by |root) (:id |HkJM_T_6G) (:text |db) (:type :leaf)
                      |p $ {} (:at 1629439717799) (:by |B1y7Rc-Zz) (:text |path) (:type :leaf)
                      |v $ {} (:at 1629439718542) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525368870534) (:by |root) (:id |Sy7a7up_pz) (:text |not) (:type :leaf)
                          |j $ {} (:at 1629439720008) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629439721533) (:by |B1y7Rc-Zz) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1629439722171) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1629439722900) (:by |B1y7Rc-Zz) (:text |path) (:type :leaf)
        :ns $ {} (:at 1525368803330) (:by |root) (:id |SkxiyOaOaz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1525368803330) (:by |root) (:id |rk-iJdp_aG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1525368803330) (:by |root) (:id |r1GjJdTdaM) (:text |app.updater.operation) (:type :leaf)
        :proc $ {} (:at 1525368803330) (:by |root) (:id |rkQsyu6dpz) (:type :expr)
          :data $ {}
      |app.updater.plan $ {}
        :defs $ {}
          |create $ {} (:at 1525281768602) (:by |root) (:id |rJebeVuPaG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525281768602) (:by |root) (:id |ByWZlNOPpz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1525281768602) (:by |root) (:id |BkfWgNdw6M) (:text |create) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkMlE_waz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hkog8blRSW) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1525281791148) (:by |root) (:id |HJDbNdvaG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1525281791826) (:by |root) (:id |rylvWNuP6M) (:text |let) (:type :leaf)
                  |L $ {} (:at 1525281792164) (:by |root) (:id |rymO-4uPaz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525281792322) (:by |root) (:id |HkV_ZVODTf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525281795698) (:by |root) (:id |ByMdbEOwpf) (:text |session) (:type :leaf)
                          |j $ {} (:at 1525281796137) (:by |root) (:id |rkG2Z4dwpM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525281799821) (:by |root) (:id |Hk-hbVOP6M) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1525281800250) (:by |root) (:id |B1ZgM4Ow6G) (:text |db) (:type :leaf)
                              |r $ {} (:at 1525281800754) (:by |root) (:id |Hy-zE_PTG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525281801004) (:by |root) (:id |SkElf4uDTG) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1525281802456) (:by |root) (:id |SyfWGNuw6M) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1525281804860) (:by |root) (:id |Hkl7GE_wTG) (:text |sid) (:type :leaf)
                      |j $ {} (:at 1525281807321) (:by |root) (:id |ByPf4_vTG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525281811109) (:by |root) (:id |ByPf4_vTGleaf) (:text |user) (:type :leaf)
                          |j $ {} (:at 1525281814087) (:by |root) (:id |rJgCzEdDTf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525281815925) (:by |root) (:id |rJ0MN_v6G) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1525281816247) (:by |root) (:id |rkWeQ4_wpG) (:text |db) (:type :leaf)
                              |r $ {} (:at 1525281816529) (:by |root) (:id |SkWXV_vTz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525281816789) (:by |root) (:id |SJNgQE_wTz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1525281817651) (:by |root) (:id |HJf-7EODpz) (:text |:users) (:type :leaf)
                                  |r $ {} (:at 1525281818126) (:by |root) (:id |BkMz7EuPaz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525281819325) (:by |root) (:id |BkbzQ4Ovaf) (:text |:user-id) (:type :leaf)
                                      |j $ {} (:at 1525281821068) (:by |root) (:id |HyEm4_P6M) (:text |session) (:type :leaf)
                  |T $ {} (:at 1525281772105) (:by |root) (:id |HkNlVOv6M) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525281829230) (:by |root) (:id |HkNlVOv6Mleaf) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1525281829637) (:by |root) (:id |B1U6XEuw6G) (:text |db) (:type :leaf)
                      |r $ {} (:at 1525281829986) (:by |root) (:id |BJMAQ4uPaM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525281830246) (:by |root) (:id |ByZAXEuwaG) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1525281831163) (:by |root) (:id |HJHAmNOv6G) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1525281832820) (:by |root) (:id |HkbVV_vaM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525281835200) (:by |root) (:id |Bke4NOvpz) (:text |:user-id) (:type :leaf)
                              |j $ {} (:at 1525281837363) (:by |root) (:id |HyNVEOPTM) (:text |session) (:type :leaf)
                          |v $ {} (:at 1525281841238) (:by |root) (:id |r1lUVVuvpz) (:text |:plan) (:type :leaf)
                      |v $ {} (:at 1525281843120) (:by |root) (:id |HyesVVuwaG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525281843437) (:by |root) (:id |H1o44OvpM) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1525281843659) (:by |root) (:id |B1g34N_D6M) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525281844408) (:by |root) (:id |SyhV4_PTM) (:text |plan) (:type :leaf)
                          |r $ {} (:at 1525281845304) (:by |root) (:id |HJxaEVuv6M) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525281845869) (:by |root) (:id |HJxaEVuv6Mleaf) (:text |let) (:type :leaf)
                              |j $ {} (:at 1525281846072) (:by |root) (:id |Hy7AVN_P6f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525281846225) (:by |root) (:id |r1NAN4Ovpz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525281849147) (:by |root) (:id |BkGAVVOw6z) (:text |new-key) (:type :leaf)
                                      |j $ {} (:at 1525281849518) (:by |root) (:id |r1GBNuvpG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525281853184) (:by |root) (:id |SkZZBEdwTG) (:text |key-append) (:type :leaf)
                                          |j $ {} (:at 1525281855259) (:by |root) (:id |BJvHNODpf) (:text |plan) (:type :leaf)
                              |r $ {} (:at 1525281857178) (:by |root) (:id |SJxtrNdvTz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525281858054) (:by |root) (:id |SJxtrNdvTzleaf) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1525281859777) (:by |root) (:id |S1jr4OP6M) (:text |plan) (:type :leaf)
                                  |r $ {} (:at 1525281862225) (:by |root) (:id |SkG2H4uPTf) (:text |new-key) (:type :leaf)
                                  |v $ {} (:at 1525281864921) (:by |root) (:id |ByeWIEOv6G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525281867066) (:by |root) (:id |S1-U4OPaf) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1525281871287) (:by |root) (:id |HymXUNODpz) (:text |schema/task) (:type :leaf)
                                      |r $ {} (:at 1525281872387) (:by |root) (:id |rJxuLVdDTM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525281872730) (:by |root) (:id |HydL4OPpM) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1525281872969) (:by |root) (:id |ryfFIVuPTz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525281873410) (:by |root) (:id |B1WFUNdPpM) (:text |:id) (:type :leaf)
                                              |j $ {} (:at 1525281874181) (:by |root) (:id |By8K8EuwaM) (:text |op-id) (:type :leaf)
                                          |r $ {} (:at 1525281874614) (:by |root) (:id |rksIEdwTz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525281875822) (:by |root) (:id |rksIEdwTzleaf) (:text |:time) (:type :leaf)
                                              |j $ {} (:at 1525281877506) (:by |root) (:id |HJ73LEdDTM) (:text |op-time) (:type :leaf)
                                          |v $ {} (:at 1525281878385) (:by |root) (:id |HkeAU4uwpM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525281880642) (:by |root) (:id |HkeAU4uwpMleaf) (:text |:text) (:type :leaf)
                                              |j $ {} (:at 1525281887217) (:by |root) (:id |SkXP4ODTG) (:text |op-data) (:type :leaf)
          |move $ {} (:at 1525542803718) (:by |root) (:id |rke351_j6z) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525542803718) (:by |root) (:id |r1ZhqyOspz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1525542803718) (:by |root) (:id |HJMh9y_iaz) (:text |move) (:type :leaf)
              |r $ {} (:at 1525368807938) (:by |root) (:id |r1bXoJdo6M) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525368810306) (:by |root) (:id |ByzxupOpz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1525368811256) (:by |root) (:id |SJMMxuT_pf) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1525368812901) (:by |root) (:id |BkUQgupOTf) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1525368814480) (:by |root) (:id |H1ZrgupOaf) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1525368815410) (:by |root) (:id |SkPeup_pG) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1525542826797) (:by |root) (:id |B17nk_jTf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525542832635) (:by |root) (:id |B17nk_jTfleaf) (:text |let) (:type :leaf)
                  |j $ {} (:at 1525542832915) (:by |root) (:id |BJGYnJdsTG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525542833068) (:by |root) (:id |H1XK3yuiaM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525542837559) (:by |root) (:id |HkbK31_jaM) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1525542837929) (:by |root) (:id |BybAh1OsaG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525542839039) (:by |root) (:id |r1eRhkuo6M) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1525542839708) (:by |root) (:id |B1Ek61Oiaz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1525542841346) (:by |root) (:id |B1xZayOoTM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525542841524) (:by |root) (:id |rJWTyuiTf) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1525542842971) (:by |root) (:id |HJlGT1ujaz) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1525542843919) (:by |root) (:id |B1N7TkOsaz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1525542847911) (:by |root) (:id |rkUa1dspM) (:text |:user-id) (:type :leaf)
                      |j $ {} (:at 1525542884974) (:by |root) (:id |rJlp1eujaf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525542887091) (:by |root) (:id |rJlp1eujafleaf) (:text |from-id) (:type :leaf)
                          |j $ {} (:at 1525542887480) (:by |root) (:id |rk7kggOs6f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525543028971) (:by |root) (:id |rJfJlg_ipG) (:text |:from) (:type :leaf)
                              |j $ {} (:at 1525542893595) (:by |root) (:id |Bygrxl_i6z) (:text |op-data) (:type :leaf)
                      |r $ {} (:at 1525542894219) (:by |root) (:id |ByfIll_iTf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525542895547) (:by |root) (:id |ByfIll_iTfleaf) (:text |to-id) (:type :leaf)
                          |j $ {} (:at 1525542895818) (:by |root) (:id |BJW_xl_jTz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525543030381) (:by |root) (:id |Hyxdxl_spG) (:text |:to) (:type :leaf)
                              |j $ {} (:at 1525542899617) (:by |root) (:id |Hkzqggdoaf) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1525542849625) (:by |root) (:id |Bk561_iTM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525542857805) (:by |root) (:id |Bk561_iTMleaf) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1525542858711) (:by |root) (:id |SyeGRJ_j6G) (:text |db) (:type :leaf)
                      |r $ {} (:at 1525542859065) (:by |root) (:id |H1zmCydopM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525542859387) (:by |root) (:id |HJZQAk_iaz) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1525542860844) (:by |root) (:id |ryVCJuoaf) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1525542862529) (:by |root) (:id |H1VH0yOspM) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1525542864966) (:by |root) (:id |H1lD0J_jpM) (:text |:plan) (:type :leaf)
                      |v $ {} (:at 1525542865909) (:by |root) (:id |BklcCyds6f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525542866880) (:by |root) (:id |BklcCyds6fleaf) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1525542867193) (:by |root) (:id |Byfj0JuipG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525542868922) (:by |root) (:id |BJWiAyuiaM) (:text |plan) (:type :leaf)
                          |r $ {} (:at 1525542870503) (:by |root) (:id |BJZAAkOj6M) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525542872228) (:by |root) (:id |BJZAAkOj6Mleaf) (:text |let) (:type :leaf)
                              |j $ {} (:at 1525542873716) (:by |root) (:id |r1eMyxus6z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525542906074) (:by |root) (:id |S1gGZgdj6f) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1525542907839) (:by |root) (:id |HJ-fbldiaz) (:text |new-key) (:type :leaf)
                                      |T $ {} (:at 1525542908713) (:by |root) (:id |BJSbeuiaf) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1525542909574) (:by |root) (:id |rJlB-eOopz) (:text |if) (:type :leaf)
                                          |L $ {} (:at 1525542910494) (:by |root) (:id |SJGLbxOopM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525542912727) (:by |root) (:id |rkgLZx_jaz) (:text |<) (:type :leaf)
                                              |j $ {} (:at 1525542933511) (:by |root) (:id |rkTfldopf) (:text |to-id) (:type :leaf)
                                              |r $ {} (:at 1525542934589) (:by |root) (:id |SkCzl_ipf) (:text |from-id) (:type :leaf)
                                          |T $ {} (:at 1525542873875) (:by |root) (:id |SkZMye_j6M) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525542878822) (:by |root) (:id |B1fkluipf) (:text |key-before) (:type :leaf)
                                              |j $ {} (:at 1525542881764) (:by |root) (:id |rkK1luo6z) (:text |plan) (:type :leaf)
                                              |r $ {} (:at 1525542939192) (:by |root) (:id |r1xZQxdjaG) (:text |to-id) (:type :leaf)
                                          |j $ {} (:at 1525542947529) (:by |root) (:id |SJ3QgOiaM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525542950019) (:by |root) (:id |SJ3QgOiaMleaf) (:text |key-after) (:type :leaf)
                                              |j $ {} (:at 1525542950925) (:by |root) (:id |B1X07lusaf) (:text |plan) (:type :leaf)
                                              |r $ {} (:at 1525542954553) (:by |root) (:id |HklNx_ipz) (:text |to-id) (:type :leaf)
                              |r $ {} (:at 1525542978564) (:by |root) (:id |SJore_oaM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525542984057) (:by |root) (:id |SJore_oaMleaf) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1525542984998) (:by |root) (:id |ryWLg_iaz) (:text |plan) (:type :leaf)
                                  |r $ {} (:at 1525542985316) (:by |root) (:id |SkrZIxdjpf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525542986246) (:by |root) (:id |B1EZLgOoaM) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1525542989426) (:by |root) (:id |HkQLxOopM) (:text |new-key) (:type :leaf)
                                      |r $ {} (:at 1525542990998) (:by |root) (:id |r1xv8g_sTM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1525542991461) (:by |root) (:id |BkvLx_jTM) (:text |get) (:type :leaf)
                                          |j $ {} (:at 1525542992513) (:by |root) (:id |HJOIeOjpG) (:text |plan) (:type :leaf)
                                          |r $ {} (:at 1525542995372) (:by |root) (:id |ryq8l_oaM) (:text |from-id) (:type :leaf)
                                  |v $ {} (:at 1525542998432) (:by |root) (:id |B1Z0IxOsaz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525543000650) (:by |root) (:id |B1Z0IxOsazleaf) (:text |dissoc) (:type :leaf)
                                      |j $ {} (:at 1525543002928) (:by |root) (:id |SkWZDxOjTM) (:text |from-id) (:type :leaf)
          |remove-one $ {} (:at 1525282134515) (:by |root) (:id |HkZAIH_wpM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525282134515) (:by |root) (:id |B1fRIBdPaz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1525282134515) (:by |root) (:id |BJmALr_DaG) (:text |remove-one) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SylDS_w6z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hkog8blRSW) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1525282140611) (:by |root) (:id |r1HPr_DTM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525282141189) (:by |root) (:id |r1HPr_DTMleaf) (:text |let) (:type :leaf)
                  |j $ {} (:at 1525282141411) (:by |root) (:id |BJNSwB_PpM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525282141562) (:by |root) (:id |SJIPS_vpG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282142633) (:by |root) (:id |HJQBDSuvpG) (:text |sort-id) (:type :leaf)
                          |j $ {} (:at 1525282143603) (:by |root) (:id |ByZwwSOP6G) (:text |op-data) (:type :leaf)
                      |r $ {} (:at 1525282160720) (:by |root) (:id |HJY_H_PTG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282177321) (:by |root) (:id |HJY_H_PTGleaf) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1525282177613) (:by |root) (:id |SJqtHuwTG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525282178831) (:by |root) (:id |ryLKFBuwaf) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1525282179386) (:by |root) (:id |S1gjFSuwaM) (:text |db) (:type :leaf)
                              |r $ {} (:at 1525282179721) (:by |root) (:id |S1ehtrOwaf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525282180033) (:by |root) (:id |HyhtHOPpf) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1525282184922) (:by |root) (:id |HJ6YBOwaz) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1525282183884) (:by |root) (:id |r1XAYrOD6z) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1525282189433) (:by |root) (:id |HJWGcruPaM) (:text |:user-id) (:type :leaf)
                  |r $ {} (:at 1525282191076) (:by |root) (:id |S1xwqrODTM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525540599528) (:by |root) (:id |S1xwqrODTMleaf) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1525282196847) (:by |root) (:id |Bkzn5BdwTG) (:text |db) (:type :leaf)
                      |r $ {} (:at 1525282197096) (:by |root) (:id |ByMpcr_w6G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282197296) (:by |root) (:id |HyZpqSdDTG) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1525282199628) (:by |root) (:id |SkBpcSOvaG) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1525282200849) (:by |root) (:id |HJgesr_D6f) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1525282202608) (:by |root) (:id |H1M-sruvaG) (:text |:plan) (:type :leaf)
                          |x $ {} (:at 1525540603067) (:by |root) (:id |rkzWDPo6f) (:text |sort-id) (:type :leaf)
                          |y $ {} (:at 1525540607506) (:by |root) (:id |H1U-Pwopf) (:text |:deleted?) (:type :leaf)
                      |v $ {} (:at 1525540614164) (:by |root) (:id |HJe6-DPipM) (:text |true) (:type :leaf)
          |reuse $ {} (:at 1527096374433) (:by |root) (:id |B1xR447Q1X) (:type :expr)
            :data $ {}
              |T $ {} (:at 1527096374433) (:by |root) (:id |HyWCN47QJm) (:text |defn) (:type :leaf)
              |j $ {} (:at 1527096374433) (:by |root) (:id |HyfREV7QJX) (:text |reuse) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rJIrN77yQ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hkog8blRSW) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1525282140611) (:by |root) (:id |SkgcH4XQkX) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525282141189) (:by |root) (:id |r1HPr_DTMleaf) (:text |let) (:type :leaf)
                  |j $ {} (:at 1525282141411) (:by |root) (:id |BJNSwB_PpM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525282141562) (:by |root) (:id |SJIPS_vpG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282142633) (:by |root) (:id |HJQBDSuvpG) (:text |sort-id) (:type :leaf)
                          |j $ {} (:at 1525282143603) (:by |root) (:id |ByZwwSOP6G) (:text |op-data) (:type :leaf)
                      |r $ {} (:at 1525282160720) (:by |root) (:id |HJY_H_PTG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282177321) (:by |root) (:id |HJY_H_PTGleaf) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1525282177613) (:by |root) (:id |SJqtHuwTG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525282178831) (:by |root) (:id |ryLKFBuwaf) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1525282179386) (:by |root) (:id |S1gjFSuwaM) (:text |db) (:type :leaf)
                              |r $ {} (:at 1525282179721) (:by |root) (:id |S1ehtrOwaf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525282180033) (:by |root) (:id |HyhtHOPpf) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1525282184922) (:by |root) (:id |HJ6YBOwaz) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1525282183884) (:by |root) (:id |r1XAYrOD6z) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1525282189433) (:by |root) (:id |HJWGcruPaM) (:text |:user-id) (:type :leaf)
                  |r $ {} (:at 1525282191076) (:by |root) (:id |S1xwqrODTM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525540599528) (:by |root) (:id |S1xwqrODTMleaf) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1525282196847) (:by |root) (:id |Bkzn5BdwTG) (:text |db) (:type :leaf)
                      |r $ {} (:at 1525282197096) (:by |root) (:id |ByMpcr_w6G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282197296) (:by |root) (:id |HyZpqSdDTG) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1525282199628) (:by |root) (:id |SkBpcSOvaG) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1525282200849) (:by |root) (:id |HJgesr_D6f) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1525282202608) (:by |root) (:id |H1M-sruvaG) (:text |:plan) (:type :leaf)
                          |x $ {} (:at 1525540603067) (:by |root) (:id |rkzWDPo6f) (:text |sort-id) (:type :leaf)
                          |y $ {} (:at 1525540607506) (:by |root) (:id |H1U-Pwopf) (:text |:deleted?) (:type :leaf)
                      |v $ {} (:at 1527096396212) (:by |root) (:id |HJe6-DPipM) (:text |false) (:type :leaf)
          |update-text $ {} (:at 1525281934058) (:by |root) (:id |ryl89N_vpf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525281934058) (:by |root) (:id |SJbU9VdwpG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1525281934058) (:by |root) (:id |Byf8cN_PTf) (:text |update-text) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |S1Mv94uw6z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hkog8blRSW) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1525281936622) (:by |root) (:id |BkF94_wTf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525281937076) (:by |root) (:id |SJ_qV_wTM) (:text |let) (:type :leaf)
                  |j $ {} (:at 1525281940627) (:by |root) (:id |Hyp5V_PTG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525281940758) (:by |root) (:id |SJgp9NdP6G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282021163) (:by |root) (:id |SyXKcEODpG) (:text |sort-id) (:type :leaf)
                          |j $ {} (:at 1525281948495) (:by |root) (:id |BklVjE_vTf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525281950310) (:by |root) (:id |SyEjE_wTf) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1525281951830) (:by |root) (:id |rJfIjV_waf) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1525281952560) (:by |root) (:id |HkFjVdD6z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525281954863) (:by |root) (:id |HkFjVdD6zleaf) (:text |text) (:type :leaf)
                          |j $ {} (:at 1525281955077) (:by |root) (:id |HJfojVOwTz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525281956268) (:by |root) (:id |r1ZsiVdvpG) (:text |:text) (:type :leaf)
                              |j $ {} (:at 1525281957248) (:by |root) (:id |rk72iVOvTM) (:text |op-data) (:type :leaf)
                      |r $ {} (:at 1525281958636) (:by |root) (:id |BkJhVdwpG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525281965222) (:by |root) (:id |BkJhVdwpGleaf) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1525281965473) (:by |root) (:id |rkvHnV_v6M) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525281966455) (:by |root) (:id |HJLrn4OD6M) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1525281967773) (:by |root) (:id |H1whEOPpG) (:text |db) (:type :leaf)
                              |r $ {} (:at 1525281968059) (:by |root) (:id |Sy7OhNOPaz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525281968307) (:by |root) (:id |BJMO3N_DTf) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1525281971468) (:by |root) (:id |S1Id2N_vTf) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1525281972559) (:by |root) (:id |rJhhNuDaM) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1525281975493) (:by |root) (:id |HkeahEuvaz) (:text |:user-id) (:type :leaf)
                  |r $ {} (:at 1525281977656) (:by |root) (:id |B1MTE_PTG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525281983464) (:by |root) (:id |B1MTE_PTGleaf) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1525281986222) (:by |root) (:id |Bk96EuDpz) (:text |db) (:type :leaf)
                      |r $ {} (:at 1525281986958) (:by |root) (:id |ByjpNdw6G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525281987195) (:by |root) (:id |rJM9pEdvpz) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1525281988472) (:by |root) (:id |H1zo64uDpf) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1525281990805) (:by |root) (:id |SkTTEOPTz) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1525281998631) (:by |root) (:id |H1l04dvTf) (:text |:plan) (:type :leaf)
                          |x $ {} (:at 1525282019230) (:by |root) (:id |BJdAVuPpG) (:text |sort-id) (:type :leaf)
                      |v $ {} (:at 1525282024897) (:by |root) (:id |SkWlSuDaf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525282025236) (:by |root) (:id |BJmlxrdDpM) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1525282025480) (:by |root) (:id |B17ZeSdw6G) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525282025985) (:by |root) (:id |BkzWlHdvTf) (:text |task) (:type :leaf)
                          |r $ {} (:at 1525282026770) (:by |root) (:id |B1gmeHuPTM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525282027276) (:by |root) (:id |B1gmeHuPTMleaf) (:text |->) (:type :leaf)
                              |j $ {} (:at 1525282028672) (:by |root) (:id |BkQmeB_wpf) (:text |task) (:type :leaf)
                              |r $ {} (:at 1525282028989) (:by |root) (:id |ry-SxBdvTM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525282030280) (:by |root) (:id |SkergSOPaM) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1525282035633) (:by |root) (:id |BywgrOw6z) (:text |:text) (:type :leaf)
                                  |r $ {} (:at 1525282036415) (:by |root) (:id |Byg2eBuD6z) (:text |text) (:type :leaf)
                              |v $ {} (:at 1525282036828) (:by |root) (:id |H1eTxrdPaf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1525282038289) (:by |root) (:id |H1eTxrdPafleaf) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1525282046694) (:by |root) (:id |S140xB_Paf) (:text |:time) (:type :leaf)
                                  |r $ {} (:at 1525282048553) (:by |root) (:id |HkGD-BODTf) (:text |op-time) (:type :leaf)
        :ns $ {} (:at 1525281758488) (:by |root) (:id |BkgLJ4OvaG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1525281758488) (:by |root) (:id |B1ZLJVuP6M) (:text |ns) (:type :leaf)
            |j $ {} (:at 1525281758488) (:by |root) (:id |ryMIJN_P6f) (:text |app.updater.plan) (:type :leaf)
            |r $ {} (:at 1525281888959) (:by |root) (:id |SkWKwE_vaz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1525281889619) (:by |root) (:id |rkeFvNOw6f) (:text |:require) (:type :leaf)
                |j $ {} (:at 1525281890386) (:by |root) (:id |SJG5wEOvTG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525281890556) (:by |root) (:id |HyWcw4_Ppz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1525281891962) (:by |root) (:id |B1eowVOPTz) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1525281892302) (:by |root) (:id |ryV3PNuwTG) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1525281893075) (:by |root) (:id |rkd2vVOvTM) (:text |schema) (:type :leaf)
                |r $ {} (:at 1525281893899) (:by |root) (:id |rkgRDE_D6G) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525281894329) (:by |root) (:id |rkgRDE_D6Gleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1525281908253) (:by |root) (:id |BkydEOw6M) (:text |bisection-key.util) (:type :leaf)
                    |r $ {} (:at 1525281909354) (:by |root) (:id |rJ6d4OD6z) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1525281910238) (:by |root) (:id |BkCdV_DTf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1525281910566) (:by |root) (:id |BJITOEdDpz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1525281915474) (:by |root) (:id |rkxkt4ODpf) (:text |key-append) (:type :leaf)
                        |r $ {} (:at 1525542959696) (:by |root) (:id |rJgSNluoaz) (:text |key-before) (:type :leaf)
                        |v $ {} (:at 1525542962399) (:by |root) (:id |rkWdNxuopM) (:text |key-after) (:type :leaf)
        :proc $ {} (:at 1525281758488) (:by |root) (:id |HyQ8yN_PpM) (:type :expr)
          :data $ {}
      |app.updater.router $ {}
        :defs $ {}
          |change $ {} (:at 1500541255553) (:by nil) (:id |ryQxUbg0B-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy4gLZgABZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByBlIWg0S-) (:text |change) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkIxIWgAHZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hkog8blRSW) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |BkhgI-xCrb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1al8ZxAB-) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1ClU-xRB-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Hk1geLWx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HklggLbxRB-) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hk-xxUbeRSZ) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |HyzlgIZgCSb) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |rkQgxU-l0Bb) (:text |:router) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B14gg8WxCrb) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |S1eLbxASW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |S1eeUbeCrZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |r1-l8We0BW) (:text |app.updater.router) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |HJzeUWeAr-) (:type :expr)
          :data $ {}
      |app.updater.session $ {}
        :defs $ {}
          |connect $ {} (:at 1500541255553) (:by nil) (:id |HyQ1WeI-xABW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJ4ybe8-g0Sb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |B1SyWx8bxABW) (:text |connect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ry8k-eUbgCr-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJv1Wl8WgRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |Hk_JWeLZg0Hb) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ryYkWl8Wx0SZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HyqJ-l8-lCBZ) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |r1jk-lIWlASb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJhyZe8blCHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rka1blIZeRrW) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |B1Ry-lIZgRrZ) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |r1klbeIWeRSZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJgeZeLbe0HZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HkWeWlLbl0rb) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |SyfgWx8WeAHW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ7xbgI-eAHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkNeWeUWx0HW) (:text |merge) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |BkBxWxIZxArW) (:text |schema/session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |HkUxZeLZxRrb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Skwebg8-gArb) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |BkdxZxL-l0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ryKxZl8-x0SZ) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |r19ebe8WeArW) (:text |sid) (:type :leaf)
          |disconnect $ {} (:at 1500541255553) (:by nil) (:id |HJsgZx8-lCr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Bknx-g8-gASW) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByalZeUblRB-) (:text |disconnect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkCxZl8WxCH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJ4ZWeUWeArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkrbZe8blCrZ) (:text |update) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HyL-Wx8WgABb) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |H1v-Wx8ZlCBb) (:text |:sessions) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ_-ZgUbx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyKZZxUbxRBb) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyqWZlU-lCHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |SyjWWlLWe0HW) (:text |session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |Syh-WgIZxCHZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Bka-Zg8beAS-) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJAZZl8ZgABZ) (:text |session) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by |root) (:id |S1yMbeI-e0BW) (:text |sid) (:type :leaf)
          |local-date $ {} (:at 1525508221622) (:by |root) (:id |SyxUFdkspG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525508221622) (:by |root) (:id |ByZ8tdyo6M) (:text |defn) (:type :leaf)
              |j $ {} (:at 1525508221622) (:by |root) (:id |rkGUKuJipz) (:text |local-date) (:type :leaf)
              |r $ {} (:at 1525508221622) (:by |root) (:id |HkQIFO1iTf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525508223921) (:by |root) (:id |SyWvF_kipz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1525508226108) (:by |root) (:id |HkZdtOki6G) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1525508227216) (:by |root) (:id |rkXcYOkjpG) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1525508228006) (:by |root) (:id |BJMoYOJoaM) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1525508509688) (:by |root) (:id |H1fhKu1sTz) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1525508231327) (:by |root) (:id |SyfJ5OJs6z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1525508237318) (:by |root) (:id |SyfJ5OJs6zleaf) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1525508237847) (:by |root) (:id |B17H9uks6M) (:text |db) (:type :leaf)
                  |r $ {} (:at 1525508238209) (:by |root) (:id |HJMIq_kjaf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1525508238471) (:by |root) (:id |r1bL9OJjTz) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1525508239744) (:by |root) (:id |HJw5uJjaf) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1525508241562) (:by |root) (:id |r1zdqOkspG) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1525508242745) (:by |root) (:id |HJg9q_1saM) (:text |:date) (:type :leaf)
                  |v $ {} (:at 1525508244857) (:by |root) (:id |HyGj9Oko6f) (:text |op-data) (:type :leaf)
          |remove-message $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |890s0MDOQq) (:type :expr)
            :data $ {}
              |T $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |EaJxUTDl6e) (:text |defn) (:type :leaf)
              |j $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |urKZEfy6cj) (:text |remove-message) (:type :leaf)
              |r $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |GvvbQ0orvF) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |3V9d50ERbv) (:text |db) (:type :leaf)
                  |j $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |YpImrVDmze) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |KuCitwPPiK) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |7ZR09WU0-X) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |StZIp-AFBi) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |zOUOD7yGWe) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |cnrnXVJki6) (:text |update-in) (:type :leaf)
                  |j $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |gWM6rdgC85) (:text |db) (:type :leaf)
                  |r $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |0_fizuUImd) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |-bf85xXiaQ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |kWP1fK3d9U) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |_Y5OIDimV3n) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |yixNB1PozZW) (:text |:messages) (:type :leaf)
                  |v $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |IHrRGfIWSEK) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |ehs5CGskpOn) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |vSHn6_3Ur_9) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |zwmlLCrZvH6) (:text |messages) (:type :leaf)
                      |r $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |LoMvcKvdPHL) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |oq5bGJj5vhD) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |c901Ray4XKM) (:text |messages) (:type :leaf)
                          |r $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |EWxQratClvs) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |ZNFF_WcUfCB) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1544119274703) (:by |B1y7Rc-Zz) (:id |GzNhIqUQ5UO) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |Sy_0leLZgCrW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1t0llUZg0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryq0ee8Wl0BZ) (:text |app.updater.session) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |rJs0xxI-g0rZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |B12AggIZl0rW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |SyaAlgIZeCSW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rJ00glL-xAr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |BkyJbxUWxCH-) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1xyWgUWlRHb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |By-J-xU-gABb) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |rJGJZgL-x0rZ) (:type :expr)
          :data $ {}
      |app.updater.user $ {}
        :defs $ {}
          |log-in $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |log-in) (:type :leaf)
              |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                              |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |x $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                      |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                              |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                      |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                          |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                          |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                              |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                      |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                                      |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                      |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                              |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                              |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                                  |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ") (:type :leaf)
                                                          |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                  |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                      |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                          |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                          |v $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                  |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                      |j $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text "|\"No user named: ") (:type :leaf)
                                                      |r $ {} (:at 1629428210133) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
          |log-out $ {} (:at 1500541255553) (:by nil) (:id |Bk8TlgU-xAHZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BJPaegIWgAHZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |HkuTeeIbxAB-) (:text |log-out) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |BkFael8ZgRrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJ9pxxIZeRHW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |BkjpegUbxArZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |Hk3peeU-e0BW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |H16agxUbx0r-) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HyRpllIblRSb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rkyRlxUZxCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1gRge8WeCBb) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1WAxxIWlAS-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |BkzRglUWgCHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HymReg8WgRBZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |H1V0ggLZgCB-) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |rJBRgeUbxCHZ) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |HJL0egLbe0H-) (:text |:user-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJvCgxLbeRB-) (:text |nil) (:type :leaf)
          |sign-up $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |sign-up) (:type :leaf)
              |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                              |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                                  |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                      |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                  |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                      |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                              |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |v $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                          |v $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                              |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                  |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |v $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                      |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ") (:type :leaf)
                                              |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                      |v $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                              |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |v $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |r $ {} (:at 1629434949369) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1629434951239) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                  |L $ {} (:at 1629434954043) (:by |B1y7Rc-Zz) (:text |schema/user) (:type :leaf)
                                  |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                      |r $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |v $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:nickname) (:type :leaf)
                                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |x $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                              |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                      |y $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |:avatar) (:type :leaf)
                                          |j $ {} (:at 1629428228940) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |SyuRgL-x0HZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1KCx8bgAH-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |Sk5AgLWlRrb) (:text |app.updater.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |ryi0xL-lCH-) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |r13AgIWlAS-) (:text |:require) (:type :leaf)
                |r $ {} (:at 1636986011401) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636986011401) (:by |B1y7Rc-Zz) (:text |calcit.std.hash) (:type :leaf)
                    |j $ {} (:at 1636986011401) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636986011401) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636986011401) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                |v $ {} (:at 1525282480734) (:by |root) (:id |SJYn8Ow6f) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525282481062) (:by |root) (:id |SJYn8Ow6fleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1525282483529) (:by |root) (:id |ryMth8dPaM) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1525282493578) (:by |root) (:id |r1l238dP6z) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1525282494399) (:by |root) (:id |S1xU68dDaG) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |B141llLbeCBW) (:type :expr)
          :data $ {}
      |app.util $ {}
        :defs $ {}
          |get-date $ {} (:at 1525281079133) (:by |root) (:id |BJg1HbOwaG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1525281079133) (:by |root) (:id |B1-krZOP6f) (:text |defn) (:type :leaf)
              |j $ {} (:at 1525281079133) (:by |root) (:id |BJMkrW_w6M) (:text |get-date) (:type :leaf)
              |r $ {} (:at 1525281079133) (:by |root) (:id |SymkBWuv6f) (:type :expr)
                :data $ {}
              |x $ {} (:at 1526138820352) (:by |root) (:id |Bkg2TwFN0z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1526138823202) (:by |root) (:id |Bkg2TwFN0zleaf) (:text |.format) (:type :leaf)
                  |j $ {} (:at 1526138823997) (:by |root) (:id |r1xCwKV0z) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1526138824322) (:by |root) (:id |HyZkCvKNAG) (:text |dayjs) (:type :leaf)
                  |r $ {} (:at 1526138832510) (:by |root) (:id |HyN0DtVAM) (:text "|\"YYYY-MM-DD") (:type :leaf)
          |get-shifted-date $ {} (:at 1609390683325) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1609390683325) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1609390683325) (:by |B1y7Rc-Zz) (:text |get-shifted-date) (:type :leaf)
              |r $ {} (:at 1609390683325) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1609390695878) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1609390696670) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                  |L $ {} (:at 1609390698088) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1609390698088) (:by |B1y7Rc-Zz) (:text |dayjs) (:type :leaf)
                  |P $ {} (:at 1609390698796) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1609390703448) (:by |B1y7Rc-Zz) (:text |.subtract) (:type :leaf)
                      |j $ {} (:at 1609390706154) (:by |B1y7Rc-Zz) (:text |3) (:type :leaf)
                      |r $ {} (:at 1609390707429) (:by |B1y7Rc-Zz) (:text "|\"hours") (:type :leaf)
                  |T $ {} (:at 1609390692735) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1609390692735) (:by |B1y7Rc-Zz) (:text |.format) (:type :leaf)
                      |r $ {} (:at 1609390692735) (:by |B1y7Rc-Zz) (:text "|\"YYYY-MM-DD") (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |H1cSgIWeRr-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |HyirlLbg0S-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |Sy3rgUZx0SW) (:text |app.util) (:type :leaf)
            |r $ {} (:at 1525281083684) (:by |root) (:id |SJeVHb_P6M) (:type :expr)
              :data $ {}
                |T $ {} (:at 1525281084492) (:by |root) (:id |B14Bb_DpM) (:text |:require) (:type :leaf)
                |j $ {} (:at 1525281086085) (:by |root) (:id |BkUBWOwpM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1525281087204) (:by |root) (:id |r1rHWdv6M) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1526138806454) (:by |root) (:id |S1OH-dDTf) (:text "|\"dayjs") (:type :leaf)
                    |r $ {} (:at 1629438206006) (:by |B1y7Rc-Zz) (:id |BkGYH-OPTf) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1526138898393) (:by |root) (:id |SkltfdY4Cf) (:text |dayjs) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |rJTSx8ZxRB-) (:type :expr)
          :data $ {}
    :root $ {} (:def |main!) (:ns |main)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
