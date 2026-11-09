
Everyday
------

> A list of tasks to be repeated everyday.

Demo http://repo.topix.im/everyday/

### Workflow

https://github.com/Cumulo/calcium-workflow

前端使用 COS Action v1.3.0 的 `public-base-url` 内置校验，不另加上传验证脚本。
PR 资源按 PR 编号、run ID、attempt 隔离，Vite base 与 COS prefix 同源；主分支仍使用
`TopixIM/everyday/`，原站点入口和服务端 `/servers/paste-sharing/` 部署路径保持不变。
上传按事件及分支排队，job / 上传分别限制为 15 / 10 分钟。
前后端使用正式 Calcit 和 `@calcit/procs` 0.38.0。同步更新前端和后端前，请确认
`/servers/paste-sharing/` 的进程使用 `calcit --entry server`，并已安装对应的 native 模块。
部署包提供 `calcit.cirru` 和 `deps.cirru`，旧启动器仍读取 `compact.cirru` 时应先迁移启动命令。

客户端同步沿用原 Cirru EDN 补丁格式，坏补丁保留上次成功的页面状态。CI 校验两套入口、
完整 strict 和原有附带测试。

### License

MIT
