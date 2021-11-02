local _config = {
    server = {
        nginx = {
            port = "80",
            port_ssl = "443",
            server_name = "massbitroute"
        }
    },
    templates = {},
    apps = {},
    supervisor = [[
]],
    supervisor1 = [[

[program:gateway_pull]
command=/bin/bash _SITE_ROOT_/scripts/run loop _pull _SITE_ROOT_ v1
autorestart=true
    ]]
}
return _config
