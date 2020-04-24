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
        textField.text = "Welcome to our 24/7 customer service agents. With our application, you are able to call us directly, send emails, and document any of your claims through virtual messaging. At JCHs, our goal is to bring joy, be convenient, be helpful, and bring satisfaction while utilizing our application. Feel free to reach out with any comments or concerns."
        
    }
    
    
    
    
    
    
}
