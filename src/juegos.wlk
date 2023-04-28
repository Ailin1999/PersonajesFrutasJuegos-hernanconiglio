
object ciudad {var property temperatura = 20}

object futbol {
	var property energiaQueAporta = 10
	method energiaQueResta(minutos) = energiaQueAporta
}

object voley {
	method energiaQueResta(minutos) = 2 * minutos
}

object aerobic {
	method energiaQueResta(minutos) = -(ciudad.temperatura() / 2)
}

object basquet {
	var property jugadoresFaltan = 0
	// resta el doble de jugadores de menos que tenga el equipo que,
	// normalmente, debe tener 5 juegadores (incluyendo el que juega) 
	// más la cantidad de minutos jugados
	method energiaQueResta(minutos) =  2 * 0.max(jugadoresFaltan).min(4) + minutos
}

