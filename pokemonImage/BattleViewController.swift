//
//  BattleViewController.swift
//  pokemonImage
//
//  Created by Life is Tech on 2016/12/28.
//  Copyright © 2016年 Life is Tech. All rights reserved.
//

import UIKit
import AVFoundation
/*
 protocol pokemonData {
 
 var name: String {get set}
 var type: Int {get set}
 var type2: Int {get set}
 var typeImage: UIImage! {get set}
 var typeImage2: UIImage! {get set}
 var image: UIImage! {get set}
 
 var maxHP: Int {get set}
 var currentHP: Int {get set}
 var attack:Int {get set}
 var defence: Int {get set}
 var speed: Int {get set}
 var specialAttack: Int {get set}
 var specialDefence: Int {get set}
 var level: Int {get set}
 
 var move1Name: String {get set}
 var move2Name: String {get set}
 var move3Name: String {get set}
 var move4Name: String {get set}
 
 var move1Type: Int {get set}
 var move2Type: Int {get set}
 var move3Type: Int {get set}
 var move4Type: Int {get set}
 
 var move1TypeImage: String {get set}
 var move2TypeImage: String {get set}
 var move3TypeImage: String {get set}
 var move4TypeImage: String {get set}
 
 var move1pp: Int {get set}
 var move2pp: Int {get set}
 var move3pp: Int {get set}
 var move4pp: Int {get set}
 
 var move1Damage: Int {get set}
 var move2Damage: Int {get set}
 var move3Damage: Int {get set}
 var move4Damage: Int {get set}
 
 init(name:String, imageName:String)
 init()
 
 }
 
 */
class BattleViewController: UIViewController {
    
    var myPokemon: Int = 0
    var enemyPokemon: Int = 3
    
    var damage: Int = 0
    var damageA: Int = 22
    var damageB: Int = 0
    var damageCounter: Int = 0
    var randomDamege:Int = 0
    var randomMove:Int = 0
    var critical: Int = 0
    var missProbability: Int = 0
    var successProbability: Int = 0
    var priorityPlayer: Bool = false
    var priorityEnemy: Bool = false
    var succesAttack:Bool = false
    
    var rankSupport: Float = 0
    var attackRank: Int = 0
    var defenceRank: Int = 0
    var speedRank: Int = 0
    var specialAttackRank: Int = 0
    var specialDefenceRank: Int = 0
    var evasionRank: Int = 0
    var accuracyRank: Int = 0
    
    var player:pokemonData!
    var enemy:pokemonData!
    var playerMove:basicMove!
    var enemyMove:basicMove!
    var attackerMove:basicMove!
    
    var attacker:pokemonData!
    var defencer:pokemonData!
    
    var timer : Timer!
    
    var audioPlayer1: AVAudioPlayer!
    var audioPlayer2: AVAudioPlayer!
    var audioPlayer3: AVAudioPlayer!
    var audioPlayer4: AVAudioPlayer!
    var audioPlayer5: AVAudioPlayer!
    var audioPlayer6: AVAudioPlayer!
    
    @IBOutlet weak var move1: UIButton!
    @IBOutlet weak var move2: UIButton!
    @IBOutlet weak var move3: UIButton!
    @IBOutlet weak var move4: UIButton!
    
    @IBOutlet var move1TypeImage: UIImageView!
    @IBOutlet var move2TypeImage: UIImageView!
    @IBOutlet var move3TypeImage: UIImageView!
    @IBOutlet var move4TypeImage: UIImageView!
    
    @IBOutlet var move1Name: UILabel!
    @IBOutlet var move2Name: UILabel!
    @IBOutlet var move3Name: UILabel!
    @IBOutlet var move4Name: UILabel!
    
    @IBOutlet var move1PP: UILabel!
    @IBOutlet var move2PP: UILabel!
    @IBOutlet var move3PP: UILabel!
    @IBOutlet var move4PP: UILabel!
    
    var move1CurrentPP: Int = 0
    var move2CurrentPP: Int = 0
    var move3CurrentPP: Int = 0
    var move4CurrentPP: Int = 0
    
    @IBOutlet weak var myPokemonName: UILabel!
    @IBOutlet weak var enemyPokemonName: UILabel!
    @IBOutlet weak var playerLevel: UILabel!
    @IBOutlet weak var enemyLevel: UILabel!
    @IBOutlet weak var maxHPLabel: UILabel!
    @IBOutlet weak var currentHPLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var myPokemonImage: UIImageView!
    @IBOutlet weak var enemyPokemonImage: UIImageView!
    
