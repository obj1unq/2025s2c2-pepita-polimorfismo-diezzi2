object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30

	method energia() {
	  return energia
	}

	method comer(comida) {
		energia = energia + 0.5 * comida.energiaQueAporta()
	}

	method volar(distancia) {
		energia = energia - 20 - 2 * distancia
	}
}

object roque {
	var aveDeRoque = pepita
	var cenas = 0

	method entrenar(_aveDeRoque) {
	  aveDeRoque = _aveDeRoque
	  cenas = 0
	}

	method alimentar(comida) {
	  aveDeRoque.comer(comida)
	  cenas = cenas + 1
	}

	method cenas() {
	  return cenas
	}
}