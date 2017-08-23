//
//  zenigame.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2016/12/29.
//  Copyright © 2016年 Life is Tech. All rights reserved.
//

import UIKit

class zenigame: pokemonData {
    
    required override init() {
        super.init()
        name = "ゼニガメ"
        type = 3
        type2 = 0
        typeImage = UIImage(named: "みず")
        typeImage2 = UIImage(named: "透明")
        
        image = UIImage(named: "7")
        maxHP = 119
        currentHP = 119
        attack = 68
        defence = 85
        speed = 63
        specialAttack = 70
        specialDefence = 84
        level = 50
        
        move1 = hydropump()
        move2 = teppeki()
        move3 = rocketzutuki()
        move4 = aquatail()
        
//        move1Name = ""
//        move2Name = ""
//        move3Name = ""
//        move4Name = ""
//        
//        move1Type = 0
//        move2Type = 0
//        move3Type = 0
//        move4Type = 0
//        
//        move1TypeImage = ""
//        move2TypeImage = ""
//        move3TypeImage = ""
//        move4TypeImage = ""
//        
//        move1Category = 0
//        move2Category = 0
//        move3Category = 0
//        move4Category = 0
//        
//        move1pp = 0
//        move2pp = 0
//        move3pp = 0
//        move4pp = 0
//        
//        move1Damage = 0
//        move2Damage = 0
//        move3Damage = 0
//        move4Damage = 0
//        
//        move1Accuracy = 0
//        move2Accuracy = 0
//        move3Accuracy = 0
//        move4Accuracy = 0
//        
//        //        required init(name:String, imageName:String) {
//        //            self.name = name
//        //            self.image = UIImage(named: imageName)
//        move1Name = move1.moveName
//        move2Name = move2.moveName
//        move3Name = move3.moveName
//        move4Name = move4.moveName
//        
//        move1Type = move1.moveType
//        move2Type = move2.moveType
//        move3Type = move3.moveType
//        move4Type = move4.moveType
//        
//        move1TypeImage = move1.moveTypeImage
//        move2TypeImage = move2.moveTypeImage
//        move3TypeImage = move3.moveTypeImage
//        move4TypeImage = move4.moveTypeImage
//        
//        move1pp = move1.pp
//        move2pp = move2.pp
//        move3pp = move3.pp
//        move4pp = move4.pp
//        
//        move1Damage = move1.moveDamage
//        move2Damage = move2.moveDamage
//        move3Damage = move3.moveDamage
//        move4Damage = move4.moveDamage
    }
    //"104","53","70","48","86"
}
