//
//  AIChatBotViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/21/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class AIChatBotViewController: UIViewController {

    @IBOutlet weak var imageAIBot: UIImageView!
    @IBOutlet weak var labelAIBot: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonSolve(_ sender: UIButton) {
        labelAIBot.text = "Ops! Unfortunately, our AI Chat Bot is currently unavailable."
        imageAIBot.image = UIImage(named: "13")
    }
}
