//
//  tanabakudan.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class tanebakudan: NSObject {
//    var moveName: String = "タネばくだん"
//    var moveTypeImage: String = "くさ"
//    var moveType: Int = 2
//    var category: Int = 1
//    var moveDamage: Int = 80
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
//}
import UIKit

class tanebakudan: basicMove {
    override init(){
        super.init()
        moveName = "タネばくだん"
        moveTypeImage = "くさ"
        moveType = 5
        category = 1
        moveDamage = 80
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
        
    }}
