//
//  Heroes.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 12/12/2018.
//  Copyright © 2018 Jesús García. All rights reserved.
//

import Foundation

class Heroes {
    var name:String
    var stuff:[Items]
    var asset:String
    var vida:Int
    var ATQ:Int = 0
    var MAG:Int = 0
    var DEF:Int = 0
    var LCK:Int = 0
    var exp:Int = 0
    var coins:Int = 100
    
    init(name:String, vida:Int, stuff:[Items], asset:String) {
        self.name = name
        self.stuff = stuff
        self.vida = vida
        self.stuff = stuff
        self.asset = asset
        for x in stuff {
            let myStats:[Int] = x.getStats()
            self.ATQ += myStats[0]
            self.MAG += myStats[1]
            self.DEF += myStats[2]
            self.LCK += myStats[3]
        }
    }
    
    func getAsset() -> String {
        return asset
    }
    func getName() -> String {
        return name
    }
    
    func getStuff() -> [Items] {
        return stuff
    }
    
    func getVida() -> Int {
        return vida
    }
    
    func getATQ() -> Int {
        return ATQ
    }
    
    func getMAG() -> Int {
        return MAG
    }
    
    func getDEF() -> Int {
        return DEF
    }
    
    func getLCK() -> Int {
        return LCK
    }
    
    func getExp() -> Int {
        return exp
    }
    
    func getCoins() -> Int {
        return coins
    }
    
    func gainExp(expGained:Int) {
        self.exp += expGained
    }
    
    func coinsChanged(coins:Int) {
        self.coins = coins
    }
    
    func setNewItem(position:Int, item:Items) {
        self.stuff[position] = item
        self.ATQ = 0
        self.MAG = 0
        self.DEF = 0
        self.LCK = 0
        for x in self.stuff {
            let stats:[Int] = x.getStats()
            self.ATQ += stats[0]
            self.MAG += stats[1]
            self.DEF += stats[2]
            self.LCK += stats[3]
        }
    }
}
