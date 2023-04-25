object futbol {
	var property energiaQueResta = 10
}

object voley {
	method energiaQueResta(minutos) = 2 * minutos
}

object aerobic {
	method energiaQueResta(minutos) = (ciudad.temperatura() / 2) * (-1)
}

object ciudad {var property temperatura = 20}
