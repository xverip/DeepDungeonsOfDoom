//
//  inventory.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 06/01/2019.
//  Copyright © 2019 Jesús García. All rights reserved.
//

import Foundation
import UIKit

class inventory: ViewController {
    
    @IBOutlet weak var helmet: UIImageView!
    @IBOutlet weak var armor: UIImageView!
    @IBOutlet weak var weapon: UIImageView!
    @IBOutlet weak var shield: UIImageView!
    @IBOutlet weak var boots: UIImageView!
    @IBOutlet weak var accesr: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var attack: UILabel!
    @IBOutlet weak var defense: UILabel!
    @IBOutlet weak var magic: UILabel!
    @IBOutlet weak var luck: UILabel!
    @IBOutlet weak var money: UILabel!
    @IBOutlet weak var xp: UILabel!
    
    override func viewDidLoad() {
        var stuff:[Items] = myHeroes[heroinuse].getStuff()
        helmet.image = UIImage(named: stuff[0].getAsset())
        armor.image = UIImage(named: stuff[1].getAsset())
        boots.image = UIImage(named: stuff[2].getAsset())
        shield.image = UIImage(named: stuff[3].getAsset())
        weapon.image = UIImage(named: stuff[4].getAsset())
        accesr.image = UIImage(named: stuff[5].getAsset())
        name.text = myHeroes[heroinuse].getName()
        switch(heroinuse) {
        case 0:
            heart1.isHidden = false
            heart2.isHidden = false
            break
        case 1:
            heart1.isHidden = false
            heart2.isHidden = true
            break
        default:
            heart1.isHidden = true
            heart2.isHidden = true
        }
        attack.text = String(myHeroes[heroinuse].getATQ())
        defense.text = String(myHeroes[heroinuse].getDEF())
        magic.text = String(myHeroes[heroinuse].getMAG())
        luck.text = String(myHeroes[heroinuse].getLCK())
        money.text = String(myHeroes[heroinuse].getCoins())
        xp.text = String(myHeroes[heroinuse].getExp())
    }
}
