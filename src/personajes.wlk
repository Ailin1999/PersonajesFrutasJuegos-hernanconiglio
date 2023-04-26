import frutas.*
import colores.*
import juegos.*

object martin {
	var energia = 100
	var actividadesDia = 0
	var tieneHambre = false
	var despensa = vasoDeAgua
	
	method despensa() = despensa
	method energia() = energia
	method estaFeliz() = (energia > 80 || actividadesDia >= 2) && not tieneHambre
	method hacerLasCompras(unaFruta) {despensa=unaFruta}
	method alimentarse() {
		energia += despensa.energiaQueProvee()
		despensa = vasoDeAgua
		tieneHambre = false
	}
	method hacerDeporte(unDeporte,cantMinutos) {
		actividadesDia ++
		tieneHambre = true
		energia = 0.max(energia - unDeporte.energiaQueResta(cantMinutos))
	}
	method irADormir() {
		energia += energia * 0.5
		actividadesDia = 0
		despensa.nuevoDia()
	}	
}

object maria {
	var property colorDelAmuleto = rojo
	var endorfina = 100
	
	method energia() = 2 * endorfina + colorDelAmuleto.energia()
	method hacerDeporte(unDeporte,cantMinutos) {
		endorfina = 0.max(endorfina - unDeporte.energiaQueResta(cantMinutos))
	}
	method estaFeliz() = endorfina > colorDelAmuleto.energia()	
}

object pepe {
	method estaFeliz() = true
	method energia() = 77
	method hacerDeporte(unDeporte,cantMinutos) {}
}