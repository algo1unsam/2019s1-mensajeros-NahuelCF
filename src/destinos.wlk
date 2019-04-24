import mensajeros.*



object puente{
	method dejaPasar(mensajero) = paquete.estaPago() &&  mensajero.peso()<= 1000
}

object matrix{
	method dejaPasar(mensajero) = paquete.estaPago() && mensajero.puedeLlamar()
}
