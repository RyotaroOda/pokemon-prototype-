//
//  rocketzutuki.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class rocketzutuki: NSObject {
//    var moveName: String = "ロケットずつき"
//    var moveTypeImage: String = "ノーマル"
//    var moveType: Int = 1
//    var category: Int = 1
//    var moveDamage: Int = 130
//    var accuracy = 100
//    var pp: Int = 10
//    var direct: Bool = true
//    var statusUp: Bool = true
//    var attackRU: Int = 0
//    var defenceRU: Int = 1
//    var speedRU: Int = 0
//    var specialAttackRU: Int = 0
//    var specialDefenceRU: Int = 0
//    var evasionRU: Int = 0
//    var accuracyRU: Int = 0
//    //TODO: ２ターン目に攻撃
//
//}
import UIKit

class rocketzutuki: basicMove {
    override init (){
        super.init()
        moveName = "ロケットずつき"
        moveTypeImage = "ノーマル"
        moveType = 1
        category = 1
        moveDamage = 130
        accuracy = 100
        pp = 10
        direct = true
        statusUp = true
        attackRU = 0
        defenceRU = 1
        speedRU = 0
        specialAttackRU = 0
        specialDefenceRU = 0
        evasionRU = 0
        accuracyRU = 0
        //TODO: ２ターン目に攻撃
        
    }
}
