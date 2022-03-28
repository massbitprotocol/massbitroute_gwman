$TTL 300
$ORIGIN _DOMAIN_.


@               SOA ns1._DOMAIN_. hostmaster._DOMAIN_.(
                2021101405  ; serial
                300            ; refresh
                30M             ; retry
                1D              ; expire
                300             ; ncache
)

; Name servers

@               NS      ns1._DOMAIN_.
@               NS      ns2._DOMAIN_.
;gw.mbr A 34.126.181.168
;
;z1-0.gw.mbr A 34.126.181.168
;
;_gw._mbr._tcp PTR z1._gw._mbr._tcp
;_gw._mbr._tcp PTR z2._gw._mbr._tcp
;
;z1._gw._mbr._tcp      SRV 0 0 443 z1-0.gw.mbr
;z1._gw._mbr._tcp      SRV 0 0 443 z1-1.gw.mbr
;
;z2._gw._mbr._tcp      SRV 0 0 443 z2-0.gw.mbr
;z2._gw._mbr._tcp      SRV 0 0 443 z2-1.gw.mbr
;z1._gw._mbr._tcp      TXT "path=/"
;z2._gw._mbr._tcp      TXT "path=/"

@ 3600 IN MX 5 gmr-smtp-in.l.google.com.
@ 3600 IN MX 10 alt1.gmr-smtp-in.l.google.com.
@ 3600 IN MX 20 alt2.gmr-smtp-in.l.google.com.
@ 3600 IN MX 30 alt3.gmr-smtp-in.l.google.com.
@ 3600 IN MX 40 alt4.gmr-smtp-in.l.google.com.

; Wildcard services
;@		DYNA	geoip!generic-resource
;*		DYNA	geoip!generic-resource


hostmaster A 34.101.255.144
ns1 A 34.101.255.144
ns2 A 34.101.231.46

admin A 34.101.231.46

;staging
;api A 34.101.83.168
;dapi A 34.101.83.168

;dev branch
;dapi A 34.124.129.158
;api A 34.124.129.158

dapi A 35.247.179.163
api A 35.247.179.163

git A 34.124.219.2

verify A 34.126.179.83
fisherman A 34.126.179.83
portal A 34.124.164.200

dev A 34.126.181.168
staging A 34.126.181.168
production A 34.87.189.191
status.dapi A 34.126.181.168


@ A 34.126.176.201
* A 34.126.176.201

stat.mbr A 34.101.247.5
session.mbr A 34.101.125.28
monitor.mbr A 34.101.210.129

glmr1.bc A 34.124.204.38
dot1.bc A 34.87.170.136
