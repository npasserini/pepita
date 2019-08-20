object pepita {
	var energia = 100
	
	method volar(km) {
		energia -= 10 + km
	}

	method comer(comida) {
		energia += comida.energia()
	}
	
	method estaCansada() = energia < 50

	method estaFeliz() = energia.between(80, 120)
}

object alpiste {
	method energia() = 5
}
