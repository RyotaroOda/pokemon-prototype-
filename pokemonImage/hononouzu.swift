//
//  hononouzu.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class hononouzu: NSObject {
//    var moveName: String = "ほのおのうず"
//    var moveTypeImage: String = "ほのお"
//    var moveType: Int = 3
//    var category: Int = 2
//    var moveDamage: Int = 35
//    var accuracy = 85
//    var pp: Int = 15
//    var direct: Bool = false
//    var statusUp: Bool = false
//    var statusAbnormal: Bool = true
//    var statusTransformationPlayer: Bool = false
//    var statusTransformationEnemy: Bool = true
//    var changeFieldStatus: Bool = false
//    var changePlayerFieldStatus: Bool = false
//    var changeEnemyFieldStatus: Bool = false
//
//    var bind: Bool = true
//    var freeze: Bool = false
//
//}
import UIKit

class hononouzu: basicMove {
    override init(){
        super.init()
        
        moveName = "ほのおのうず"
        moveTypeImage = "ほのお"
        moveType = 2
        category = 2
        moveDamage = 35
        accuracy = 85
        pp = 15
        direct = false
        statusUp = false
        statusAbnormal = true
        statusTransformationPlayer = false
        statusTransformationEnemy = true
        changeFieldStatus = false
        changePlayerFieldStatus = false
        changeEnemyFieldStatus = false
        
        bind = true
        freeze = false
    }
}
