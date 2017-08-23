//
//  ViewController.swift
//  pokemonImage
//
//  Created by Life is Tech on 2016/12/28.
//  Copyright © 2016年 Life is Tech. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var myPokemon: Int = 1
    var enemyPokemon: Int = 0
    var moveNum: Int = 0
    
    var player:pokemonData!
    var enemy:pokemonData!
    var move:pokemonData!
    
    var selectImage: UIImage!
    
    @IBOutlet var moveNameLavel: UILabel!
    @IBOutlet var moveTypeImage: UIImageView!
    @IBOutlet var moveDamage: UILabel!
    
    @IBOutlet var hitPointsLabel: UILabel!
    @IBOutlet var attackLabel: UILabel!
    @IBOutlet var defenseLabel: UILabel!
    @IBOutlet var quickLabel: UILabel!
    @IBOutlet var specialAttackLabel: UILabel!
    @IBOutlet var specialDefenceLabel: UILabel!
    
    @IBOutlet weak var selectImageView: UIImageView!
    
    @IBOutlet weak var typeImage: UIImageView!
    @IBOutlet weak var type2Image: UIImageView!
    
    @IBOutlet var selectPlayer: UISegmentedControl!
    @IBOutlet var selectEnemy: UISegmentedControl!
    @IBOutlet var selectMove: UISegmentedControl!
    
    @IBAction func selectPlayer(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            myPokemon = 1
            break
        case 1:
            myPokemon = 2
            break
        case 2:
            myPokemon = 3
            break
        default:
            break
        }
        
        if ( myPokemon == 1){
            player = husigidane()
        }
        else if ( myPokemon == 2){
            player = hitokage()
        }
        else if ( myPokemon == 3){
            player = zenigame()
        }
        
        selectImageView.image = player.image
        typeImage.image = player.typeImage
        type2Image.image = player.typeImage2
        
        if (moveNum == 0){
            moveNameLavel.text = player.move1.moveName
            moveDamage.text = "\(player.move1.moveDamage)"
            moveTypeImage.image = UIImage(named: "\(player.move1.moveTypeImage)")
        }
        else if (moveNum == 1){
            moveNameLavel.text = player.move2.moveName
            moveDamage.text = "\(player.move2.moveDamage)"
            moveTypeImage.image = UIImage(named: "\(player.move2.moveTypeImage)")
        }
        else if (moveNum == 2){
            moveNameLavel.text = player.move3.moveName
            moveDamage.text = "\(player.move3.moveDamage)"
            moveTypeImage.image = UIImage(named: "\(player.move3.moveTypeImage)")
        }
        else if (moveNum == 3){
            moveNameLavel.text = player.move4.moveName
            moveDamage.text = "\(player.move4.moveDamage)"
            moveTypeImage.image = UIImage(named: "\(player.move4.moveTypeImage)")
        }
        
        
        hitPointsLabel.text = String(player.maxHP)
        attackLabel.text = String(player.attack)
        defenseLabel.text = String(player.defence)
        quickLabel.text = String(player.speed)
        specialAttackLabel.text = String(player.specialAttack)
        specialDefenceLabel.text = String(player.specialDefence)
        
    }
    
    @IBAction func selectEnemy(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            enemyPokemon = 0
            break
        case 1:
            enemyPokemon = 1
            break
        case 2:
            enemyPokemon = 2
            break
        case 3:
            enemyPokemon = 3
            break
        default:
            break
        }
    }
    
    @IBAction func selectMove(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            moveNum = 0
            break
        case 1:
            moveNum = 1
            break
        case 2:
            moveNum = 2
            break
        case 3:
            moveNum = 3
            break
        default:
            break
        }
        if (moveNum == 0){
            moveNameLavel.text = player.move1.moveName
            moveDamage.text = "\(player.move1.moveDamage)"
            moveTypeImage.image = UIImage(named: "\(player.move1.moveTypeImage)")
        }
        else if (moveNum == 1){
            moveNameLavel.text = player.move2.moveName
            moveDamage.text = "\(player.move2.moveDamage)"
            moveTypeImage.image = UIImage(named: "\(player.move2.moveTypeImage)")
        }
        else if (moveNum == 2){
            moveNameLavel.text = player.move3.moveName
            moveDamage.text = "\(player.move3.moveDamage)"
            moveTypeImage.image = UIImage(named: "\(player.move3.moveTypeImage)")
        }
        else if (moveNum == 3){
            moveNameLavel.text = player.move4.moveName
            moveDamage.text = "\(player.move4.moveDamage)"
            moveTypeImage.image = UIImage(named: "\(player.move4.moveTypeImage)")
        }
    }
    func performSegueToBattle() {
        performSegue(withIdentifier: "toBattleView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "toBattleView") {
            
            let BattleView : BattleViewController = segue.destination as! BattleViewController
            
            BattleView.myPokemon = self.myPokemon
            BattleView.enemyPokemon = self.enemyPokemon
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        player = husigidane()
        
        selectImageView.image = player.image
        typeImage.image = player.typeImage
        type2Image.image = player.typeImage2
        
        //let playerMove:  = player.move1()
        moveNameLavel.text = player.move1.moveName
        moveDamage.text = "\(player.move1.moveDamage)"
        moveTypeImage.image = UIImage(named: "\(player.move1.moveTypeImage)")
        
        hitPointsLabel.text = String(player.maxHP)
        attackLabel.text = String(player.attack)
        defenseLabel.text = String(player.defence)
        quickLabel.text = String(player.speed)
        specialAttackLabel.text = String(player.specialAttack)
        specialDefenceLabel.text = String(player.specialDefence)
        
        
        selectPlayer.setTitleTextAttributes(NSDictionary(object: UIFont(name: "PKMN-STRICT", size: 12)!, forKey: NSFontAttributeName as NSCopying) as? [AnyHashable : Any], for: UIControlState.normal)
        selectEnemy.setTitleTextAttributes(NSDictionary(object: UIFont(name: "PKMN-STRICT", size: 12)!, forKey: NSFontAttributeName as NSCopying) as? [AnyHashable : Any], for: UIControlState.normal)
        selectMove.setTitleTextAttributes(NSDictionary(object: UIFont(name: "PKMN-STRICT", size: 12)!, forKey: NSFontAttributeName as NSCopying) as? [AnyHashable : Any], for: UIControlState.normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
// takeda20170325
// WmVL9RxZ
