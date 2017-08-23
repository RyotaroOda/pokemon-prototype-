//
//  basicMove.swift
//  pokemonImage
//
//  Created by 小田　竜太郎 on 2017/03/26.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

import UIKit

class basicMove {
    var moveName: String = ""
    var moveTypeImage: String = ""
    var moveType: Int = 0
    var category: Int = 0
    var moveDamage: Int = 0
    var accuracy: Int = 0
    var pp: Int = 5
    var direct: Bool = false
    var statusUp: Bool = false
    var statusAbnormal: Bool = false
    var statusTransformationPlayer: Bool = false
    var statusTransformationEnemy: Bool = false
    var changeFieldStatus: Bool = false
    var changePlayerFieldStatus: Bool = false
    var changeEnemyFieldStatus: Bool = false
    
    
    var attackRU: Int = 0
    var defenceRU: Int = 0
    var speedRU: Int = 0
    var specialAttackRU: Int = 0
    var specialDefenceRU: Int = 0
    var evasionRU: Int = 0
    var accuracyRU: Int = 0
    var recoverHP: Int = 0 //max回復　100
    var backLash: Int = 0//与ダメージの反動割合
    
    
    var burn: Bool = false
    var freeze: Bool = false
    var paralysis: Bool = false
    var poison: Bool = false
    var badPoison: Bool = false
    var sleep: Bool = false
    var fainting: Bool = false
    
    var burnProbability: Int = 0
    var freezeProbability: Int = 0
    var paralysisProbability: Int = 0
    var poisonProbability: Int = 0
    var badPoisonProbability: Int = 0
    var sleepProbability: Int = 0
    var faintingProbability: Int = 0
    
    
    var curse: Bool = false
    var encore: Bool = false
    var flinch: Bool = false
    var identify: Bool = false
    var infatuation: Bool = false
    var leechSeed: Bool = false
    var mindReader: Bool = false
    var lockOn: Bool = false
    var nightMare: Bool = false
    var partiallyTrapped: Bool = false
    var perishSong: Bool = false
    var torment: Bool = false
    var bind: Bool = false
    
}

