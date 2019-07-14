//
//  main.swift
//  MonsterTown
//
//  Created by Lisa Dean on 7/14/19.
//  Copyright © 2019 Lisa Dean. All rights reserved.
//

import Foundation

var myTown = Town()
let myTownSize = myTown.townSize
print("myTownSize: \(myTownSize)")
var yourTown = Town()
//yourTown.changePopulation(by: 500)
yourTown.changePopulation(by: 1_000_000)
print("myTown has \(myTown.population) and is a \(myTown.townSize) sized town\nyourTown has \(yourTown.population) and is a \(yourTown.townSize) sized town")

//myTown.printDescription()
//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

let fred = Zombie()
fred.town = myTown
fred.terrorizeTown()
fred.town?.printDescription()

var frederick = fred
frederick.name = "Frederick"
print("Fred's name is \(frederick.name)")

var bob = ZombieBoss()
bob.terrorizeTown()

print("Victim pool: \(fred.victimPool)")
fred.victimPool = 500
//print("Victim pool: \(fred.victimPool); population: \(fred.town?.population)")
print("Victim pool: \(fred.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away")
}
