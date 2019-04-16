//
//  FridgeViewController.swift
//  PantryApp2
//
//  Created by Courtney Castillo on 4/15/19.
//  Copyright © 2019 Courtney Castillo. All rights reserved.
//

import UIKit

class FridgeViewController: UIViewController {
    
    @IBOutlet weak var fridgeAddItem: UITextField!
    
    @IBAction func keyboardHide(_ sender: Any) {
fridgeAddItem.resignFirstResponder()
    }
    
    
    @IBAction func fridgeListAdd(_ sender: Any) {
        let newItem = fridgeAddItem.text
        global.fridgeList.append(newItem!)
        fridgeAddItem.text = ""
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
