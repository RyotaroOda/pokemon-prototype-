//
//  rengoku.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class rengoku: NSObject {
//    var moveName: String = "れんごく"
//    var moveTypeImage: String = "ほのお"
//    var moveType: Int = 3
//    var category: Int = 2
//    var moveDamage: Int = 100
//    var accuracy = 50
//    var pp: Int = 5
//    var direct: Bool = false
//    var statusUp: Bool = false
//    var statusAbnormal: Bool = true
//    var statusTransformationPlayer: Bool = false
//    var statusTransformationEnemy: Bool = false
//    var changeFieldStatus: Bool = false
//    var changePlayerFieldStatus: Bool = false
//    var changeEnemyFieldStatus: Bool = false
//
//    var burnProbability: Int = 100
//
//}
import UIKit

class rengoku: basicMove {
    override init() {
        super.init()
        
        moveName = "れんごく"
        moveTypeImage = "ほのお"
        moveType = 2
        category = 2
        moveDamage = 100
        accuracy = 50
        pp = 5
        direct = false
        statusUp = false
        statusAbnormal = true
        statusTransformationPlayer = false
        statusTransformationEnemy = false
        changeFieldStatus = false
        changePlayerFieldStatus = false
        changeEnemyFieldStatus = false
        
        burnProbability = 100
    }
}
