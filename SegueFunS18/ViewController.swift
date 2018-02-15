//
//  ViewController.swift
//  SegueFunS18
//
//  Created by sherriff on 2/14/18.
//  Copyright © 2018 Mark Sherriff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var firstNameField: UITextField!
    
    //MARK: Functions
    
    @IBAction func tapOnScreen(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func saveText(segue: UIStoryboardSegue) {
        
        if let sourceVC = segue.source as? NewSceneViewController, let editedText = sourceVC.secondTextField.text {
            
            firstNameField.text = editedText
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToNewScene") {
            
            let destVC = segue.destination as! UINavigationController
            let targVC = destVC.topViewController as! NewSceneViewController
            
            targVC.secondText = firstNameField.text!
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

