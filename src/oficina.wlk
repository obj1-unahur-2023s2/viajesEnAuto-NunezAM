import clientes.*
import remiseras.*

object oficina {
	var primeraRemisera
	var segundaRemisera
	
	method primeraRemisera() = primeraRemisera
	method segundaRemisera() = segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimerRemiseraPor(remisera) {
		primeraRemisera = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	
	method intercambiarRemiseras() {
		const intermedia = primeraRemisera
		primeraRemisera = segundaRemisera
		segundaRemisera = intermedia
	}
	
	method remiseraElegidaParaViaje(cliente, kms) {
		return if(primeraRemisera.precioViaje(cliente, kms) - segundaRemisera.precioViaje(cliente, kms) > 30) {
			segundaRemisera
		}
		else {
			primeraRemisera
		}
	}
}
