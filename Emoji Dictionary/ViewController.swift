//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ely Barros on 30/10/18.
//  Copyright © 2018 Ely. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableView.dataSource = self
        coolTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birth = 2009
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with sunglasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🇧🇷"
        emoji2.birth = 1500
        emoji2.category = "Flag"
        emoji2.definition = "The Brazil flag"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😀"
        emoji3.birth = 2010
        emoji3.category = "Smiley"
        emoji3.definition = "A laughing face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😛"
        emoji4.birth = 2011
        emoji4.category = "Smiley"
        emoji4.definition = "Blahhhh"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐹"
        emoji5.birth = 1990
        emoji5.category = "Animal"
        emoji5.definition = "A cute hamster"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5]
    }
}

