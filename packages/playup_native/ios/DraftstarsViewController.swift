//
//  PlayupViewController.swift
//  playup_native
//
//  Created by Kun-Xing Lin on 22/10/2023.
//

import Foundation
import React
import UIKit
class DraftstarsViewController : UIViewController{
  override func viewDidLoad() {
    
    let jsCodeLocation = URL(string: "http://localhost:9988/index.bundle?platform=ios")!
    let rootView = RCTRootView(
        bundleURL: jsCodeLocation,
        moduleName: "draftStars",
        initialProperties: [:] as [NSObject : AnyObject],
        launchOptions: nil
    )
    rootView.backgroundColor = .blue
    self.view = rootView
  }
}
