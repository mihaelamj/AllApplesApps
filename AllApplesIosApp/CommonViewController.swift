//
//  CommonViewController.swift
//  AllApplesIosApp
//
//  Created by Mihaela Mihaljevic Jakic on 27.11.2020..
//

import Foundation

#if os(iOS) || os(tvOS)
import UIKit
#endif

#if os(OSX)
import Cocoa
#endif

import AllApples

class CommonViewController: AViewController {
  
  // INFO: Need to create the appropriate `View` type for the OS -
  override func loadView() {
    let aView = AView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
    
    // INFO: To work with layers on the MacOS -
    #if os(OSX)
    aView.wantsLayer = true
    #endif
    
    aView.myColor = AColor.red
    self.view = aView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let aView = view as! AView
    aView.myColor = AColor.yellow
  }

  #if os(OSX)
  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }
  #endif
}
