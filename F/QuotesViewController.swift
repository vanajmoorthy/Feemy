//
//  QuotesViewController.swift
//  F
//
//  Created by Vanaj Moorthy on 03/04/21.
//

import Cocoa

class QuotesViewController: NSViewController {
    @IBOutlet weak var field: NSScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
    }
    
    func printText() {
//        let textView: NSTextView = field.documentView! as! NSTextView
//        let text = textView.string
//
        print("text")
        
        
    }
    
}
extension QuotesViewController {
  // MARK: Storyboard instantiation
  static func freshController() -> QuotesViewController {
    //1.
    let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
    //2.
    let identifier = NSStoryboard.SceneIdentifier("QuotesViewController")
    //3.
    guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? QuotesViewController else {
      fatalError("Why cant i find QuotesViewController? - Check Main.storyboard")
    }
    return viewcontroller
  }
}

