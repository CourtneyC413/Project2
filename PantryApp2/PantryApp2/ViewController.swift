//
//  ViewController.swift
//  PantryApp2
//
//  Created by Courtney Castillo on 4/15/19.
//  Copyright © 2019 Courtney Castillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var picker: UIPickerView!
    
        var selection:String! = "Pantry"
    
    @IBAction func pantryList(_ sender: Any) {
        if (selection == "Pantry"){
        performSegue(withIdentifier: "pantrySegue", sender: self)
            
        }
        else if (selection == "Fridge"){
        performSegue(withIdentifier: "fridgeSegue", sender: self)
        }
            
        else if (selection == "Freezer"){
        performSegue(withIdentifier: "freezerSegue", sender: self)
        }
    }
    
        let items = ["Pantry", "Fridge", "Freezer"]
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