    @IBOutlet weak var enemyHPBar: UIProgressView!
    @IBOutlet weak var playerHPBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (myPokemon == 1){
            player = husigidane()
        }
        else if (myPokemon == 2){
            player = hitokage()
        }
        else if (myPokemon == 3){
            player = zenigame()
        }
        
        if (enemyPokemon == 0){
            enemyPokemon = Int(arc4random_uniform(3)) + 1
        }
        
        if (enemyPokemon == 1){
            enemy = husigidane()
        }
        else if (enemyPokemon == 2){
            enemy = hitokage()
        }
            
        else if (enemyPokemon == 3){
            enemy = zenigame()
        }
        
        myPokemonName.text = player.name
        enemyPokemonName.text = enemy.name
        
        myPokemonImage.image = player.image
        enemyPokemonImage.image = enemy.image
        
        playerHPBar.progress = Float(player.currentHP/player.maxHP)
        enemyHPBar.progress = Float(enemy.currentHP/enemy.maxHP)
        
        playerLevel.text = "\(player.level)"
        enemyLevel.text = "\(enemy.level)"
        maxHPLabel.text = "\(player.maxHP)"
        currentHPLabel.text = "\(player.currentHP)"
        
        messageLabel.text = "\(player.name)はどうする？"
        
        move1TypeImage.image = UIImage(named: "\(player.move1.moveTypeImage)")
        move2TypeImage.image = UIImage(named: "\(player.move2.moveTypeImage)")
        move3TypeImage.image = UIImage(named: "\(player.move3.moveTypeImage)")
        move4TypeImage.image = UIImage(named: "\(player.move4.moveTypeImage)")
        
        move1Name.text = player.move1.moveName
        move2Name.text = player.move2.moveName
        move3Name.text = player.move3.moveName
        move4Name.text = player.move4.moveName
        
        move1CurrentPP = player.move1.pp
        move2CurrentPP = player.move2.pp
        move3CurrentPP = player.move3.pp
        move4CurrentPP = player.move4.pp
        move1PP.text = "\(player.move1.pp)/\(player.move1.pp)"
        move2PP.text = "\(player.move2.pp)/\(player.move2.pp)"
        move3PP.text = "\(player.move3.pp)/\(player.move3.pp)"
        move4PP.text = "\(player.move4.pp)/\(player.move4.pp)"
        
        let soundFilePath1 = Bundle.main.path(forResource: "ばつぐん", ofType: "wav")
        let soundFilePath2 = Bundle.main.path(forResource: "通常攻撃", ofType: "wav")
        let soundFilePath3 = Bundle.main.path(forResource: "いまひとつ", ofType: "wav")
        let soundFilePath4 = Bundle.main.path(forResource: "決定", ofType: "mp3")
        let soundFilePath5 = Bundle.main.path(forResource: "決定不可", ofType: "wav")
        let soundFilePath6 = Bundle.main.path(forResource: "戦闘不能", ofType: "wav")
        
        let fileURL1 = URL(fileURLWithPath:soundFilePath1!)
        let fileURL2 = URL(fileURLWithPath:soundFilePath2!)
        let fileURL3 = URL(fileURLWithPath:soundFilePath3!)
        let fileURL4 = URL(fileURLWithPath:soundFilePath4!)
        let fileURL5 = URL(fileURLWithPath:soundFilePath5!)
        let fileURL6 = URL(fileURLWithPath:soundFilePath6!)
        
