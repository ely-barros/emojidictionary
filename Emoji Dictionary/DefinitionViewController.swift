//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ely Barros on 03/11/18.
//  Copyright © 2018 Ely. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthLabel.text = "Birth: \(emoji.birth)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = "\(emoji.definition)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
