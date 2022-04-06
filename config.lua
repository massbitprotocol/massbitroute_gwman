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
    supervisors = {
        ["monitor_client"] = [[
[program:monitor_client]
command=/bin/bash _SITE_ROOT_/../mkagent/agents/push.sh _SITE_ROOT_
autorestart=true
redirect_stderr=true
stdout_logfile=_SITE_ROOT_/logs/monitor_client.log
    ]]
    },
    supervisor_tmp = [[
[program:gwman_monitor]
command=/bin/bash _SITE_ROOT_/scripts/run loop _monitor _SITE_ROOT_ v1
autorestart=true
redirect_stderr=true
stdout_logfile=_SITE_ROOT_/logs/gwman_pull.log
]],
    supervisor = [[
[program:gwman_gdnsd]
command=/bin/bash _SITE_ROOT_/scripts/run loop _service_gdnsd _SITE_ROOT_ v1
autorestart=true
redirect_stderr=true
stdout_logfile=_SITE_ROOT_/logs/gwman_gdnsd.log
    ]]
}
return _config
