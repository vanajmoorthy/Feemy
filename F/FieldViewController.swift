//
//  FieldViewController.swift
//  F
//
//  Created by Vanaj Moorthy on 03/04/21.
//

import Cocoa

class FieldViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
    }
}
extension FieldViewController {
  // MARK: Storyboard instantiation
  static func freshController() -> FieldViewController {
    //1.
    let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
    //2.
    let identifier = NSStoryboard.SceneIdentifier("FieldViewController")
    //3.
    guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? FieldViewController else {
      fatalError("Check Main.storyboard")
    }
    return viewcontroller
  }
}

