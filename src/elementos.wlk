import jugadoresPersonajes.*
import armas.*
import jugadoresPersonajes.*

object castillo {
	var defensa = 120
	
	method altura() = 20
	
	method recibirAtaque(potencia){
		defensa -= potencia
	}
	
	method valorQueOtorga() = defensa / 5

	method recibirTrabajo(){ 
		/*if ( defensa + 20 <= 200){
			 defensa+= 20
		}*/
		defensa= (defensa + 20).min(200)	
		
	}
}

object aurora{
	var viva = true
	
	method altura()= 1
	
	method recibirAtaque(potencia){ 
		if( potencia > 10){
			viva = false
		}
	}
	
	method valorQueOtorga() = 15
	
	method recibirTrabajo(){}
	
}

object tipa{
	var property altura = 8
	
	method recibirAtaque(potencia){}
	
	method valorQueOtorga()=  altura * 2
	
	method recibirTrabajo() { altura += 1 }
}