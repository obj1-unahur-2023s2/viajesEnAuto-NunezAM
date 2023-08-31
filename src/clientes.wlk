object ludmila {
	
	method precioPorKm() = 18
	
	
}

object anaMaria {
	var economicamenteEstable = true
	
	method estaEconomicamenteEstable() = economicamenteEstable
	
	method estaEconomicamenteEstable(nuevoValor) {
		economicamenteEstable = nuevoValor
	}
	
	method precioPorKm() {
		var precioPorKm = 25
		
		if(economicamenteEstable) {
			precioPorKm += 5
		}
		
		
		return precioPorKm
	}
}

object teresa {
	var precioPorkm = 22
	
	method precioPorKm() = precioPorkm
	
	method precioPorKm(nuevoValor) {
		precioPorkm = nuevoValor
	}
}

object melina {
	var empleadora
	
	method precioPorKm() = empleadora.precioPorKm() - 3
	
	method empleadora() = empleadora
	method empleadora(cliente) {
		empleadora = cliente
	}
	
	
}


















