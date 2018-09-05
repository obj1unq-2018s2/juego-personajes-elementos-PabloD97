import armas.*
import elementos.*

object luisa {
	var personajeActivo = noHayPersonaje
}


object floki {
	var arma = null
	
	method asignarArma(objeto){ arma = objeto }
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado 
	
	method esFeliz(){ return  valorRecolectado >= 50 || ultimoElementoEncontrado.altura() >= 10 }
	
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	   	ultimoElementoEncontrado = elemento
	}
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}