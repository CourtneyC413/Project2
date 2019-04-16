//
//  PantryViewController.swift
//  PantryApp2
//
//  Created by Courtney Castillo on 4/15/19.
//  Copyright © 2019 Courtney Castillo. All rights reserved.
//

import UIKit

class Global{
    var pantryList = [String]()
    var fridgeList = [String]()
    var freezerList = [String]()
}

let global = Global()

class PantryViewController: UIViewController {
    
    @IBAction func keyboardHide(_ sender: Any) {
        pantryAddItem.resignFirstResponder()
    }
    
    @IBOutlet weak var pantryAddItem: UITextField!
    
    
    @IBAction func pantryListAdd(_ sender: UIButton) {
        let newItem = pantryAddItem.text
        global.pantryList.append(newItem!)
        pantryAddItem.text = ""
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
