//
//  inventorycontroller.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 06/01/2019.
//  Copyright © 2019 Jesús García. All rights reserved.
//

import UIKit

class inventorycontroller: ViewController {
    
    @IBOutlet weak var helmet: UIImageView!
    @IBOutlet weak var armor: UIImageView!
    @IBOutlet weak var boots: UIImageView!
    @IBOutlet weak var weapon: UIImageView!
    @IBOutlet weak var shield: UIImageView!
    @IBOutlet weak var accesory: UIImageView!
    
    override func viewDidLoad() {
        var stuff:[Items] = myHeroes[heroinuse].getStuff()
        helmet.image = UIImage(named: stuff[0].getAsset())
    }
}
