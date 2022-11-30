//
//  Pokemon.swift
//  LearningTask-6.4
//
//  Created by Raline Maria da Silva on 18/09/22.
//

import Foundation

enum Tipo: String {
    
    case grama = "Grama"
    case fogo = "Fogo"
    case agua = "Água"
    case eletrico = "Elétrico"
    case venenoso = "Venenoso"
    case voador = "Voador"
    case normal = "Normal"
    case gelo = "Gelo"
    case psiquico = "Psíquico"
    
}

struct Pokemon {
    let referencia: String
    let nome: String
    let tipo: [Tipo]
    let evolucoes: [Pokemon]?
    
    
    init(referencia: String, nome: String, tipo: [Tipo], evolucoes: [Pokemon]? = nil) {
            self.referencia = referencia
            self.nome = nome
            self.tipo = tipo
            self.evolucoes = evolucoes
        }

}
