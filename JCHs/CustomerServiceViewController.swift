//
//  CustomerServiceViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/21/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class CustomerServiceViewController: UIViewController {


    @IBOutlet weak var buttonCallUs: UIButton!
    @IBOutlet weak var buttonMessageUs: UIButton!
    @IBOutlet weak var buttonSendUsPhotos: UIButton!
    
    @IBOutlet weak var imageWhiteSpace: UIImageView!
    @IBOutlet weak var imageUnavailable: UIImageView!
    @IBOutlet weak var imageTop: UIImageView!
    @IBOutlet weak var imageMiddle: UIImageView!
    
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
        imageWhiteSpace.image = UIImage(named: "")
    }
    
    @IBAction func buttonMessageUsNull(_ sender: UIButton) {
        imageUnavailable.image = UIImage(named: "15")
        labelUnavailable.text = "Unfortunately, at this time, all our representatives are currently busy assisting other customers. Please try again."
        imageTop.image = UIImage(named: "")
        imageMiddle.image = UIImage(named: "")
        imageWhiteSpace.image = UIImage(named: "")
    }
    
    @IBAction func buttonSendUsPhotos(_ sender: UIButton) {
        imageUnavailable.image = UIImage(named: "15")
        labelUnavailable.text = "Unfortunately, at this time, all our representatives are currently busy assisting other customers. Please try again."
        imageTop.image = UIImage(named: "")
        imageMiddle.image = UIImage(named: "")
        imageWhiteSpace.image = UIImage(named: "")
    }
    
    
    @IBAction func buttonTryAgain(_ sender: UIButton) {
        imageUnavailable.image = UIImage(named: "")
        labelUnavailable.text = ""
        imageTop.image = UIImage(named: "2")
        imageMiddle.image = UIImage(named: "3")
        imageWhiteSpace.image = UIImage(named: "white space")
    }
    
    
    
    
    
    
}
