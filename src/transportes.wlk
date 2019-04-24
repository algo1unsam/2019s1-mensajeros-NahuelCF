import mensajeros.*
import destinos.*


object bicicleta{
	method peso() = 8
}

object camion{
	var property acoplados = 0
	
	method peso() = 500 * self.acoplados()
	
}
