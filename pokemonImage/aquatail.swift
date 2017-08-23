//
//  aquatail.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class aquatail: NSObject {
//    var moveName: String = "アクアテール"
//    var moveTypeImage: String = "みず"
//    var moveType: Int = 4
//    var category: Int = 1
//    var moveDamage: Int = 90
//    var accuracy = 90
//    var pp: Int = 10
//    var direct: Bool = true
//
//}
import UIKit

class aquatail: basicMove {
    override init(){
        super.init()
        moveName = "アクアテール"
        moveTypeImage = "みず"
        moveType = 3
        category = 1
        moveDamage = 90
        accuracy = 90
        pp = 10
        direct = true
    }
    
}
