# massbitroute gateway manager

## Install with docker

```
 services:
  gwman:
    privileged: true
    restart: unless-stopped
    image: massbit/massbitroute_gwman:_BRANCH_
    hostname: "gwman"
    domainname: "massbitroute.net"        
    build:
      context: /massbit/massbitroute/app/src
      dockerfile: install/mbr/build/gwman/Dockerfile
      args:
        GIT_PUBLIC_URL: https://github.com        
        #MYAPP_IMAGE: massbit/massbitroute_base:_BRANCH_                
        BRANCH: _BRANCH_
    container_name: mbr_gwman  
    environment:
      - GIT_PUBLIC_URL="https://github.com"                          # default public source control
      - MBR_ENV=_BRANCH_                                             # Git Tag version deployment of Api repo
      - MKAGENT_BRANCH=_BRANCH_                                      # Git Tag version deployment of Monitor client
      - GIT_PRIVATE_BRANCH=_BRANCH_                                  # Private git branch default of runtime conf
      - GIT_PRIVATE_READ_URL=http://massbit:xxx@git.massbitroute.net # Private git url address with authorized account

    extra_hosts:
      - "git.massbitroute.net:172.20.0.2"
      - "api.massbitroute.net:172.20.0.3"
	  ```
