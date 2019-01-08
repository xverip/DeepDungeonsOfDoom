//
//  batalla.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 08/01/2019.
//  Copyright © 2019 Jesús García. All rights reserved.
//

import UIKit

class batalla: UIViewController {
    
    var monster:Monsters!
    var hero:Heroes!
    var assetsdicem:[String] = ["nothing", "dice1U", "dice2U", "dice3U", "dice4U", "dice5U", "dice6U", "dice7U", "dice8U", "dice9U", "dice10U", "dice11U", "dice12U"]
    var assetsdiceu:[String] = ["nothing", "dice1", "dice2", "dice3", "dice4", "dice5", "dice6", "dice7", "dice8", "dice9", "dice10", "dice11", "dice12"]
    var totalAttackM:Int = 0
    var totalAttackU:Int = 0
    @IBOutlet weak var assetmonster: UIImageView!
    var lifeMonster:Int!
    var lifeHero:Int!
    var diceofHero:Int!
    //monster
    @IBOutlet weak var hp1: UIImageView!
    @IBOutlet weak var hp2: UIImageView!
    @IBOutlet weak var hp3: UIImageView!
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var dice3: UIImageView!
    @IBOutlet weak var labelMonster: UILabel!
    //hero
    @IBOutlet weak var assethero: UIImageView!
    @IBOutlet weak var hp1u: UIImageView!
    @IBOutlet weak var hp2u: UIImageView!
    @IBOutlet weak var hp3u: UIImageView!
    @IBOutlet weak var hp4u: UIImageView!
    @IBOutlet weak var dice1u: UIImageView!
    @IBOutlet weak var dice2u: UIImageView!
    @IBOutlet weak var dice3u: UIImageView!
    @IBOutlet weak var labelhero: UILabel!
    
    @IBOutlet weak var attackbutton: UIButton!
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var buttonfinish: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        monster = myMonsters[mrowSelected]
        hero = myHeroes[heroinuse]
        lifeMonster = monster.vida
        lifeHero = hero.vida
        diceforhero()
        assets()
    }
    
    @IBAction func attack(_ sender: Any) {
        backbutton.isHidden = true
        heroAttack()
        monsterAttack()
        
        if totalAttackM <= totalAttackU {
            lifeMonster -= 1
        } else {
            lifeHero -= 1
        }
        lifehero()
        lifemonster()
    }
    
    func diceforhero() {
        var aux:Int = 0
        aux += hero.ATQ
        aux += hero.DEF
        aux += hero.MAG
        aux += hero.LCK
        aux /= 4
        switch(aux) {
        case 0...15:
            diceofHero = 1
            break
        case 16...30:
            diceofHero = 2
            break
        default:
            diceofHero = 3
        }
    }
    
    func assets() {
        buttonfinish.isHidden = true
        backbutton.isHidden = false
        attackbutton.isHidden = false
        assetmonster.image = UIImage(named: monster.asset)
        dicesMonster()
        lifemonster()
        
        assethero.image = UIImage(named: hero.asset)
        lifehero()
        dicesHero()
    }
    
    func heroAttack() {
        totalAttackU = 0
        var dicesHero:[UIImageView] = [dice1u, dice2u, dice3u]
        for x in 0...diceofHero {
            let random = Int.random(in: 1 ... 12)
            dicesHero[x].image = UIImage(named: assetsdiceu[random])
            totalAttackU += random
        }
        labelhero.text = hero.name + " ataca con " + String(totalAttackU) + " puntos de daño"
    }
    
    func dicesHero() {
        switch(diceofHero) {
        case 1:
            dice1u.isHidden = false
            dice2u.isHidden = true
            dice3u.isHidden = true
            break
        case 2:
            dice1u.isHidden = false
            dice2u.isHidden = false
            dice3u.isHidden = true
            break
        default:
            dice1u.isHidden = false
            dice2u.isHidden = false
            dice3u.isHidden = false
        }
    }
    
    func lifehero() {
        switch(lifeHero) {
        case 0:
            hp1u.isHidden = true
            hp2u.isHidden = true
            hp3u.isHidden = true
            hp4u.isHidden = true
            attackbutton.isHidden = true
            buttonfinish.isHidden = false
            buttonfinish.setTitle("HAS PERDIDO", for: .normal)
            break
        case 1:
            hp1u.isHidden = false
            hp2u.isHidden = true
            hp3u.isHidden = true
            hp4u.isHidden = true
            break
        case 2:
            hp1u.isHidden = false
            hp2u.isHidden = false
            hp3u.isHidden = true
            hp4u.isHidden = true
            break
        case 3:
            hp1u.isHidden = false
            hp2u.isHidden = false
            hp3u.isHidden = false
            hp4u.isHidden = true
            break
        default:
            hp1u.isHidden = false
            hp2u.isHidden = false
            hp3u.isHidden = false
            hp4u.isHidden = false
            break
        }
    }
    
    func monsterAttack() {
        totalAttackM = 0
        var dicesMonster:[UIImageView] = [dice1, dice2, dice3]
        for x in 0...monster.dados {
            let random = Int.random(in: 1 ... 12)
            dicesMonster[x].image = UIImage(named: assetsdicem[random])
            totalAttackM += random
        }
        totalAttackM += monster.sumaDados
        labelMonster.text = monster.name + " ataca con " + String(totalAttackM) + " puntos de daño"
    }
    
    func dicesMonster() {
        switch(monster.dados) {
        case 1:
            dice1.isHidden = false
            dice2.isHidden = true
            dice3.isHidden = true
            break
        case 2:
            dice1.isHidden = false
            dice2.isHidden = false
            dice3.isHidden = true
            break
        default:
            dice1.isHidden = false
            dice2.isHidden = false
            dice3.isHidden = false
        }
    }
    
    func lifemonster() {
        switch(lifeMonster) {
        case 0:
            hp1.isHidden = true
            hp2.isHidden = true
            hp3.isHidden = true
            attackbutton.isHidden = true
            buttonfinish.isHidden = false
            buttonfinish.setTitle("HAS GANADO", for: .normal)
            hero.coins += monster.dinero
            hero.exp += monster.experiencia
            break
        case 1:
            hp1.isHidden = false
            hp2.isHidden = true
            hp3.isHidden = true
            break
        case 2:
            hp1.isHidden = false
            hp2.isHidden = false
            hp3.isHidden = true
            break
        default:
            hp1.isHidden = false
            hp2.isHidden = false
            hp3.isHidden = false
            break
        }
    }
}
