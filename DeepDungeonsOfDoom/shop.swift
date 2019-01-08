//
//  shop.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 06/01/2019.
//  Copyright © 2019 Jesús García. All rights reserved.
//

import Foundation
import UIKit

class shop: ViewController {
    
    @IBOutlet weak var money: UILabel!
    @IBOutlet weak var pickerview: UIPickerView!
    var modelpicker: modelPicker!
    @IBOutlet weak var buybutton: UIButton!
    @IBOutlet weak var errormoney: UILabel!
    @IBOutlet weak var errordisp: UILabel!
    @IBOutlet weak var buy: UILabel!
    
    override func viewDidLoad() {
        money.text = String(myHeroes[heroinuse].getCoins())
        errormoney.isHidden = true
        errordisp.isHidden = true
        buy.isHidden = true
        
        modelpicker = modelPicker()
        modelpicker.modelData = myItems
            
        pickerview.delegate = modelpicker
        pickerview.dataSource = modelpicker
    }
    
    @IBAction func buy(_ sender: Any) {
        if myItems[rowSelected].price > myHeroes[heroinuse].coins {
            errordisp.isHidden = true
            errormoney.isHidden = false
            buy.isHidden = true
        } else if myItems[rowSelected].type == "unavaiable" {
            errormoney.isHidden = true
            errordisp.isHidden = false
            buy.isHidden = true
        } else {
            switch(myItems[rowSelected].type) {
            case "pechera":
                myHeroes[heroinuse].setNewItem(position: 1, item: myItems[rowSelected])
                break
            case "casco":
                myHeroes[heroinuse].setNewItem(position: 0, item: myItems[rowSelected])
                break
            case "botas":
                myHeroes[heroinuse].setNewItem(position: 2, item: myItems[rowSelected])
                break
            case "escudo":
                myHeroes[heroinuse].setNewItem(position: 3, item: myItems[rowSelected])
                break;
            case "arma":
                myHeroes[heroinuse].setNewItem(position: 4, item: myItems[rowSelected])
                break
            case "accesorio":
                myHeroes[heroinuse].setNewItem(position: 5, item: myItems[rowSelected])
                break
            default:
                break
            }
            myHeroes[heroinuse].coinsChanged(coins: myHeroes[heroinuse].coins - myItems[rowSelected].price)
            money.text = String(myHeroes[heroinuse].getCoins())
            errormoney.isHidden = true
            errordisp.isHidden = true
            buy.isHidden = false
        }
    }
    
}
