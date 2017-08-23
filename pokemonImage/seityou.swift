//
//  seityou.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class seityou: NSObject {
//    var moveName: String = "せいちょう"
//    var moveTypeImage: String = "ノーマル"
//    var moveType: Int = 1
//    var category: Int = 3
//    var moveDamage: Int = 0
//    var accuracy = 0
//    var pp: Int = 40
//    var direct: Bool = false
//    var statusUp: Bool = true
//    var statusAbnormal: Bool = false
//    var statusTransformationPlayer: Bool = false
//    var statusTransformationEnemy: Bool = false
//    var changeFieldStatus: Bool = false
//    var changePlayerFieldStatus: Bool = false
//    var changeEnemyFieldStatus: Bool = false
//
//    var attackRU: Int = 1
//    var specialAttackRU: Int = 1//天気が『ひざしがつよい』の時は、2段階ずつ上がる。
//
//}
import UIKit

class seityou: basicMove {
    override init(){
        super.init()
        moveName = "せいちょう"
        moveTypeImage = "ノーマル"
        moveType = 1
        category = 3
        moveDamage = 0
        accuracy = 0
        pp = 40
        direct = false
        statusUp = true
        statusAbnormal = false
        statusTransformationPlayer = false
        statusTransformationEnemy = false
        changeFieldStatus = false
        changePlayerFieldStatus = false
        changeEnemyFieldStatus = false
        
        attackRU = 1
        specialAttackRU = 1//天気が『ひざしがつよい』の時は、2段階ずつ上がる。
        
    }
}
