//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ely Barros on 03/11/18.
//  Copyright © 2018 Ely. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "Guy with sunglasses"
        }
        
        if emoji == "🇧🇷" {
            definitionLabel.text = "Brazil flag"
        }
        
        if emoji == "😀" {
            definitionLabel.text = "A happy dude"
        }
        
        if emoji == "😛" {
            definitionLabel.text = "Blaaaahhh"
        }
        
        if emoji == "🐹" {
            definitionLabel.text = "Little hamster"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
