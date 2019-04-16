//
//  FreezerViewController.swift
//  PantryApp2
//
//  Created by Courtney Castillo on 4/15/19.
//  Copyright © 2019 Courtney Castillo. All rights reserved.
//

import UIKit

class FreezerViewController: UIViewController {


    @IBOutlet weak var freezerAddItem: UITextField!
    
    @IBAction func keyboardHide(_ sender: Any) {
    freezerAddItem.resignFirstResponder()
    }
    
    @IBAction func freezerListAdd(_ sender: Any) {
        let newItem = freezerAddItem.text
        global.freezerList.append(newItem!)
        freezerAddItem.text = ""
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
