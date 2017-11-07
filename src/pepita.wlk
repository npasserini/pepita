
object pepita {
	var energia = 140
	
	method energia() { 
		return energia
	}
	
	method volar(km) {
		energia -= 10 + km
	}

	method comer(gramos) {
		energia += 4 * gramos
	}
	
	method estaDebil() {
		return energia < 50
	}

	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() {
		var cuantoQuiereVolar = energia / 5
		if (energia.between(300, 400)) {
			cuantoQuiereVolar += 10
		}
		if (energia % 20 == 0) {
			cuantoQuiereVolar += 15
		}
		return cuantoQuiereVolar
	}
	
	method haceLoQueQuieras() {
		if (self.estaDebil()) {
			self.comer(20)
		}
		if (self.estaFeliz()) {
			self.volar(self.cuantoQuiereVolar())
		}
	}
}