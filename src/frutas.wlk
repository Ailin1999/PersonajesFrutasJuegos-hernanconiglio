import colores.*

object manzana {
	var color = verde
	method color() = color
	method energiaQueProvee() = color.energia()
	method ponerseAmarilla() {color = amarillo}
	method nuevoDia() {color=rojo}
}

object mandarina {
	var peso = 60
	method peso() = peso
	method energiaQueProvee() = (peso.div(10)) * 2
	method nuevoDia() {peso -= peso * 0.1}
}

object banana {
	method color() = amarillo
	method energiaQueProvee() = self.color().energia()
	method nuevoDia() {}
}

object vasoDeAgua {
	method energiaQueProvee() = 0
}
