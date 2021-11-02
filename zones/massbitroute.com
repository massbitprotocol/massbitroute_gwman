$TTL 300
$ORIGIN massbitroute.com.


@               SOA ns1.massbitroute.com. hostmaster.massbitroute.com.(
                2021101405  ; serial
                300            ; refresh
                30M             ; retry
                1D              ; expire
                300             ; ncache
)

; Name servers

@               NS      ns1.massbitroute.com.
@               NS      ns2.massbitroute.com.

; Wildcard services
;@		DYNA	geoip!generic-resource
;*		DYNA	geoip!generic-resource


hostmaster A 34.126.176.201
ns1 A 34.126.176.201
ns2 A 34.126.181.168


*.stats		DYNA	geoip!solana-mainnet
stats		DYNA	geoip!solana-mainnet

*.sol-mainnet		DYNA	geoip!solana-mainnet
*.sol-testnet		DYNA	geoip!solana-testnet
*.sol-devnet		DYNA	geoip!solana-devnet

node01-sol-mainnet		DYNA	geoip!solana-mainnet
node01-sol-testnet		DYNA	geoip!solana-testnet
node01-sol-devnet		DYNA	geoip!solana-devnet

admin A 34.126.181.168
api A 34.126.181.168
dapi A 34.126.181.168
_acme-challenge CNAME adac26ab-7228-4366-a887-45ea266ee60f.auth.acme-dns.io.
_acme-challenge.sol-mainnet CNAME 058af72c-4bd0-4141-b2f2-b3b1439913ff.auth.acme-dns.io.
_acme-challenge.stats CNAME b9e7fc8a-c16f-4f2d-bcb8-56498535e1dd.auth.acme-dns.io.
_acme-challenge.sol-testnet CNAME 58098c51-ab8f-469e-a53f-0b45e3ac6da9.auth.acme-dns.io.
_acme-challenge.sol-devnet CNAME 45d3f7ac-26c4-4558-ba30-b1b73ae9479a.auth.acme-dns.io.
_acme-challenge.eth-testnet CNAME 56267d3a-b09b-4c6b-a1a6-3dfcf69664ec.auth.acme-dns.io.
_acme-challenge.eth-mainnet CNAME c37e0e15-ad2b-4e9c-91a6-feae60855441.auth.acme-dns.io.
_acme-challenge.btc-mainnet CNAME 47b22f99-91f6-4c30-bb79-5278486ca7b6.auth.acme-dns.io.
_acme-challenge.btc-testnet CNAME ccdc7794-4ab7-47dc-9dd5-451b7b16639b.auth.acme-dns.io.
_acme-challenge.bsc-testnet CNAME 13b4f378-4e60-44eb-9df7-4bac24c33a6d.auth.acme-dns.io.
_acme-challenge.bsc-mainnet CNAME f396d0f5-9981-4de6-9e38-d70c72dde55e.auth.acme-dns.io.
_acme-challenge.mbr CNAME db454191-8449-4630-850b-a4d7a019eb66.auth.acme-dns.io.
_acme-challenge.gw.mbr CNAME 8d3baf1b-59ba-476d-9c18-c2a687ef97f5.auth.acme-dns.io.
@ A 34.126.176.201
* A 34.126.176.201
@ 3600 IN MX 5 gmr-smtp-in.l.google.com.
@ 3600 IN MX 10 alt1.gmr-smtp-in.l.google.com.
@ 3600 IN MX 20 alt2.gmr-smtp-in.l.google.com.
@ 3600 IN MX 30 alt3.gmr-smtp-in.l.google.com.
@ 3600 IN MX 40 alt4.gmr-smtp-in.l.google.com.

gw.mbr A 34.126.181.168

z1-0.gw.mbr A 34.126.181.168

_gw._mbr._tcp PTR z1._gw._mbr._tcp
_gw._mbr._tcp PTR z2._gw._mbr._tcp

z1._gw._mbr._tcp      SRV 0 0 443 z1-0.gw.mbr
z1._gw._mbr._tcp      SRV 0 0 443 z1-1.gw.mbr

z2._gw._mbr._tcp      SRV 0 0 443 z2-0.gw.mbr
z2._gw._mbr._tcp      SRV 0 0 443 z2-1.gw.mbr
z1._gw._mbr._tcp      TXT "path=/"
z2._gw._mbr._tcp      TXT "path=/"
