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
    
    @IBOutlet weak var firstNameField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func buttonSolve(_ sender: UIButton) {
        if labelAIBot.text == "Hello. I'm AI               Chatbot, Quincy.                        Let me help you." {
            labelAIBot.text = "Ops! Unfotunately, I'm currently unavailable."
        } else if labelAIBot.text == "Ops! Unfotunately, I'm currently unavailable."{
            labelAIBot.text = "I'll be available with update 1.2.14."
        } else if labelAIBot.text == "I'll be available with update 1.2.14." {
            labelAIBot.text = "Ops! Unfotunately, I'm currently unavailable."
        }
    
    }
}
