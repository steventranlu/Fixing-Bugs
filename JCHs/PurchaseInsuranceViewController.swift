//
//  PurchaseInsuranceViewController.swift
//  JCHs
//
//  Created by Steven Lu on 5/7/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class PurchaseInsuranceViewController: UIViewController {


    @IBOutlet weak var addToCartType1: UIButton!
    @IBOutlet weak var addToCartType2: UIButton!
    @IBOutlet weak var addToCartType3: UIButton!
    @IBOutlet weak var addToCartType4: UIButton!
    
    @IBOutlet weak var cartTextField: UITextView!
    @IBOutlet weak var pricePerPackage: UITextView!
    
    var arrayChosenInsuranceType : [String] = []
    var allInsuranceType = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func addToCartType1Func(_ sender: UIButton) {
        var allInsuranceType = ""
        
        arrayChosenInsuranceType.append("COVID-19 Emergency Insurance")
        
        for count in 0...arrayChosenInsuranceType.count-1{
            allInsuranceType = allInsuranceType + "\n \(arrayChosenInsuranceType[count])"
        }
        
        cartTextField.text = "\n \(allInsuranceType)"
        
    }
    
    
    
    @IBAction func addToCartType2Func(_ sender: UIButton) {
        var allInsuranceType = ""
        
        arrayChosenInsuranceType.append("Health Insurance-80% Coverage")
        
        for count in 0...arrayChosenInsuranceType.count-1{
            allInsuranceType = allInsuranceType + "\n \(arrayChosenInsuranceType[count])"
        }
        
        cartTextField.text = "\(allInsuranceType)"
    }
    
    
    
    @IBAction func addToCartType3Func(_ sender: UIButton) {
        var allInsuranceType = ""
        
        arrayChosenInsuranceType.append("Auto Insurance")
        
        for count in 0...arrayChosenInsuranceType.count-1{
            allInsuranceType = allInsuranceType + "\n \(arrayChosenInsuranceType[count])"
        }
        
        cartTextField.text = "\(allInsuranceType)"
    }
    
    
    
    @IBAction func addToCartType4Func(_ sender: UIButton) {
        var allInsuranceType = ""
        
        arrayChosenInsuranceType.append("Home Insurance")

        for count in 0...arrayChosenInsuranceType.count-1{
            allInsuranceType = allInsuranceType + "\n \(arrayChosenInsuranceType[count])"
        }
        
        cartTextField.text = "\(allInsuranceType)"
    }
    
}
