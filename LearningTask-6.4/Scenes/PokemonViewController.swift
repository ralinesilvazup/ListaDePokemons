//
//  ViewController.swift
//  LearningTask-6.4
//
//  Created by rafael.rollo on 12/04/2022.
//

import UIKit

class PokemonViewController: UITableViewController {

    var pokemonStore: PokemonStore?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupHeader()
        
    }
    
    func setupHeader() {
        tableView.tableHeaderView = HeaderView.com(titulo: "Pokédex")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonStore?.todos.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let pokemonCell = tableView.dequeueReusableCell(withIdentifier: "PokemonViewCell", for: indexPath) as? PokemonTableViewCell else {
            fatalError("Error.")
        }
        
        let pokemon = pokemonStore!.todos[indexPath.row]
        pokemonCell.setup(pokemon)
        
        return pokemonCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
