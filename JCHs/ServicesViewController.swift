//
//  ServicesViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/25/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {

    @IBOutlet weak var welcomeLabel2: UILabel!
    
    var firstName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel2.text = "Hello, \(firstName). We're here to help YOU."

    }


}

