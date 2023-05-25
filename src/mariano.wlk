import golosinas.*

object mariano {
	const golosinas = []
	 
	method comprar(_golosinas) { golosinas.addAll(_golosinas) }
	
	method desechar (_golosinas) { golosinas.removeAll(_golosinas) }
	method estaEnHeladera(golosina) { return golosinas.contains(golosina) }
	method golosinas() { return golosinas }
	method primerGolosina() { return golosinas.first() }
	method ultimaGolosina() { return golosinas.last() }
	
	method pesoGolosinas() { 
		return golosinas.sum({ golo => golo.peso() })
	}
	
	method probarGolosinas() {
		golosinas.forEach( {_golosina => _golosina.mordisco() } )
	}
	
	method golosinaMasPesada() { 
		return golosinas.max({ golo => golo.peso() })
	}
	
	method hayGolosinaSinTACC() {
		return golosinas.any({ _golosina => _golosina.libreGluten()}) 
	}
	
	method preciosCuidados() {
		return golosinas.all({ _golosina => _golosina.precio() < 10}) 
	}
	
	
	
	method golosinaDeSabor(_sabor) {
		return golosinas.find({ golosina => golosina.sabor() == _sabor })
	}
	
	method golosinasDeSabor(_sabor) {
		return golosinas.filter({ golosina => golosina.sabor() == _sabor })
	}
	
	method sabores() {
		return golosinas.map({ golosina => golosina.sabor() }).asSet()
	}



	method golosinaMasCara() {
		return golosinas.max( { _golosina => _golosina.precio() } )
	}

	method golosinasFaltantes(golosinasDeseadas) {
		return golosinasDeseadas.difference(golosinas)	
	}


	method saboresFaltantes(_saboresDeseados) {
		return _saboresDeseados.filter({_saborDeseado => ! self.tieneGolosinaDeSabor(_saborDeseado)})	
	}
	
	method tieneGolosinaDeSabor(_sabor) {
		return golosinas.any({_golosina => _golosina.sabor() == _sabor})
	}
	method baniar(golosina) { golosinas.add(new GolosinaBaniada(golosinaInterior = golosina)) } //asumo que si ya estaba bañada no le pasa nada y si ya estaba en la coleccion entonces se repite el elemento.
}















