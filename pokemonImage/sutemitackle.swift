//
//  sutemitackle.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//
//
//import UIKit
//
//class sutemitackle: NSObject {
//    var moveName: String = "すてみタックル"
//    var moveTypeImage: String = "ノーマル"
//    var moveType: Int = 1
//    var category: Int = 1
//    var moveDamage: Int = 120
//    var accuracy = 100
//    var pp: Int = 15
//    var direct: Bool = true
//    var statusUp: Bool = true
//    var statusAbnormal: Bool = false
//    var statusTransformationPlayer: Bool = false
//    var statusTransformationEnemy: Bool = false
//    var changeFieldStatus: Bool = false
//    var changePlayerFieldStatus: Bool = false
//    var changeEnemyFieldStatus: Bool = false
//
//    var backLash: Int = 33
//
//
//}
import UIKit

class sutemitackle: basicMove {
    override init(){
        super.init()
        moveName = "すてみタックル"
        moveTypeImage = "ノーマル"
        moveType = 1
        category = 1
        moveDamage = 120
        accuracy = 100
        pp = 15
        direct = true
        statusUp = true
        statusAbnormal = false
        statusTransformationPlayer = false
        statusTransformationEnemy = false
        changeFieldStatus = false
        changePlayerFieldStatus = false
        changeEnemyFieldStatus = false
        
        backLash = 33
        
    }
}
