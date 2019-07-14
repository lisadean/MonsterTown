//
//  Town.swift
//  MonsterTown
//
//  Created by Lisa Dean on 7/14/19.
//  Copyright © 2019 Lisa Dean. All rights reserved.
//

import Foundation

struct Town {
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
//    var population = 5
    var numberOfStoplights: Int
    
    init?(region: String, population: Int, stoplights: Int) {
        guard population > 0 else {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
    }
    
    init?(population: Int, stoplights: Int) {
        self.init(region: "N/A", population: population, stoplights: stoplights)
    }
    
    enum Size {
        case small
        case medium
        case large
    }
    
//    lazy var townSize: Size = {
//        switch self.population {
//        case 0...10_000:
//            return Size.small
//        case 10_001...100_000:
//            return Size.medium
//        default:
//            return Size.large
//        }
//    }()

    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }
        }
    }
    
    func printDescription(){
        print("Population: \(population); number of stoplights: \(numberOfStoplights); region: \(region)")
    }

    mutating func changePopulation(by amount: Int) {
        if (amount < 0 && population < abs(amount)) {
            return population = 0
        }
        return population += amount
    }
}
