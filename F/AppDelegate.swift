//
//  AppDelegate.swift
//  F
//
//  Created by Vanaj Moorthy on 03/04/21.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)

    let popover = NSPopover()

    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
      if let button = statusItem.button {
        button.image = NSImage(named:NSImage.Name("StatusBarButtonImage"))
        button.action = #selector(togglePopover(_:))
      }
      popover.contentViewController = QuotesViewController.freshController()
      popover.behavior = NSPopover.Behavior.transient;
    }
    
    @objc func togglePopover(_ sender: Any?) {
      if popover.isShown {
        closePopover(sender: sender)
      } else {
        showPopover(sender: sender)
      }
    }
    let controller = QuotesViewController()
    func applicationWillResignActive(_ notification: Notification) {
        
        controller.printText()
        
    }

    func showPopover(sender: Any?) {
        controller.printText()
      if let button = statusItem.button {
        popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
      }
        NSApp.activate(ignoringOtherApps: true)
    }

    func closePopover(sender: Any?) {
      controller.printText()
      popover.performClose(sender)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

