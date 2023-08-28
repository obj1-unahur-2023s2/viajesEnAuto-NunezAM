import clientes.*

object lucia {
	var remiseraAReemplazar
	
	method reemplazarA(remisera) {
		remiseraAReemplazar = remisera
	}
	
	method precioViaje(cliente, kms) = remiseraAReemplazar.precioViaje(cliente, kms)
	
	
}

object roxana {
	
	method precioViaje(cliente, kms) = cliente.precioPorKm() * kms 
}

object gabriela {
	
	method precioViaje(cliente, kms) = cliente.precioPorKm() * 1.2 * kms
}

object mariela {
	
	method precioViaje(cliente, kms) = 50.max(roxana.precioViaje(cliente, kms))
	
}

object juana {
	
	method precioViaje(cliente, kms) {
		return if(kms <= 8) {
			100
		}
		else {
		 	200
		}
	}
}

