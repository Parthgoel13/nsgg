//
//  SkillVC.swift
//  nejnjndjn
//
//  Created by Parth Goel on 17/11/18.
//  Copyright © 2018 Parth Goel. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player:Player!
    @IBOutlet weak var finishBtn: BButton!
    
    @IBOutlet weak var ballerBtn: BButton!
    @IBOutlet weak var Beginnerbtn: BButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        finishBtn.isEnabled = false
    }
    
    @IBAction func beginnerBtn(_ sender: Any) {
        beginnerorballer(chosenoption: "beginner", buttonused: Beginnerbtn)
        ballerBtn.layer.borderColor = UIColor.white.cgColor
        
    }
    
    @IBAction func ballertapped(_ sender: Any) {
        beginnerorballer(chosenoption: "baller", buttonused: ballerBtn)
        Beginnerbtn.layer.borderColor = UIColor.white.cgColor
    }
    func beginnerorballer(chosenoption: String,buttonused: UIButton){
        player.ChosenSkillLevel = chosenoption
        buttonused.layer.borderColor = UIColor.blue.cgColor
        finishBtn.isEnabled = true
    }
    @IBAction func finishtapped(_ sender: Any) {
        performSegue(withIdentifier: "ChosenVCSegue", sender: self)
    }
    
}
