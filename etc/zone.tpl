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
