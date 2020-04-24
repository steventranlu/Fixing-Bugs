//
//  CustomerServiceViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/21/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class CustomerServiceViewController: UIViewController {


    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var buttonCallUs: UIButton!
    @IBOutlet weak var buttonMessageUs: UIButton!
    @IBOutlet weak var buttonSendUsPhotos: UIButton!
    
    @IBOutlet weak var imageUnavailable: UIImageView!
    @IBOutlet weak var imageTop: UIImageView!
    @IBOutlet weak var imageMiddle: UIImageView!
    @IBOutlet weak var imageBottom: UIImageView!
    @IBOutlet weak var imageFour: UIImageView!
    
    @IBOutlet weak var labelUnavailable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageUnavailable.image = UIImage(named: "")
        labelUnavailable.text = ""
        
    }

    @IBAction func buttonCallUsNull(_ sender: UIButton) {
        imageUnavailable.image = UIImage(named: "15")
        labelUnavailable.text = "Unfortunately, at this time, all our representatives are currently busy assisting other customers. Please try again."
        imageTop.image = UIImage(named: "")
        imageMiddle.image = UIImage(named: "")
        imageBottom.image = UIImage(named: "")
        imageFour.image = UIImage(named: "")
        textField.text = ""

    }
    
    @IBAction func buttonMessageUsNull(_ sender: UIButton) {
        imageUnavailable.image = UIImage(named: "15")
        labelUnavailable.text = "Unfortunately, at this time, all our representatives are currently busy assisting other customers. Please try again."
        imageTop.image = UIImage(named: "")
        imageMiddle.image = UIImage(named: "")
        imageBottom.image = UIImage(named: "")
        imageFour.image = UIImage(named: "")
        textField.text = ""
    }
    
    @IBAction func buttonSendUsPhotos(_ sender: UIButton) {
        imageUnavailable.image = UIImage(named: "15")
        labelUnavailable.text = "Unfortunately, at this time, all our representatives are currently busy assisting other customers. Please try again."
        imageTop.image = UIImage(named: "")
        imageMiddle.image = UIImage(named: "")
        imageBottom.image = UIImage(named: "")
        imageFour.image = UIImage(named: "")
        textField.text = ""
    }
    
    
    @IBAction func buttonTryAgain(_ sender: UIButton) {
        imageUnavailable.image = UIImage(named: "")
        labelUnavailable.text = ""
        imageTop.image = UIImage(named: "2")
        imageMiddle.image = UIImage(named: "3")
        imageBottom.image = UIImage(named: "4")
        imageFour.image = UIImage(named: "22")
        textField.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        
    }
    
    
    
    
    
    
}
