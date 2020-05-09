//
//  CheckOutViewController.swift
//  JCHs
//
//  Created by Steven Lu on 5/8/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func myUnwindFunction(unwindSegue: UIStoryboardSegue){
    }
    @IBAction func closeClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
