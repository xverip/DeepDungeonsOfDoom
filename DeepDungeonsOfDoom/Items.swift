//
//  Items.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 12/12/2018.
//  Copyright © 2018 Jesús García. All rights reserved.
//

import Foundation

class Items {
    var name:String
    var asset:String
    var ATQ:Int
    var MAG:Int
    var DEF:Int
    var LCK:Int
    var price:Int
    
    init(name:String, asset:String, ATQ:Int, MAG:Int, DEF:Int, LCK:Int, price:Int) {
        self.name = name
        self.asset = asset
        self.ATQ = ATQ
        self.MAG = MAG
        self.DEF = DEF
        self.LCK = LCK
        self.price = price
    }
    
    func getStats() -> [Int] {
        let aux:[Int] = [ATQ, MAG, DEF, LCK]
        return aux
    }
}
