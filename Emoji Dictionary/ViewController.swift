//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by MAC on 9/12/16.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var decoolTableview: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    decoolTableview.dataSource = self
    decoolTableview.delegate = self
    emojis = makeEmojiArray()
    
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegueWithIdentifier("moveSegue", sender: emoji)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let defVC = segue.destinationViewController as! DefineViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.defintion = "A smiley with sunglasses"
        emoji1.category = "smiley"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😇"
        emoji2.birthYear = 2012
        emoji2.defintion = "A smiley Angel"
        emoji2.category = "smiley"
        
        return [emoji1,emoji2]
        
        
    }

}

