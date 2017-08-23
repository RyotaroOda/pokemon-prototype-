//
//  kougousei.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class kougousei: NSObject {
//    var moveName: String = "こうごうせい"
//    var moveTypeImage: String = "くさ"
//    var moveType: Int = 2
//    var category: Int = 3
//    var moveDamage: Int = 0
//    var accuracy = 0
//    var pp: Int = 5
//    var direct: Bool = false
//    var statusUp: Bool = true
//    var statusAbnormal: Bool = false
//    var statusTransformationPlayer: Bool = false
//    var statusTransformationEnemy: Bool = false
//    var changeFieldStatus: Bool = false
//    var changePlayerFieldStatus: Bool = false
//    var changeEnemyFieldStatus: Bool = false
//
//    var recoverHP: Int = 50 //『ひざしがつよい』の時は最大HPの2/3、『あめ』『あられ』『すなあらし』の時は最大HPの1/4回復する。
//
//}
import UIKit

class kougousei: basicMove {
    override init(){
        super.init()
        moveName = "こうごうせい"
        moveTypeImage = "くさ"
        moveType = 5
        category = 3
        moveDamage = 0
        accuracy = 0
        pp = 5
        direct = false
        statusUp = true
        statusAbnormal = false
        statusTransformationPlayer = false
        statusTransformationEnemy = false
        changeFieldStatus = false
        changePlayerFieldStatus = false
        changeEnemyFieldStatus = false
        
        recoverHP = 50 //『ひざしがつよい』の時は最大HPの2/3、『あめ』『あられ』『すなあらし』の時は最大HPの1/4回復する。
        
    }
}
