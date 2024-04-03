// El Lobo Feroz //
object feroz {
	var peso = 10
	
	method peso(){
		return peso
	}
	
	method esSaludable(){
		return peso.between(20,150)
	}
	method nuevoValorSalud(unNumero){
		peso = unNumero
	}
	method crisis(){
		peso = 10
	} 


// Caperucita Roja //

	method comer(unaComida){
	 	peso = peso + (unaComida.pesoAlimento() * 0.10)
	 	
	}
	
	method correr(){
		peso = peso - 1
	}
	
	method soplar(unaCasa){
	
		peso = peso - unaCasa.resistencia()
		peso = peso.max(0)
		}
	
	method comerChanchitosSiSePuede(){
		if ( casaDeLadrillo.sePuedeSoplarLaCasaDeLadrillo() ) {
			  self.comer(chanchito) 
			  self.comer(chanchito) 
			  self.comer(chanchito) 
		}
	}
	
	// historia del lobo//
	
	method versionLoboCaperucita(){
		self.correr()
		self.correr()
		self.comer(abuela)
		caperucita.quitarManzanasDeLaCanasta(1)
		self.comer(caperucita)
		// cazador.provocarCrisisEnFeroz() 
		self.comer(cazador)
		
	}
	
	// historia chanchitos //
	
	method versionLoboChanchitos(){
		self.soplar(casaDePaja)
		self.soplar(casaDeMadera)
		casaDeLadrillo.soplarCasaDeLadrillo() 
		self.comerChanchitosSiSePuede()
		
	}
}

object caperucita {
	
	var canasta = 6
	const pesoCaperucita = 60
	
	method quitarManzanasDeLaCanasta(cantidad){
		canasta = canasta - cantidad
	}
	
	method agregarManzanasDeLaCanasta(cantidad){
		canasta = canasta + cantidad
	}
	
	method pesoCanasta(){
		return canasta * manzana.pesoAlimento()
	}
	
	method pesoAlimento(){
		return pesoCaperucita + self.pesoCanasta()
	}
}

object manzana {
	 method pesoAlimento(){
	 	return 0.2 
	 }
}

object abuela {
	method pesoAlimento(){
		return 50
	}
}

object cazador {
	method pesoAlimento(){
		return 100
	}
	method provocarCrisisEnFeroz(){
		feroz.crisis()
	}
}

/*Los chanchitos*/

object casaDePaja {
	method resistencia(){
		return 0 + chanchito.pesoAlimento()
	}
}

object casaDeMadera {
	method resistencia(){
		return 5 + (2 * chanchito.pesoAlimento())
	}
}

object casaDeLadrillo {
	
	var ladrillos = 1
	var resistencia = 2 * ladrillos
	method ponerLadrillos(unNumero){
		ladrillos = ladrillos + unNumero
	}
	method sacarLadrillos(unNumero){
		ladrillos = ladrillos - unNumero
	}
	
	method sePuedeSoplarLaCasaDeLadrillo(){
		return feroz.peso() > resistencia 
	}
	method soplarCasaDeLadrillo() {
		if( self.sePuedeSoplarLaCasaDeLadrillo()){
			self.soplarCasa()
		}
	}
	method soplarCasa(){
		return resistencia + (3 * chanchito.pesoAlimento())
	}
}
	
object chanchito {
	method pesoAlimento(){
		return 50
	}
}

                       






 
  