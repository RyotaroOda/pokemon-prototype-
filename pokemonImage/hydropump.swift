//
//  hydropump.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

//import UIKit
//
//class hydropump: NSObject {
//    var moveName: String = "ハイドロポンプ"
//    var moveTypeImage: String = "みず"
//    var moveType: Int = 4
//    var category: Int = 2
//    var moveDamage: Int = 110
//    var accuracy = 80
//    var pp: Int = 5
//    var direct: Bool = false
//    var statusUp: Bool = false
//
//}

import UIKit

class hydropump: basicMove {
    override init(){
        super.init()
        moveName = "ハイドロポンプ"
        moveTypeImage = "みず"
        moveType = 3
        category = 2
        moveDamage = 110
        accuracy = 80
        pp = 5
        direct = false
        statusUp = false
        
    }
    
}
