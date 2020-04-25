//
//  LogInViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/24/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var firstName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func logInButton(_ sender: UIButton) {
        self.firstName = textField.text!
        performSegue(withIdentifier: "SourceVCtoDestinationVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! OptionsViewController
        destination.firstName = self.firstName
    }
    
    
    
}
