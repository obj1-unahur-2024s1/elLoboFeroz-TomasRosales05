// El Lobo Feroz //
object feroz {
	var peso = 10
	
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
  
  