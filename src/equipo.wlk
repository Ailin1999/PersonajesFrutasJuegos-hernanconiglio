object equipo {
	var jugadorIzquierdo
	var jugadorDerecho
	var directorTecnico
	
	method asignarJugadorIzquierdo(unaPersona) {jugadorIzquierdo=unaPersona}
	method asignarJugadorDerecho(unaPersona) {jugadorDerecho=unaPersona}
	method asignarDirectorTecnico(unaPersona) {directorTecnico=unaPersona}
	method hacerRotacionJugadores() {
		self.asignarJugadorIzquierdo(jugadorDerecho)
		self.asignarJugadorDerecho(jugadorIzquierdo)
	}
	method incorporarNuevoTecnico(unaPersona) {
		if(unaPersona.energia() > directorTecnico) directorTecnico = unaPersona
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
