//
//  Zombie.swift
//  MonsterTown
//
//  Created by Lisa Dean on 7/14/19.
//  Copyright © 2019 Lisa Dean. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp = true
    private(set) var isFallingApart = false
    
    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
        if let town = town {
            print("Town's population is now \(town.population)")
        }
    }
}
