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
    @IBOutlet weak var totalCostView: UITextView!
    
    var arrayChosenInsuranceType : [String] = []
    var arrayChosenInsurancePrice : [Int] = []
    var allInsuranceType = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func addToCartType1Func(_ sender: UIButton) {
        var allInsuranceType = ""
        var totalCost = 0
        arrayChosenInsuranceType.append("COVID-19 Emergency Insurance")
        arrayChosenInsurancePrice.append(15)
        for count in 0...arrayChosenInsuranceType.count-1{
            allInsuranceType = allInsuranceType + "\n \(arrayChosenInsuranceType[count]): $ \(arrayChosenInsurancePrice[count])"
            totalCost = totalCost + arrayChosenInsurancePrice[count]
        }
        cartTextField.text = "\n \(allInsuranceType)"
        totalCostView.text = "$\(totalCost)/month"
    }
    
    
    
    @IBAction func addToCartType2Func(_ sender: UIButton) {
        var allInsuranceType = ""
        var totalCost = 0
        arrayChosenInsuranceType.append("Health Insurance-80% Coverage")
        arrayChosenInsurancePrice.append(60)
        for count in 0...arrayChosenInsuranceType.count-1{
            allInsuranceType = allInsuranceType + "\n \(arrayChosenInsuranceType[count]): $ \(arrayChosenInsurancePrice[count])"
            totalCost = totalCost + arrayChosenInsurancePrice[count]
        }
        cartTextField.text = "\n \(allInsuranceType)"
        totalCostView.text = "$\(totalCost)/month"
    }
    
    
    
    @IBAction func addToCartType3Func(_ sender: UIButton) {
        var allInsuranceType = ""
        var totalCost = 0
        arrayChosenInsuranceType.append("Auto Insurance")
        arrayChosenInsurancePrice.append(80)
        for count in 0...arrayChosenInsuranceType.count-1{
            allInsuranceType = allInsuranceType + "\n \(arrayChosenInsuranceType[count]): $ \(arrayChosenInsurancePrice[count])"
            totalCost = totalCost + arrayChosenInsurancePrice[count]
        }
        cartTextField.text = "\n \(allInsuranceType)"
        totalCostView.text = "$\(totalCost)/month"
    }
    
    
    
    @IBAction func addToCartType4Func(_ sender: UIButton) {
        var allInsuranceType = ""
        var totalCost = 0
        arrayChosenInsuranceType.append("Home Insurance")
        arrayChosenInsurancePrice.append(50)
        for count in 0...arrayChosenInsuranceType.count-1{
            allInsuranceType = allInsuranceType + "\n \(arrayChosenInsuranceType[count]): $ \(arrayChosenInsurancePrice[count])"
            totalCost = totalCost + arrayChosenInsurancePrice[count]
        }
        cartTextField.text = "\n \(allInsuranceType)"
        totalCostView.text = "$\(totalCost)/month"
    }
    
}

