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
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    var firstName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = "First Name"
        usernameTextField.text = "Username"
        passwordTextField.text = "Password"
        emailTextField.text = "Email"
        
    }
    

    

    @IBAction func logInButton(_ sender: UIButton) {
        self.firstName = textField.text!
        performSegue(withIdentifier: "SourceVCtoDestinationVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ServicesViewController
        destination.firstName = self.firstName
    }
    
    
    
}