        do{
        audioPlayer1 = try AVAudioPlayer(contentsOf: fileURL1)
        audioPlayer2 = try AVAudioPlayer(contentsOf: fileURL2)
        audioPlayer3 = try AVAudioPlayer(contentsOf: fileURL3)
        audioPlayer4 = try AVAudioPlayer(contentsOf: fileURL4)
        audioPlayer5 = try AVAudioPlayer(contentsOf: fileURL5)
        audioPlayer6 = try AVAudioPlayer(contentsOf: fileURL6)
        }catch{
    print("音楽ファイルが読み込めませんでした")
    }

    }

    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    func playerAction(){
        if (playerMove.category == 1 || playerMove.category  == 2){
            TechDraUtil.animateDamage(enemyPokemonImage)
            TechDraUtil.playSE(fileName: "SE_attack")
            self.messageLabel.text = "\(self.player.name)の\(self.playerMove.moveName)！"
        }
        else{
            self.messageLabel.text = "\(self.playerMove.moveName)！"
        }
        attacker = player
        defencer = enemy
        attackerMove = playerMove
        calculationDamage()
        enemyHPBar.setProgress(Float(defencer.currentHP)/Float(defencer.maxHP), animated: true)
        if Float(defencer.currentHP) / Float(defencer.maxHP) * 100 < 20 {
            enemyHPBar.progressTintColor = UIColor.red
        }
        else if Float(defencer.currentHP) / Float(defencer.maxHP) * 100 < 50 {
            enemyHPBar.progressTintColor = UIColor.orange
        }
        
    }
    func enemyAction(){
        if (enemyMove.category == 1 || enemyMove.category  == 2){
            TechDraUtil.animateDamage(myPokemonImage)
            TechDraUtil.playSE(fileName: "SE_attack")
            self.messageLabel.text = "あいての\(self.enemy.name)の\(self.enemyMove.moveName)！"
        }
        else{
            self.messageLabel.text = "\(self.enemyMove.moveName)！"
        }
        attacker = enemy
        defencer = player
        attackerMove = enemyMove
        calculationDamage()
        playerHPBar.setProgress(Float(defencer.currentHP)/Float(defencer.maxHP), animated: true)
        currentHPLabel.text = "\(player.currentHP)"
        if player.currentHP < 0 {
            currentHPLabel.text = "0"
        }
        if Float(defencer.currentHP) / Float(defencer.maxHP) * 100 < 20 {
            playerHPBar.progressTintColor = UIColor.red
        }
        else if Float(defencer.currentHP) / Float(defencer.maxHP) * 100 < 50 {
            playerHPBar.progressTintColor = UIColor.orange
        }
        
    }
    func moveAction(){
        self.randomMove = Int(arc4random_uniform(3)) + 1
        if self.randomMove == 1 {
            self.enemyMove = self.enemy.move1
        }
        else if self.randomMove == 2 {
            self.enemyMove = self.enemy.move2
        }
        else if self.randomMove == 3 {
            self.enemyMove = self.enemy.move3
        }
        else if self.randomMove == 4 {
            self.enemyMove = self.enemy.move4
        }
        
        self.move1.isEnabled = false
        self.move2.isEnabled = false
        self.move3.isEnabled = false
        self.move4.isEnabled = false
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if (self.enemy.speed > self.player.speed){
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.enemyAction()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        self.damageMessage()
                        if self.player.currentHP <= 0 {
                            TechDraUtil.animateVanish(self.myPokemonImage)
                            self.finishBattle(winPlayer:false)
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            self.messageLabel.text = "\(self.player.name)は　たおれた！"
                                self.audioPlayer6.play()
                            }
                        }else{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                self.playerAction()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    self.damageMessage()
                                    if self.enemy.currentHP <= 0 {
                                        TechDraUtil.animateVanish(self.enemyPokemonImage)
                                        self.finishBattle(winPlayer:true)
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        self.messageLabel.text = "あいての　\(self.enemy.name)は　たおれた！"
                                            self.audioPlayer6.play()
                                        }
                                    }else{
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                            self.messageLabel.text = "\(self.player.name)は　どうする？"
                                            self.move1.isEnabled = true
                                            self.move2.isEnabled = true
                                            self.move3.isEnabled = true
                                            self.move4.isEnabled = true
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }else{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.playerAction()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        self.damageMessage()
                        if self.enemy.currentHP <= 0 {
                            TechDraUtil.animateVanish(self.enemyPokemonImage)
                            self.finishBattle(winPlayer:true)
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                self.messageLabel.text = "あいての　\(self.enemy.name)は　たおれた！"
                                self.audioPlayer6.play()
                            }
                        }else{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                self.enemyAction()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    self.damageMessage()
                                    if self.player.currentHP <= 0 {
                                        TechDraUtil.animateVanish(self.myPokemonImage)
                                        self.finishBattle(winPlayer:false)
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                            self.messageLabel.text = "\(self.player.name)は　たおれた！"
                                            self.audioPlayer6.play()
                                        }
                                    }else{
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                            self.messageLabel.text = "\(self.player.name)はどうする？"
                                            self.move1.isEnabled = true
                                            self.move2.isEnabled = true
                                            self.move3.isEnabled = true
                                            self.move4.isEnabled = true
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    func decisionPriority(){
        //            rankSupport = Float(accuracyRank - evasionRank)
        //            if (rankSupport >= 6){
        //                rankSupport = 6
        //            }
        //            else if(rankSupport <= -6){
        //                rankSupport = -6
        //            }
        //
        //            if (rankSupport >= 0){
        //                rankSupport = 3 + rankSupport
        //                rankSupport = 3 / rankSupport
        //            }
        //            else if (rankSupport <= 0){
        //                rankSupport = 3 + rankSupport
        //                rankSupport = rankSupport / 3
        //            }
        //            successProbability = attackerMove.accuracy * Int(rankSupport)
        //            missProbability = Int(arc4random_uniform(100))
        //            if( missProbability >= successProbability){
        //                messageLabel.text = "しかし\(attacker.name)のこうげきははずれた！"
        //            }
        //            else{
        
    }
    
    @IBAction func move1(sender:AnyObject){
        self.audioPlayer4.play()
        playerMove = player.move1
        move1CurrentPP -= 1
        move1PP.text = "\(move1CurrentPP)/\(player.move1.pp)"
        moveAction()
        
    }
    @IBAction func move2(sender:AnyObject){
        self.audioPlayer4.play()
        playerMove = player.move2
        move2CurrentPP -= 1
        move2PP.text = "\(move2CurrentPP)/\(player.move2.pp)"
        moveAction()
    }
    
    @IBAction func move3(sender:AnyObject){
        self.audioPlayer4.play()
        playerMove = player.move3
        move3CurrentPP -= 1
        move3PP.text = "\(move3CurrentPP)/\(player.move3.pp)"
        moveAction()
        
    }
    @IBAction func move4(sender:AnyObject){
        self.audioPlayer4.play()
        playerMove = player.move4
        move4CurrentPP -= 1
        move4PP.text = "\(move4CurrentPP)/\(player.move4.pp)"
        moveAction()
    }
    // num += 1    num = num + 1
    func calculationDamage(){
        if(attackerMove.category == 1 || attackerMove.category == 2){
            damageA = Int(Float(attacker.level) * 2 / 5 )
            damageA += 2
            damageB = Int(Float(damageA) * Float(attackerMove.moveDamage) * Float(attacker.attack) / Float(defencer.defence))
            damage = damageB / 50 + 2
            randomDamege = Int(arc4random_uniform(16))
            randomDamege = 100 - randomDamege
            damage = Int(damage * randomDamege / 100 )
            
            if defencer.type == 1 || defencer.type2 == 1{
                if attackerMove.moveType == 7{
                    damage = damage * 2
                    damageCounter -= 1
                }
                else if attackerMove.moveType == 14 {
                    damage = 0
                    damageCounter = 10
                }
                else{
                }
            }
            if defencer.type == 2 || defencer.type2 == 2{
                if attackerMove.moveType == 3 || attackerMove.moveType == 9 || attackerMove.moveType == 13 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType ==  2 || attackerMove.moveType == 5 || attackerMove.moveType == 6 || attackerMove.moveType == 12 || attackerMove.moveType == 17 || attackerMove.moveType == 18 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 3 || defencer.type2 == 3{
                if attackerMove.moveType == 4 || attackerMove.moveType == 5 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 2 || attackerMove.moveType == 3 || attackerMove.moveType == 6 || attackerMove.moveType == 17{
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 4 || defencer.type2 == 4{
                if attackerMove.moveType == 9{
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 4 || attackerMove.moveType == 10 || attackerMove.moveType == 17{
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 5 || defencer.type2 == 5{
                if attackerMove.moveType == 2 || attackerMove.moveType == 6 || attackerMove.moveType == 8 || attackerMove.moveType == 10 || attackerMove.moveType == 12 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 3 || attackerMove.moveType == 4 || attackerMove.moveType == 5 || attackerMove.moveType == 9 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 6 || defencer.type2 == 6{
                if attackerMove.moveType == 2 || attackerMove.moveType == 7 || attackerMove.moveType == 13 || attackerMove.moveType == 17 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 6 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 7 || defencer.type2 == 7{
                if attackerMove.moveType == 10 || attackerMove.moveType == 11 || attackerMove.moveType == 18 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 12 || attackerMove.moveType == 13 || attackerMove.moveType == 16 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 8 || defencer.type2 == 8{
                if attackerMove.moveType == 9 || attackerMove.moveType == 11{
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 5 || attackerMove.moveType == 7 || attackerMove.moveType == 8 || attackerMove.moveType == 12 || attackerMove.moveType == 18{
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 9 || defencer.type2 == 9{
                if attackerMove.moveType == 3 || attackerMove.moveType == 5 || attackerMove.moveType == 6 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 8 || attackerMove.moveType == 13 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else if attackerMove.moveType == 4 {
                    damage = 0
                    damageCounter = 10
                }
                else{
                }
            }
            if defencer.type == 10 || defencer.type2 == 10{
                if attackerMove.moveType == 4 || attackerMove.moveType == 6 || attackerMove.moveType == 13{
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 5 || attackerMove.moveType == 7 || attackerMove.moveType == 12 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 11 || defencer.type2 == 11{
                if attackerMove.moveType == 12 || attackerMove.moveType == 14 || attackerMove.moveType == 16 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 7 || attackerMove.moveType == 11  {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 12 || defencer.type2 == 12{
                if attackerMove.moveType == 2 || attackerMove.moveType == 10 || attackerMove.moveType == 13 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 5 || attackerMove.moveType == 7 || attackerMove.moveType == 9  {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 13 || defencer.type2 == 13{
                if attackerMove.moveType == 3 || attackerMove.moveType == 5 || attackerMove.moveType == 7 || attackerMove.moveType == 9 || attackerMove.moveType == 17 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 1 || attackerMove.moveType == 2 || attackerMove.moveType == 8 || attackerMove.moveType == 10 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 14 || defencer.type2 == 14{
                if attackerMove.moveType == 14 || attackerMove.moveType == 16 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 8 || attackerMove.moveType == 12 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else if attackerMove.moveType == 1 || attackerMove.moveType == 7 {
                    damage = 0
                    damageCounter = 10
                }
                else{
                }
            }
            if defencer.type == 15 || defencer.type2 == 15{
                if attackerMove.moveType == 6 || attackerMove.moveType == 15 || attackerMove.moveType == 18 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 2 || attackerMove.moveType == 3 || attackerMove.moveType == 4 || attackerMove.moveType == 5 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else{
                }
            }
            if defencer.type == 16 || defencer.type2 == 16{
                if attackerMove.moveType == 7 || attackerMove.moveType == 12 || attackerMove.moveType == 18 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 14 || attackerMove.moveType == 16 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else if attackerMove.moveType == 11 {
                    damage = 0
                    damageCounter = 10
                }
                else{
                }
            }
            if defencer.type == 17 || defencer.type2 == 17{
                if attackerMove.moveType == 2 || attackerMove.moveType == 7 || attackerMove.moveType == 9 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 1 || attackerMove.moveType == 5 || attackerMove.moveType == 6 || attackerMove.moveType == 10 || attackerMove.moveType == 11 || attackerMove.moveType == 12 || attackerMove.moveType == 13 || attackerMove.moveType == 15 || attackerMove.moveType == 17 || attackerMove.moveType == 18 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else if attackerMove.moveType == 7 {
                    damage = 0
                    damageCounter = 10
                }
                else{
                }
            }
            if defencer.type == 18 || defencer.type2 == 18{
                if attackerMove.moveType == 8 || attackerMove.moveType == 17 {
                    damage = damage * 2
                    damageCounter += 1
                }
                else if attackerMove.moveType == 7 || attackerMove.moveType == 12 || attackerMove.moveType == 16 {
                    damage = damage / 2
                    damageCounter -= 1
                }
                else if attackerMove.moveType == 15 {
                    damage = 0
                    damageCounter = 10
                }
                else{
                }
            }
            
            if attackerMove.moveType == attacker.type || playerMove.moveType == player.type2{
                damage = Int(Float(damage) * 1.5)
            }
            critical = Int(arc4random_uniform(16))
            if self.critical == 7 {
                self.damage = Int(Float(self.damage) * 1.5)
            }
            
            if self.damageCounter == 9 || self.damageCounter == 10 || self.damageCounter == 11{
                damage = 0
            }
            defencer.currentHP -= damage
            damage = 0
        }
        else{
        }
        
    }
    
    func damageMessage(){
        if self.damageCounter == 99 || damageCounter == 0 {
            
        }
        else if self.damageCounter == 9 || self.damageCounter == 10 || self.damageCounter == 11{
            self.messageLabel.text = "\(self.defencer.name)にはこうかがないようだ..."
        }
        else if self.damageCounter >= 1 {
            audioPlayer1.play()
            self.messageLabel.text = "こうかは　ばつぐんだ！"
        }
        else if self.damageCounter <= -1 {
            audioPlayer3.play()
            self.messageLabel.text = "こうかはいまひとつようだ..."
        }
       else if succesAttack == true {
            messageLabel.text = "しかし\(attacker.name)のこうげきははずれた！"
        }
        else{
            audioPlayer2.play()
        }
       if self.critical == 7 {
            self.messageLabel.text = "きゅうしょにあたった！"
        }
        self.damageCounter = 0
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func finishBattle(winPlayer:Bool){
        TechDraUtil.stopBGM()
        
        let finishedMessage:String
        if winPlayer == true {
            TechDraUtil.playSE(fileName: "SE_fanfare")
            finishedMessage = "プレイヤーの勝利"
        }else{
            TechDraUtil.playSE(fileName: "SE_gameover")
            finishedMessage = "プレイヤーの敗北"
        }
        
        let alert = UIAlertController(title: "バトル終了！", message: finishedMessage, preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in self.dismiss(animated: true, completion: nil)
        })
        alert.addAction(action)
        
        self.present(alert,animated: true, completion: nil)
        
    }

}
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    //[{ ( 2 * 攻撃側のレベル ) / 5 + 2 } * 技の威力 * 攻撃力 / 防御力 / 50 + 2] * (0.85 ~ 1.00)
    // *2    *8192/4096
    // *1.5  *6144
    // *1.2  *4915
    // *0.5  *2048
    //{ ( 2 * 攻撃側のレベル ) / 5 + 2 } = A (切り捨て)
    //
    //( A * 技の威力 * 攻撃力 / 防御力 ) = B (切り捨て)
    //
    //B / 50 + 2 = C (切り捨て)
    //とくこうを半減するパターン
    //とくこう = 91 * 2048 / 4096 = 45.5 (四捨五入) = 46
    /*ランク補正
     ランク：倍率(概数)
     -6：3/9(0.33)
     -5：3/8(0.38)
     -4：3/7(0.43)
     -3：3/6(0.5)
     -2：3/5(0.6)
     -1：3/4(0.75)
     0：3/3(1.0)
     1：4/3(1.33)
     2：5/3(1.67)
     3：6/3(2)
     4：7/3(2.33)
     5：8/3(2.67)
     6：9/3(3.0)*/
//if defencer.type == 1 || defencer.type2 == 1{
//    if attackerMove.moveType == 13 || attackerMove.moveType == 17{
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else if attackerMove.moveType == 14 {
//        damage = 0
//        damageCounter = 10
//    }
//    else{
//    }
//}
//if defencer.type == 2 || defencer.type2 == 2{
//    if attackerMove.moveType == 5 || attackerMove.moveType == 6 || attackerMove.moveType == 12 || attackerMove.moveType == 17{
//        damage = damage * 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType ==  2 || attackerMove.moveType == 3 || attackerMove.moveType == 13 || attackerMove.moveType == 15{
//        damage = damage / 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 3 || defencer.type2 == 3{
//    if attackerMove.moveType == 2 || attackerMove.moveType == 9 || attackerMove.moveType == 13{
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 3 || attackerMove.moveType == 5 || attackerMove.moveType == 15{
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 4 || defencer.type2 == 4{
//    if attackerMove.moveType == 3 || attackerMove.moveType == 10{
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 4 || attackerMove.moveType == 5 || attackerMove.moveType == 15{
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else if attackerMove.moveType == 9{
//        damage = 0
//        damageCounter = 10
//    }
//    else{
//    }
//}
//if defencer.type == 5 || defencer.type2 == 5{
//    if attackerMove.moveType == 3 || attackerMove.moveType == 9 || attackerMove.moveType == 13{
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 2 || attackerMove.moveType == 5 || attackerMove.moveType == 8 || attackerMove.moveType == 10 || attackerMove.moveType == 12 || attackerMove.moveType == 15 || attackerMove.moveType == 17{
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 6 || defencer.type2 == 6{
//    if attackerMove.moveType == 5 || attackerMove.moveType == 9 || attackerMove.moveType == 10 || attackerMove.moveType == 15{
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 2 || attackerMove.moveType == 3 || attackerMove.moveType == 6 || attackerMove.moveType == 17{
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 7 || defencer.type2 == 7{
//    if attackerMove.moveType == 1 || attackerMove.moveType == 6 || attackerMove.moveType == 13 || attackerMove.moveType == 16 || attackerMove.moveType == 17{
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 8 || attackerMove.moveType == 10 || attackerMove.moveType == 11 || attackerMove.moveType == 12 || attackerMove.moveType == 18 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else if attackerMove.moveType == 14 {
//        damage = 0
//        damageCounter = 10
//    }
//    else{
//    }
//}
//if defencer.type == 8 || defencer.type2 == 8{
//    if attackerMove.moveType == 5 || attackerMove.moveType == 18{
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 8 || attackerMove.moveType == 9 || attackerMove.moveType == 13 || attackerMove.moveType == 14{
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else if attackerMove.moveType == 17 {
//        damage = 0
//        damageCounter = 10
//    }
//    else{
//    }
//}
//if defencer.type == 9 || defencer.type2 == 9{
//    if attackerMove.moveType == 2 || attackerMove.moveType == 4 || attackerMove.moveType == 8 || attackerMove.moveType == 13 || attackerMove.moveType == 17{
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 5 || attackerMove.moveType == 12 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 10 || defencer.type2 == 10{
//    if attackerMove.moveType == 5 || attackerMove.moveType == 7 || attackerMove.moveType == 12{
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 4 || attackerMove.moveType == 13 || attackerMove.moveType == 17 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 11 || defencer.type2 == 11{
//    if attackerMove.moveType == 7 || attackerMove.moveType == 8 {
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 11 || attackerMove.moveType == 17  {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else if attackerMove.moveType == 16 {
//        damage = 0
//        damageCounter = 10
//    }
//    else{
//    }
//}
//if defencer.type == 12 || defencer.type2 == 12{
//    if attackerMove.moveType == 5 || attackerMove.moveType == 11 || attackerMove.moveType == 16 {
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 2 || attackerMove.moveType == 7 || attackerMove.moveType == 8 || attackerMove.moveType == 10 || attackerMove.moveType == 14 || attackerMove.moveType == 17 || attackerMove.moveType == 18 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 13 || defencer.type2 == 13{
//    if attackerMove.moveType == 2 || attackerMove.moveType == 6 || attackerMove.moveType == 10 || attackerMove.moveType == 12 {
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 8 || attackerMove.moveType == 9 || attackerMove.moveType == 17 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 14 || defencer.type2 == 14{
//    if attackerMove.moveType == 11 || attackerMove.moveType == 14 {
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 16 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else if attackerMove.moveType == 1 {
//        damage = 0
//        damageCounter = 10
//    }
//    else{
//    }
//}
//if defencer.type == 15 || defencer.type2 == 15{
//    if attackerMove.moveType == 15 {
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 17 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else if attackerMove.moveType == 18 {
//        damage = 0
//        damageCounter = 10
//    }
//    else{
//    }
//}
//if defencer.type == 16 || defencer.type2 == 16{
//    if attackerMove.moveType == 11 || attackerMove.moveType == 14 {
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 7 || attackerMove.moveType == 16 || attackerMove.moveType == 18 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 17 || defencer.type2 == 17{
//    if attackerMove.moveType == 6 || attackerMove.moveType == 13 || attackerMove.moveType == 18 {
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 2 || attackerMove.moveType == 3 || attackerMove.moveType == 4 || attackerMove.moveType == 17 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}
//if defencer.type == 18 || defencer.type2 == 18{
//    if attackerMove.moveType == 7 || attackerMove.moveType == 15 || attackerMove.moveType == 16 {
//        damage = damage / 2
//        damageCounter += 1
//    }
//    else if attackerMove.moveType == 2 || attackerMove.moveType == 8 || attackerMove.moveType == 17 {
//        damage = damage * 2
//        damageCounter -= 1
//    }
//    else{
//    }
//}

