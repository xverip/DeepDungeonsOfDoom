//
//  Monsters.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 08/01/2019.
//  Copyright © 2019 Jesús García. All rights reserved.
//

import Foundation

class Monsters {
    var name:String
    var dados:Int
    var sumaDados:Int
    var dinero:Int
    var experiencia:Int
    var asset:String
    var vida:Int
    
    init(name:String, dados:Int, sumaDados:Int, dinero:Int, experiencia:Int, asset:String, vida:Int) {
        self.name = name
        self.dados = dados
        self.sumaDados = sumaDados
        self.dinero = dinero
        self.experiencia = experiencia
        self.asset = asset
        self.vida = vida
    }
    
    func getdados() -> Int {
        return dados
    }
    
    func getsumdados() -> Int {
        return sumaDados
    }
    
    func getname() -> String {
        return name
    }
    
    func getdinero() -> Int {
        return dinero
    }
    
    
    func getexperiencia() -> Int {
        return experiencia
    }
    
    func getasset() -> String {
        return asset
    }
}
