//
//  SecondViewController.swift
//  ToDo-List
//
//  Created by admin on 30/03/17.
//  Copyright © 2017 ACE. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var task: UITextField!
    @IBAction func addTask(_ sender: AnyObject) {
        let itemObjects = UserDefaults.standard.object(forKey: "Items")
        var items:[String]
        if let checkObjects = itemObjects as? [String]{
            items = checkObjects
            items.append(task.text!)
        }
        else {
            items = [task.text!]
        }
        task.text = ""
        UserDefaults.standard.set(items, forKey: "Items")
        print(items)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

