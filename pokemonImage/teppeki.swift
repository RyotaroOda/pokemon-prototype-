//
//  teppeki.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class teppeki: NSObject {
//    var moveName: String = "てっぺき"
//    var moveTypeImage: String = "はがね"
//    var category: Int = 3
//    var moveType: Int = 17
//    var moveDamage: Int = 0
//    var accuracy = 0
//    var pp: Int = 15
//    var direct: Bool = false
//    var statusUp: Bool = true
//    var attackRU: Int = 0
//    var defenceRU: Int = 2
//    var speedRU: Int = 0
//    var specialAttackRU: Int = 0
//    var specialDefenceRU: Int = 0
//    var evasionRU: Int = 0
//    var accuracyRU: Int = 0
//
//}
import UIKit

class teppeki: basicMove {
    override init(){
        super.init()
        moveName = "てっぺき"
        moveTypeImage = "はがね"
        category = 3
        moveType = 17
        moveDamage = 0
        accuracy = 0
        pp = 15
        direct = false
        statusUp = true
        attackRU = 0
        defenceRU = 2
        speedRU = 0
        specialAttackRU = 0
        specialDefenceRU = 0
        evasionRU = 0
        accuracyRU = 0
        
    }
}
