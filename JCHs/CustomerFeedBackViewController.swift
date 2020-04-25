//
//  CustomerFeedBackViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/24/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class CustomerFeedBackViewController: UIViewController {

    @IBOutlet weak var thankYouMessage: UILabel!
    
    @IBOutlet weak var navigationFeedback: UITextField!
    @IBOutlet weak var outOfTenFeedback: UITextField!
    @IBOutlet weak var recommendFeedback: UITextField!
    @IBOutlet weak var additionalFeedback: UITextField!
    
    
    var navigationFeedbackArray = [String]()
    var outOfTenFeedbackArray = [Double]()
    var recommendFeedbackArray = [String]()
    var additionalFeedbackArray = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thankYouMessage.text = ""
    }

    
    @IBAction func submitButton(_ sender: UIButton) {
        if navigationFeedback.text! == "" {
            thankYouMessage.text = "Please fill out all areas of questionnaire."
        }; if outOfTenFeedback.text! == "" {
            thankYouMessage.text = "Please fill out all areas of questionnaire."
        }; if recommendFeedback.text! == "" {
            thankYouMessage.text = "Please fill out all areas of questionnaire."
        }; if additionalFeedback.text! == "" {
            thankYouMessage.text = "Please fill out all areas of questionnaire."
        } else {
        thankYouMessage.text = "Thank you for participating in our Customer Feedback system. Information will be kept confidential and used for consumer analysis only."
            let stringNavigationFeedback = navigationFeedback.text!
            navigationFeedbackArray.append(stringNavigationFeedback)
            let doubleOutOfTenFeedback = Double(outOfTenFeedback.text!)
            outOfTenFeedbackArray.append(doubleOutOfTenFeedback!)
            let stringRecommendedFeedback = recommendFeedback.text!
            recommendFeedbackArray.append(stringRecommendedFeedback)
            let stringAdditionalFeedback = additionalFeedback.text!
            additionalFeedbackArray.append(stringAdditionalFeedback)
            navigationFeedback.text = ""
            outOfTenFeedback.text = ""
            recommendFeedback.text = ""
            additionalFeedback.text = ""
    }
    
    
}
}
