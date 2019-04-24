import destinos.*
import transportes.*

object paquete{
	var property estaPago = false
	
	var property destino = matrix
}

object mensajeria {
	var property empleados = #{}
	method contratar(alguien) {
 		empleados.add(alguien)
 	}
 	
 	method despedir(alguien) {
 		empleados.remove(alguien)
 	}
 	
 	method despedirTodos(){
 		empleados.forEach{empleado => self.despedir(empleado)}
 	}
 	
 	method esGrande() = (empleados.size()) > 2
	
	method primerEmpleado(){
		return paquete.destino().dejaPasar(empleados.asList().first())
	}
	
	method pesoUltimo(){
		return empleados.asList().last().peso()
	}
}

object neo{
	var property credito = true
	
	method peso() = 0
	
	method puedeLlamar() =  self.credito()
}

object chuck{
	method peso() = 900
	
	method puedeLlamar() = true
}

object roberto{
	var transporte = camion
	
	method puedeLlamar() = false
	
	method transporte(vehiculo){
		transporte = vehiculo
	}
	
	//method peso() = 90
	
	method peso() = 90 + transporte.peso()
	
}
