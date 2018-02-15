//
//  NewSceneViewController.swift
//  SegueFunS18
//
//  Created by sherriff on 2/14/18.
//  Copyright © 2018 Mark Sherriff. All rights reserved.
//

import UIKit

class NewSceneViewController: UIViewController {
    
    //MARK: Properties
    var secondText:String = ""
    
    @IBOutlet weak var secondTextField: UITextField!
    
    //MARK: Functions

    override func viewDidLoad() {
        super.viewDidLoad()

        secondTextField.text = secondText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
