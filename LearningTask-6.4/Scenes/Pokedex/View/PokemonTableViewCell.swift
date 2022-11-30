//
//  PokemonTableViewCell.swift
//  LearningTask-6.4
//
//  Created by Raline Maria da Silva on 18/09/22.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var tipoDePokemonView: TipoDePokemonView!
    @IBOutlet weak var imagemPokemon: UIImageView!
    @IBOutlet weak var evoluidoLabel: UILabel!
    
    
    func setup(_ pokemon: Pokemon) {
        nomeLabel.text = pokemon.nome
        tipoDePokemonView.set(pokemon.tipo)
        imagemPokemon.image = UIImage(named: pokemon.referencia)
        
        evoluidoLabel.text = pokemon.evolucoes?
            .map({ $0.nome })
            .joined(separator: ", ")
    }
}
