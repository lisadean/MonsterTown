//
//  main.swift
//  MonsterTown
//
//  Created by Lisa Dean on 7/14/19.
//  Copyright © 2019 Lisa Dean. All rights reserved.
//

import Foundation

var myTown = Town(population: 0, stoplights: 6)
myTown?.printDescription()

let myTownSize = myTown?.townSize
print("myTownSize: \(String(describing: myTownSize))")
//var yourTown = Town()
//yourTown.changePopulation(by: 500)
myTown?.changePopulation(by: 1_000_000)
print("myTown has \(String(describing: myTown?.population)) and is a \(String(describing: myTown?.townSize)) sized town")
//print("myTown has \(myTown.population) and is a \(myTown.townSize) sized town\nyourTown has \(yourTown.population) and is a \(yourTown.townSize) sized town")

//myTown.printDescription()
//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

var fred: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
//fred.town = myTown
fred?.terrorizeTown()
fred?.town?.printDescription()

//var frederick = fred
//frederick.name = "Frederick"
//print("Fred's name is \(frederick.name)")

var convenientZombie = Zombie(limp: true, fallingApart: false)

//var bob = ZombieBoss(town: nil, monsterName: "Bob")
//bob.terrorizeTown()

print("Victim pool: \(String(describing: fred?.victimPool))")
fred?.victimPool = 500
//print("Victim pool: \(fred.victimPool); population: \(fred.town?.population)")
print("Victim pool: \(String(describing: fred?.victimPool))")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away")
}
