
; Estaciones de trabajo del dpto Administracion
PC3.recepcion	3600    IN      A       172.17.39.3
PC4.recepcion.ejemplo.com.	3600    IN      A       172.17.39.4

$ORIGIN contabilidad.ejemplo.com.
PC5     3600    IN      A       172.17.39.5
PC6     1h      IN      A       172.17.39.6

$ORIGIN secretaria.ejemplo.com.
PC7     1h	IN      A       172.17.39.7
PC8     1h	IN	A       172.17.39.8
PC9     1h	IN	A       172.17.39.9
