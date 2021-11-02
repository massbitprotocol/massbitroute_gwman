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

[program:gwman_pull]
command=/bin/bash _SITE_ROOT_/scripts/run loop _pull _SITE_ROOT_ v1
autorestart=true
redirect_stderr=true
stdout_logfile=_SITE_ROOT_/logs/gwman_pull.log


[program:gwman_gdnsd]
command=/bin/bash _SITE_ROOT_/scripts/run loop _service_gdnsd _SITE_ROOT_ v1
autorestart=true
redirect_stderr=true
stdout_logfile=_SITE_ROOT_/logs/gwman_gdnsd.log


    ]]
}
return _config
