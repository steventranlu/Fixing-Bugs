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
        imageAIBot.image = UIImage(named: "")
        labelAIBot.text = ""
    }
    
    
    @IBAction func buttonSolve(_ sender: UIButton) {
        if labelAIBot.text == "" {
            imageAIBot.image = UIImage(named: "13")
            labelAIBot.text = "Ops. Unfotunately, our AI Chat Bot is currently unavailable."
        } else if labelAIBot.text == "Ops. Unfotunately, our AI Chat Bot is currently unavailable."{
            imageAIBot.image = UIImage(named: "13")
            labelAIBot.text = "Available with update 1.2.14."
        } else if labelAIBot.text == "Available with update 1.2.14." {
            imageAIBot.image = UIImage(named: "13")
            labelAIBot.text = "Ops. Unfotunately, our AI Chat Bot is currently unavailable."
        }
    
    }
}
