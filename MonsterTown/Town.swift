//
//  Town.swift
//  MonsterTown
//
//  Created by Lisa Dean on 7/14/19.
//  Copyright © 2019 Lisa Dean. All rights reserved.
//

import Foundation

struct Town {
    static let region = "South"
    var population = 5_422 {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
//    var population = 5
    var numberOfStoplights = 4
    
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
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }

    mutating func changePopulation(by amount: Int) {
        if (amount < 0 && population < abs(amount)) {
            return population = 0
        }
        return population += amount
    }
}
