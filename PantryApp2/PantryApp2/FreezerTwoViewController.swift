//
//  FreezerTwoViewController.swift
//  PantryApp2
//
//  Created by Courtney Castillo on 4/15/19.
//  Copyright © 2019 Courtney Castillo. All rights reserved.
//

import UIKit

class FreezerTwoViewController: UIViewController {

    @IBOutlet weak var freezerListPrint: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        for (index, _) in global.freezerList.enumerated() {
            freezerListPrint.text? += "\n\(global.freezerList[index])"
            
        }
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
