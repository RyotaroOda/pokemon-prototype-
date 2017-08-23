//
//  kaenhousya.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class kaenhousya: NSObject {
//    var moveName: String = "かえんほうしゃ"
//    var moveTypeImage: String = "ほのお"
//    var moveType: Int = 3
//    var category: Int = 2
//    var moveDamage: Int = 90
//    var accuracy = 100
//    var pp: Int = 15
//    var direct: Bool = false
//    var statusUp: Bool = false
//    var statusAbnormal: Bool = false
//    var statusTransformationPlayer: Bool = false
//    var statusTransformationEnemy: Bool = false
//    var changeFieldStatus: Bool = false
//    var changePlayerFieldStatus: Bool = false
//    var changeEnemyFieldStatus: Bool = false
//
//     var burn: Bool = false
//    var burnProbability: Int = 10
//
//}
import UIKit

class kaenhousya: basicMove {
    override init(){
        super.init()
        moveName = "かえんほうしゃ"
        moveTypeImage = "ほのお"
        moveType = 2
        category = 2
        moveDamage = 90
        accuracy = 100
        pp = 15
        direct = false
        statusUp = false
        statusAbnormal = false
        statusTransformationPlayer = false
        statusTransformationEnemy = false
        changeFieldStatus = false
        changePlayerFieldStatus = false
        changeEnemyFieldStatus = false
        
        burn = false
        burnProbability = 10
    }
}
