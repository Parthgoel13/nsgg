//
//  chosenVC.swift
//  nejnjndjn
//
//  Created by Parth Goel on 17/11/18.
//  Copyright © 2018 Parth Goel. All rights reserved.
//

import UIKit

class chosenVC: UIViewController {
    var player: Player!
    
    @IBOutlet weak var lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        lbl.text = "Chosen League"
        + player.desiredLeague!
      
        

        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
