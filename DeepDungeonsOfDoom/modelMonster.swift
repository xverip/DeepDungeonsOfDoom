//
//  modelMonster.swift
//  DeepDungeonsOfDoom
//
//  Created by Jesús García on 08/01/2019.
//  Copyright © 2019 Jesús García. All rights reserved.
//

import UIKit

class modelMonster: UIPickerView {

    var modelData:[Monsters]!

}

extension modelMonster: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myMonsters.count
    }
}

extension modelMonster: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        
        let myImageView:UIImageView = UIImageView(frame: CGRect(x: -40, y: 0, width: 100, height: 100))
        let imageItem = UIImage(named: myMonsters[row].getasset())
        myImageView.image = imageItem
        view.addSubview(myImageView)
        
        let nameLable:UILabel = UILabel(frame: CGRect(x: 70, y: -40, width: 1000, height: 100))
        nameLable.text = "Nombre: " + myMonsters[row].name + " Vida: " + String(myMonsters[row].vida)
        nameLable.textColor = .white
        nameLable.textAlignment = .left
        view.addSubview(nameLable)
        
        let dados:UILabel = UILabel(frame: CGRect(x: 70, y: -20, width: 1000, height: 100))
        dados.text = "Dados: " + String(myMonsters[row].dados)
        dados.textColor = .white
        dados.textAlignment = .left
        view.addSubview(dados)
        
        let sumdados:UILabel = UILabel(frame: CGRect(x: 70, y: 0, width: 1000, height: 100))
        sumdados.text = "Valor añadido a los dados: " + String(myMonsters[row].sumaDados)
        sumdados.textColor = .white
        sumdados.textAlignment = .left
        view.addSubview(sumdados)
        
        let premio:UILabel = UILabel(frame: CGRect(x: 70, y: 20, width: 1000, height: 100))
        premio.text = "Recompensa(dinero): " + String(myMonsters[row].dinero)
        premio.textColor = .white
        premio.textAlignment = .left
        view.addSubview(premio)
        
        let premioxp:UILabel = UILabel(frame: CGRect(x: 70, y: 40, width: 1000, height: 100))
        premioxp.text = "Recompensa(Experiencia): " + String(myMonsters[row].experiencia)
        premioxp.textColor = .white
        premioxp.textAlignment = .left
        view.addSubview(premioxp)
        
        return view
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        mrowSelected = row
    }
}


