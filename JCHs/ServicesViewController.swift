//
//  ServicesViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/25/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var firstName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello, \(firstName). We're here to help YOU."

    }


}

