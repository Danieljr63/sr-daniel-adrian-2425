$TTL    604800
$ORIGIN ejemplo.com.
ejemplo.com.      IN      SOA     PC11    admin (   
                   2           ; Serial
              604800           ; Refresh
               86400           ; Retry
             2419200           ; Expire
              604800 )         ; Negative Cache TTL

; Servidores de nombre
@       IN      NS      PC11.ejemplo.com.
        IN      NS      PC12.ejemplo.com.

; Estaciones de trabajo de la red 172.17.39.0/24
$INCLUDE /var/lib/bind/db.ejemplorrhh.com
$INCLUDE /var/lib/bind/db.ejemploadmin.com

; Servidor DHCP + Router. Debian1-Pruebas
PC10    IN      A       172.17.39.10
	IN	A	172.17.38.10

router	IN	CNAME	PC10

; Servidores DNS
PC11    IN      A       172.17.39.11
dns1	IN	CNAME	PC11
PC12    IN      A       172.17.39.12
dns2	IN	CNAME	PC12

; Servidores de la red  172.17.38.0/24
PC14.ejemplo.com	IN	A	172.17.38.1
www	IN	CNAME	PC14
ftp	IN	CNAME	PC14
