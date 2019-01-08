//
//  modelPicker.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 06/01/2019.
//  Copyright © 2019 Jesús García. All rights reserved.
//

import UIKit

class modelPicker: UIPickerView {

    var modelData:[Items]!
    
}

extension modelPicker: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myItems.count
    }
}

extension modelPicker: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        
        let myImageView:UIImageView = UIImageView(frame: CGRect(x: -40, y: 0, width: 100, height: 100))
        let imageItem = UIImage(named: myItems[row].getAsset())
        myImageView.image = imageItem
        view.addSubview(myImageView)
        
        let attackLable:UILabel = UILabel(frame: CGRect(x: 70, y: -40, width: 100, height: 100))
        attackLable.text = "Ataque: " + String(myItems[row].ATQ)
        attackLable.textColor = .white
        attackLable.textAlignment = .left
        view.addSubview(attackLable)
        
        let defenseLable:UILabel = UILabel(frame: CGRect(x: 70, y: -20, width: 100, height: 100))
        defenseLable.text = "Defensa: " + String(myItems[row].DEF)
        defenseLable.textColor = .white
        defenseLable.textAlignment = .left
        view.addSubview(defenseLable)
        
        let magLable:UILabel = UILabel(frame: CGRect(x: 70, y: 0, width: 100, height: 100))
        magLable.text = "Magia: " + String(myItems[row].MAG)
        magLable.textColor = .white
        magLable.textAlignment = .left
        view.addSubview(magLable)
        
        let luckLable:UILabel = UILabel(frame: CGRect(x: 70, y: 20, width: 100, height: 100))
        luckLable.text = "Suerte: " + String(myItems[row].LCK)
        luckLable.textColor = .white
        luckLable.textAlignment = .left
        view.addSubview(luckLable)
        
        let priceLable:UILabel = UILabel(frame: CGRect(x: 70, y: 40, width: 100, height: 100))
        priceLable.text = "Precio: " + String(myItems[row].price)
        priceLable.textColor = .white
        priceLable.textAlignment = .left
        view.addSubview(priceLable)
        
        return view
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        rowSelected = row
    }
}
