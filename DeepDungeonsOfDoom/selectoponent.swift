//
//  selectoponent.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 08/01/2019.
//  Copyright © 2019 Jesús García. All rights reserved.
//

import UIKit

class selectoponent: UIViewController {

    @IBOutlet weak var selected: UIButton!
    @IBOutlet weak var monstersview: UIPickerView!
    var modelmonster: modelMonster!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modelmonster = modelMonster()
        modelmonster.modelData = myMonsters
        
        monstersview.delegate = modelmonster
        monstersview.dataSource = modelmonster
        
        mrowSelected = 0
    }

}
