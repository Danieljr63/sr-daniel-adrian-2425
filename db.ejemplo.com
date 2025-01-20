$TTL    604800
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
PC1     IN      A       172.17.39.1
PC2     IN      A       172.17.39.2
PC3     IN      A       172.17.39.3
PC4     IN      A       172.17.39.4
PC5     IN      A       172.17.39.5
PC6     IN      A       172.17.39.6
PC7     IN      A       172.17.39.7
PC8     IN      A       172.17.39.8
PC9     IN      A       172.17.39.9

; Servidor DHCP + Router. Debian1-Pruebas
PC10    IN      A       172.17.39.10
	IN	A	172.17.38.10

; Servidores DNS
PC11    IN      A       192.168.39.11
PC12    IN      A       192.168.39.12

; Servidores de la red  172.17.38.0/24
PC14	IN	A	172.17.38.1
PC15	IN	A	172.17.38.1	
