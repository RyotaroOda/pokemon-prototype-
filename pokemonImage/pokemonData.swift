//
//  pokemonData.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/27.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

import UIKit

class pokemonData: NSObject {
    //
    //    var aquatailName: String = "アクアテール"
    //    var aquatailTypeImage: String = "みず"
    //    var aquatailType: Int = 4
    //    var aquatailCategory: Int = 1
    //    var aquatailDamage: Int = 90
    //    var aquatailAccuracy = 90
    //    var aquatailPP: Int = 10
    //    var aquatailDirect: Bool = true
    //
    //
    //
    var name: String = ""
    var type: Int = 0
    var type2: Int = 0
    var typeImage: UIImage!
    var typeImage2: UIImage!
    var image: UIImage!
    
    var maxHP: Int = 0
    var currentHP: Int = 0
    var attack:Int = 0
    var defence: Int = 0
    var speed: Int = 0
    var specialAttack: Int = 0
    var specialDefence: Int = 0
    var level: Int = 0
    
    var move1Name: String = ""
    var move2Name: String = ""
    var move3Name: String = ""
    var move4Name: String = ""
    
    var move1Type: Int = 0
    var move2Type: Int = 0
    var move3Type: Int = 0
    var move4Type: Int = 0
    
    var move1TypeImage: String = ""
    var move2TypeImage: String = ""
    var move3TypeImage: String = ""
    var move4TypeImage: String = ""
    
    var move1Category: Int = 0
    var move2Category: Int = 0
    var move3Category: Int = 0
    var move4Category: Int = 0
    
    var move1pp: Int = 0
    var move2pp: Int = 0
    var move3pp: Int = 0
    var move4pp: Int = 0
    
    var move1Damage: Int = 0
    var move2Damage: Int = 0
    var move3Damage: Int = 0
    var move4Damage: Int = 0
    
    var move1Accuracy: Int = 0
    var move2Accuracy: Int = 0
    var move3Accuracy: Int = 0
    var move4Accuracy: Int = 0
    
    var move1: basicMove!
    var move2: basicMove!
    var move3: basicMove!
    var move4: basicMove!
    
    init(name:String, imageName:String){
        
    }
    override init() {
        
    }
    
    
}
