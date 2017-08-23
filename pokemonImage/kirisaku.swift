//
//  kirisaku.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class kirisaku: NSObject {
//    var moveName: String = "きりさく"
//    var moveTypeImage: String = "ノーマル"
//    var moveType: Int = 1
//    var category: Int = 1
//    var moveDamage: Int = 70
//    var accuracy = 100
//    var pp: Int = 15
//    var direct: Bool = true
//    var statusUp: Bool = true //TODO: わざ
//    var statusAbnormal: Bool = false
//    var statusTransformationPlayer: Bool = false
//    var statusTransformationEnemy: Bool = false
//    var changeFieldStatus: Bool = false
//    var changePlayerFieldStatus: Bool = false
//    var changeEnemyFieldStatus: Bool = false
//
//    var accuracyRU: Int = 1


import UIKit

class kirisaku: basicMove {
    override init(){
        super.init()
        moveName = "きりさく"
        moveTypeImage = "ノーマル"
        moveType = 1
        category = 1
        moveDamage = 70
        accuracy = 100
        pp = 15
        direct = true
        statusUp = true //TODO: わざ
        statusAbnormal = false
        statusTransformationPlayer = false
        statusTransformationEnemy = false
        changeFieldStatus = false
        changePlayerFieldStatus = false
        changeEnemyFieldStatus = false
        
        accuracyRU = 1
        
    }
}
