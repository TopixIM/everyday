
Everyday
------

> A list of tasks to be repeated everyday.

Demo http://repo.topix.im/everyday/

### Workflow

https://github.com/Cumulo/calcium-workflow

前端使用 COS Action v1.2.0 的 `public-base-url` 内置校验，不另加上传验证脚本。
PR 资源按 PR 编号、run ID、attempt 隔离，Vite base 与 COS prefix 同源；主分支仍使用
`TopixIM/everyday/`，原站点入口和服务端 `/servers/paste-sharing/` 部署路径保持不变。
上传按事件及分支排队，job / 上传分别限制为 15 / 10 分钟。现有类型及质量门禁保留。
本次只更新前端部署配置，Calcit/procs 仍为 0.27.0，不代表已完成 0.28 类型迁移。

### License

MIT
