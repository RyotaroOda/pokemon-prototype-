//
//  taiatari.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2016/12/30.
//  Copyright © 2016年 Life is Tech. All rights reserved.
//

import UIKit

class taiatari: basicMove {
    
    
    
    override init() {
        super.init()
        moveName = "たいあたり"
        moveTypeImage = "ノーマル"
        category = 1 //物理　特殊　変化
        moveType = 1
        accuracy = 100
        pp = 40
        moveDamage = 35
        direct = true
    }
    
    
}
//import UIKit
//
//class taiatari: NSObject {
//   var moveName = "たいあたり"
//            var moveTypeImage: String = "ノーマル"
//            var category: Int = 1 //物理　特殊　変化
//            var moveType: Int = 1
//            var accuracy = 100
//            var pp: Int = 40
//            var moveDamage: Int = 35
//            var direct: Bool = true
//}
