//
//  LeagueVC.swift
//  nejnjndjn
//
//  Created by Parth Goel on 17/11/18.
//  Copyright © 2018 Parth Goel. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var NextButton: BButton!
    
    @IBOutlet weak var MensBtn: BButton!
    
    @IBOutlet weak var WomensBtn: BButton!
    
    @IBOutlet weak var CoedBtn: BButton!
    
    @IBAction func changeVcTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func unwindfromSkillVC(Backbtn: UIStoryboardSegue)
    {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        NextButton.isEnabled = false
        }
    
    @IBAction func MensOptTapped(_ sender: Any) {
        optionsBtn(LeagueChosen: "mens", Button: MensBtn)
        WomensBtn.layer.borderColor = UIColor.white.cgColor
        CoedBtn.layer.borderColor = UIColor.white.cgColor
        }
    
    @IBAction func WomensOptTapped(_ sender: Any) {
        optionsBtn(LeagueChosen: "womens", Button: WomensBtn)
        MensBtn.layer.borderColor = UIColor.white.cgColor
        CoedBtn.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func CoEdTapped(_ sender: Any) {
        optionsBtn(LeagueChosen: "co-ed", Button: CoedBtn)
        WomensBtn.layer.borderColor = UIColor.white.cgColor
        MensBtn.layer.borderColor = UIColor.white.cgColor
    }
    
    func optionsBtn(LeagueChosen: String,Button: UIButton) {
        player.desiredLeague = LeagueChosen
        Button.layer.borderColor = UIColor.blue.cgColor
        NextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let chosenVc = segue.destination as? chosenVC {
            chosenVc.player = player
        }
    }

}
