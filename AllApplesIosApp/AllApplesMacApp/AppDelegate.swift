//
//  AppDelegate.swift
//  AllApplesMacApp
//
//  Created by Mihaela Mihaljevic Jakic on 27.11.2020..
//

import Cocoa
import AllApples

class AppDelegate: NSObject, NSApplicationDelegate {
  
  private var window: NSWindow?
  
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    window = AppSceneDelegate.makeSplitViewWindow_Mac(theVC: ViewController())
  }

}

