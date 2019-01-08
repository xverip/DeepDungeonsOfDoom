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
var myMonsters = [Monsters]()
var heroinuse:Int = 0
var rowSelected: Int = 0
var mrowSelected: Int = 0

class ViewController: UIViewController {

    @IBOutlet weak var firsthero_asset: UIImageView!
    @IBOutlet weak var firsthero_damagestat: UILabel!
    @IBOutlet weak var firsthero_magstat: UILabel!
    @IBOutlet weak var firsthero_defensestat: UILabel!
    @IBOutlet weak var firsthero_luckstat: UILabel!
    @IBOutlet weak var buttonHero1: UIButton!
    @IBOutlet weak var secondhero_asset: UIImageView!
    @IBOutlet weak var secondhero_damagestat: UILabel!
    @IBOutlet weak var secondhero_magstat: UILabel!
    @IBOutlet weak var secondhero_defensestat: UILabel!
    @IBOutlet weak var secondhero_luckstat: UILabel!
    @IBOutlet weak var thirdhero_asset: UIImageView!
    @IBOutlet weak var thirdhero_damagestat: UILabel!
    @IBOutlet weak var thirdhero_magstat: UILabel!
    @IBOutlet weak var thirdhero_defensestat: UILabel!
    @IBOutlet weak var thirdhero_luckstat: UILabel!
    @IBOutlet weak var buttonHero2: UIButton!
    @IBOutlet weak var buttonHero3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if myItems.count < 1 {
            addItems()
            addHeroes()
            addMonsters()
        }
        showInfo()
    }
    
    func showInfo() {
        firsthero_asset.image = UIImage(named: myHeroes[0].getAsset())
        firsthero_damagestat.text = String(myHeroes[0].getATQ())
        firsthero_magstat.text = String(myHeroes[0].getMAG())
        firsthero_defensestat.text = String(myHeroes[0].getDEF())
        firsthero_luckstat.text = String(myHeroes[0].getLCK())
        
        secondhero_asset.image = UIImage(named: myHeroes[1].getAsset())
        secondhero_damagestat.text = String(myHeroes[1].getATQ())
        secondhero_magstat.text = String(myHeroes[1].getMAG())
        secondhero_defensestat.text = String(myHeroes[1].getDEF())
        secondhero_luckstat.text = String(myHeroes[1].getLCK())
        
        thirdhero_asset.image = UIImage(named: myHeroes[2].getAsset())
        thirdhero_damagestat.text = String(myHeroes[2].getATQ())
        thirdhero_magstat.text = String(myHeroes[2].getMAG())
        thirdhero_defensestat.text = String(myHeroes[2].getDEF())
        thirdhero_luckstat.text = String(myHeroes[2].getLCK())
    }
    
    func addItems() {
        myItems.append(Items.init(name: "Pechera de hierro", asset: "armour", ATQ: 0, MAG: 0, DEF: 30, LCK: 1, price: 200, type: "pechera")) //0
        myItems.append(Items.init(name: "Pechera de acero", asset: "armour2", ATQ: 0, MAG: 0, DEF: 40, LCK: 3, price: 400, type: "pechera")) //1
        myItems.append(Items.init(name: "Pechera de tela", asset: "armour3", ATQ: 0, MAG: 0, DEF: 15, LCK: 0, price: 50, type: "pechera"))   //2
        myItems.append(Items.init(name: "Arco de iniciación", asset: "arrow", ATQ: 15, MAG: 0, DEF: 0, LCK: 1, price: 120, type: "arma"))    //3
        myItems.append(Items.init(name: "Arco corto", asset: "arrow2", ATQ: 25, MAG: 0, DEF: 0, LCK: 2, price: 190, type: "arma"))           //4
        myItems.append(Items.init(name: "Arco largo", asset: "arrow3", ATQ: 37, MAG: 10, DEF: 0, LCK: 4, price: 450, type: "arma"))          //5
        myItems.append(Items.init(name: "Botas de cuero", asset: "boots", ATQ: 0, MAG: 0, DEF: 7, LCK: 0, price: 30, type: "botas"))         //6
        myItems.append(Items.init(name: "Botas de acero", asset: "boots2", ATQ: 0, MAG: 0, DEF: 20, LCK: 1, price: 150, type: "botas"))      //7
        myItems.append(Items.init(name: "Capa de nicromante", asset: "cap", ATQ: 0, MAG: 40, DEF: 15, LCK: 2, price: 550, type: "pechera"))  //8
        myItems.append(Items.init(name: "Capa de invocación", asset: "cap2", ATQ: 0, MAG: 23, DEF: 7, LCK: 1, price: 230, type: "pechera"))  //9
        myItems.append(Items.init(name: "Capa de aprendíz", asset: "cap3", ATQ: 0, MAG: 10, DEF: 3, LCK: 0, price: 80, type: "pechera"))     //10
        myItems.append(Items.init(name: "Casco de acero", asset: "helmet1", ATQ: 0, MAG: 0, DEF: 35, LCK: 2, price: 380, type: "casco"))     //11
        myItems.append(Items.init(name: "Casco de hierro superior", asset: "helmet2", ATQ: 0, MAG: 0, DEF: 27, LCK: 1, price: 300, type: "casco")) //12
        myItems.append(Items.init(name: "Sombrero de invocación", asset: "helmet3", ATQ: 0, MAG: 30, DEF: 20, LCK: 2, price: 300, type: "casco"))  //13
        myItems.append(Items.init(name: "Casco vikingo", asset: "helmet4", ATQ: 0, MAG: 0, DEF: 18, LCK: 10, price: 400, type: "casco"))     //14
        myItems.append(Items.init(name: "Casco de hierro", asset: "helmet5", ATQ: 0, MAG: 0, DEF: 20, LCK: 0, price: 120, type: "casco"))    //15
        myItems.append(Items.init(name: "Collar de diamantes", asset: "necklace", ATQ: 10, MAG: 5, DEF: 0, LCK: 5, price: 500, type: "accesorio")) //16
        myItems.append(Items.init(name: "Poción pequeña", asset: "potion", ATQ: 0, MAG: 0, DEF: 0, LCK: 0, price: 40, type: "unavaiable"))   //17
        myItems.append(Items.init(name: "Poción grande", asset: "potion2", ATQ: 0, MAG: 0, DEF: 0, LCK: 0, price: 70, type: "unavaiable"))   //18
        myItems.append(Items.init(name: "Anillo de diamantes", asset: "ring", ATQ: 30, MAG: 20, DEF: 0, LCK: 3, price: 570, type: "accesorio")) //19
        myItems.append(Items.init(name: "Anillo real", asset: "ring2", ATQ: 50, MAG: 40, DEF: 0, LCK: 5, price: 700, type: "accesorio"))     //20
        myItems.append(Items.init(name: "Cetro de oro", asset: "scepter", ATQ: 0, MAG: 20, DEF: 0, LCK: 1, price: 250, type: "arma"))        //21
        myItems.append(Items.init(name: "Cetro de diamante", asset: "scepter2", ATQ: 0, MAG: 35, DEF: 0, LCK: 3, price: 400, type: "arma"))  //22
        myItems.append(Items.init(name: "Cetro de madera", asset: "scepter3", ATQ: 0, MAG: 10, DEF: 0, LCK: 0, price: 50, type: "arma"))     //23
        myItems.append(Items.init(name: "Escudo de hierro", asset: "shield", ATQ: 0, MAG: 0, DEF: 40, LCK: 0, price: 350, type: "escudo"))   //24
        myItems.append(Items.init(name: "Escudo de bronze", asset: "shield2", ATQ: 0, MAG: 0, DEF: 30, LCK: 0, price: 280, type: "escudo"))  //25
        myItems.append(Items.init(name: "Escudo de acero", asset: "shield3", ATQ: 0, MAG: 0, DEF: 50, LCK: 2, price: 550, type: "escudo"))   //26
        myItems.append(Items.init(name: "Escudo de madera", asset: "shield4", ATQ: 0, MAG: 0, DEF: 10, LCK: 0, price: 40, type: "escudo"))   //27
        myItems.append(Items.init(name: "Espada de hierro", asset: "sword1", ATQ: 25, MAG: 0, DEF: 0, LCK: 0, price: 150, type: "arma"))     //28
        myItems.append(Items.init(name: "Espada infernal", asset: "sword2", ATQ: 30, MAG: 20, DEF: 0, LCK: 2, price: 400, type: "arma"))     //29
        myItems.append(Items.init(name: "Espada de caballero", asset: "sword3", ATQ: 50, MAG: 0, DEF: 0, LCK: 3, price: 450, type: "arma"))  //30
        myItems.append(Items.init(name: "Espada de madera", asset: "sword4", ATQ: 10, MAG: 0, DEF: 0, LCK: 0, price: 50, type: "arma"))      //31
        myItems.append(Items.init(name: "noItem", asset: "helmet_empty", ATQ: 0, MAG: 0, DEF: 0, LCK: 0, price: 0, type: "unavaiable"))         //32
    }
    
    func addHeroes() {
        //Casco, Pechera, Botas, Escudo, Arma, Accesorio
        myHeroes.append(Heroes.init(name: "Leonidas", vida: 4, stuff: [myItems[32], myItems[2], myItems[6], myItems[27], myItems[31], myItems[32]], asset: "heroe1"))
        myHeroes.append(Heroes.init(name: "Legolas", vida: 3, stuff: [myItems[32], myItems[0], myItems[6], myItems[32], myItems[3], myItems[32]], asset: "heroe2"))
        myHeroes.append(Heroes.init(name: "Kaelthas", vida: 2, stuff: [myItems[13], myItems[10], myItems[6], myItems[32], myItems[23], myItems[16]], asset: "heroe3"))
    }
    
    func addMonsters() {
        myMonsters.append(Monsters.init(name: "SIMIX1", dados: 1, sumaDados: 0, dinero: 20, experiencia: 10, asset: "monster1", vida: 1))
        myMonsters.append(Monsters.init(name: "SIMIX2", dados: 1, sumaDados: 3, dinero: 30, experiencia: 15, asset: "monster2", vida: 2))
        myMonsters.append(Monsters.init(name: "DAW1", dados: 2, sumaDados: 0, dinero: 50, experiencia: 25, asset: "monster3", vida: 2))
        myMonsters.append(Monsters.init(name: "DAM2", dados: 3, sumaDados: 5, dinero: 120, experiencia: 50, asset: "monster4", vida: 3))
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        switch sender.tag {
        case 1:
            heroinuse = 0
            //print(heroinuse)
            break
        case 2:
            heroinuse = 1
            //print(heroinuse)
            break
        case 3:
            heroinuse = 2
            //print(heroinuse)
            break
        default:
            break
        }
    }
}

