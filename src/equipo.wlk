import personajes.*
import juegos.*
import frutas.*

object equipo {
	var property jugadorIzquierdo
	var property jugadorDerecho
	var property directorTecnico
	
	method hacerRotacionJugadores() {
		self.cambiarJugadores(jugadorDerecho,jugadorIzquierdo)
	}
	method cambiarJugadores(nuevoIzquierdo,nuevoDerecho) {
		self.jugadorIzquierdo(nuevoIzquierdo)
		self.jugadorDerecho(nuevoDerecho)
	}
	method incorporarNuevoTecnico(unaPersona) {
		if(unaPersona.energia() > directorTecnico.energia()) directorTecnico = unaPersona
	}
	method promedioEnergiaEquipo() = 
		(
		 jugadorIzquierdo.energia() 
		 + jugadorIzquierdo.energia() 
		 + directorTecnico.energia() 
		) / 3
	
	method equipoFeliz() = 
		 jugadorIzquierdo.estaFeliz()
		 && jugadorDerecho.estaFeliz()
		 && directorTecnico.estaFeliz()
		 
}
