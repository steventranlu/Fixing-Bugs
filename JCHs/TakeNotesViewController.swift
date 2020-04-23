//
//  TakeNotesViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/23/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class TakeNotesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func cancelBarButton(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
            
        }
    }
    


