#!/bin/bash
ip=$1
./scripts/mmdb/mmdb /massbit/massbitroute/app/src/sites/services/gwman/geoip/GeoIP2-City.mmdb $1 >/tmp/a
continent=$(cat /tmp/a | jq .continent.code)
country=$(cat /tmp/a | jq .country.iso_code)
echo $continent $country
/massbit/massbitroute/app/gbc/bin/.asdf/installs/gdnsd/v3.8.0/bin/gdnsd_geoip_test -c /massbit/massbitroute/app/src/sites/services/gwman mbr-map-eth-mainnet $1
