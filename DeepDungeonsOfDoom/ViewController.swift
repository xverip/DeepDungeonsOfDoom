//
//  ViewController.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 12/12/2018.
//  Copyright © 2018 Jesús García. All rights reserved.
//

import UIKit

var myHeroes = [Heroes]()
var myItems = [Items]()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func addItems() {
        myItems.append(Items.init(name: "Pechera de hierro", asset: "armour", ATQ: 0, MAG: 0, DEF: 30, LCK: 1, price: 200))
        myItems.append(Items.init(name: "Pechera de acero", asset: "armour2", ATQ: 0, MAG: 0, DEF: 40, LCK: 3, price: 400))
        myItems.append(Items.init(name: "Pechera de tela", asset: "armour3", ATQ: 0, MAG: 0, DEF: 15, LCK: 0, price: 50))
        myItems.append(Items.init(name: "Arco de iniciación", asset: "arrow", ATQ: 15, MAG: 0, DEF: 0, LCK: 1, price: 120))
        myItems.append(Items.init(name: "Arco corto", asset: "arrow2", ATQ: 25, MAG: 0, DEF: 0, LCK: 2, price: 190))
        myItems.append(Items.init(name: "Arco largo", asset: "arrow3", ATQ: 37, MAG: 10, DEF: 0, LCK: 4, price: 450))
        myItems.append(Items.init(name: "Botas de cuero", asset: "boots", ATQ: 0, MAG: 0, DEF: 7, LCK: 0, price: 30))
        myItems.append(Items.init(name: "Botas de acero", asset: "boots2", ATQ: 0, MAG: 0, DEF: 20, LCK: 1, price: 150))
        myItems.append(Items.init(name: "Capa de nicromante", asset: "cap", ATQ: 0, MAG: 40, DEF: 15, LCK: 2, price: 550))
        myItems.append(Items.init(name: "Capa de invocación", asset: "cap2", ATQ: 0, MAG: 23, DEF: 7, LCK: 1, price: 230))
        myItems.append(Items.init(name: "Capa de aprendíz", asset: "cap3", ATQ: 0, MAG: 10, DEF: 3, LCK: 0, price: 80))
        myItems.append(Items.init(name: "Quitar el casco", asset: "helmet_empty", ATQ: 0, MAG: 0, DEF: 0, LCK: 0, price: 0))
        myItems.append(Items.init(name: "Casco de acero", asset: "helmet1", ATQ: 0, MAG: 0, DEF: 35, LCK: 2, price: 380))
        myItems.append(Items.init(name: "Casco de hierro superior", asset: "helmet2", ATQ: 0, MAG: 0, DEF: 27, LCK: 1, price: 300))
        myItems.append(Items.init(name: "Sombrero de invocación", asset: "helmet3", ATQ: 0, MAG: 30, DEF: 20, LCK: 2, price: 300))
        myItems.append(Items.init(name: "Casco vikingo", asset: "helmet4", ATQ: 0, MAG: 0, DEF: 18, LCK: 10, price: 400))
        myItems.append(Items.init(name: "Casco de hierro", asset: "helmet5", ATQ: 0, MAG: 0, DEF: 20, LCK: 0, price: 120))
        myItems.append(Items.init(name: "Collar de diamantes", asset: "necklace", ATQ: 10, MAG: 5, DEF: 0, LCK: 5, price: 500))
        myItems.append(Items.init(name: "Poción pequeña", asset: "potion", ATQ: 0, MAG: 0, DEF: 0, LCK: 0, price: 40))
        myItems.append(Items.init(name: "Poción grande", asset: "potion2", ATQ: 0, MAG: 0, DEF: 0, LCK: 0, price: 70))
        myItems.append(Items.init(name: "Anillo de diamantes", asset: "ring", ATQ: 30, MAG: 20, DEF: 0, LCK: 3, price: 570))
        myItems.append(Items.init(name: "Anillo real", asset: "ring2", ATQ: 50, MAG: 40, DEF: 0, LCK: 5, price: 700))
        myItems.append(Items.init(name: "Cetro de oro", asset: "scepter", ATQ: 0, MAG: 20, DEF: 0, LCK: 1, price: 250))
        myItems.append(Items.init(name: "Cetro de diamante", asset: "scepter2", ATQ: 0, MAG: 35, DEF: 0, LCK: 3, price: 400))
        myItems.append(Items.init(name: "Cetro de madera", asset: "scepter3", ATQ: 0, MAG: 10, DEF: 0, LCK: 0, price: 50))
        myItems.append(Items.init(name: "Escudo de hierro", asset: "shield", ATQ: 0, MAG: 0, DEF: 40, LCK: 0, price: 350))
        myItems.append(Items.init(name: "Escudo de bronze", asset: "shield2", ATQ: 0, MAG: 0, DEF: 30, LCK: 0, price: 280))
        myItems.append(Items.init(name: "Escudo de acero", asset: "shield3", ATQ: 0, MAG: 0, DEF: 50, LCK: 2, price: 550))
        myItems.append(Items.init(name: "Escudo de madera", asset: "shield4", ATQ: 0, MAG: 0, DEF: 10, LCK: 0, price: 40))
        myItems.append(Items.init(name: "Espada de hierro", asset: "sword1", ATQ: 25, MAG: 0, DEF: 0, LCK: 0, price: 150))
        myItems.append(Items.init(name: "Espada infernal", asset: "sword2", ATQ: 30, MAG: 20, DEF: 0, LCK: 2, price: 400))
        myItems.append(Items.init(name: "Espada de caballero", asset: "sword3", ATQ: 50, MAG: 0, DEF: 0, LCK: 3, price: 450))
        myItems.append(Items.init(name: "Espada de madera", asset: "sword4", ATQ: 10, MAG: 0, DEF: 0, LCK: 0, price: 50))
    }
}

