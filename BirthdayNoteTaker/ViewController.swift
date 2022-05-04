//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Mücahit Alperen Eryılmaz on 27.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            NameResult.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            BirthdayResult.text = "Birthday: \(newBirthday)"
        }
        
        
    }

    @IBOutlet weak var birthdayInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var BirthdayResult: UILabel!
    @IBOutlet weak var NameResult: UILabel!
    
    
    @IBAction func SaveButton(_ sender: UIButton) {
        
        UserDefaults.standard.set(nameInput.text!, forKey: "name")
        UserDefaults.standard.set(birthdayInput.text!, forKey: "birthday")
        
        NameResult.text = "Name: \(nameInput.text!)"
        BirthdayResult.text = "Birthday: \(birthdayInput.text!)"
        
    }
    
    @IBAction func DeleteButton(_ sender: UIButton) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            NameResult.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            BirthdayResult.text = "Birthday: "
        }
    }
    
}

