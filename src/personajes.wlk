import frutas.*

object martin {
	var energia = 0
	var actividadesDia = 0
	var tieneHambre = false
	var despensa = vasoDeAgua
	
	method estaFeliz() = (energia > 80 || actividadesDia >= 2) && not tieneHambre
	method hacerLasCompras(unaFruta) {despensa=unaFruta}
	method alimentarse() {
		energia += despensa.energiaQueProvee()
		despensa = vasoDeAgua
		tieneHambre = false
	}
	method hacerDeporte(unDeporte,cantMinutos) {
		tieneHambre = true
		energia -= unDeporte.energiaQueResta(cantMinutos)
		
	}
	
	
}
