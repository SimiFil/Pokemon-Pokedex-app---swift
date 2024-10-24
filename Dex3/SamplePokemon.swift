//
//  SamplePokemon.swift
//  Dex3
//
//  Created by Filip Simandl on 08.10.2024.
//

import Foundation
import CoreData

struct SamplePokemon {
    static let samplePokemon = {
        let context = PersistenceController.preview.container.viewContext
        
        let fetchRequest: NSFetchRequest<Pokemon> = Pokemon.fetchRequest()
        fetchRequest.fetchLimit = 1 // it's gonna fetch only one pokemon
        
        let results = try! context.fetch(fetchRequest)
        
        return results.first!
    }()
}
