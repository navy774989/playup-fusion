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

    let defaults = UserDefaults.standard
    defaults.set("draftstars", forKey: "activeApp")
      CodePush.bundleURL(forResource: "draftstars")
      CodePush.setDeploymentKey("autd804P7XTFEuxsKeL_dmF7IMUpDOhPSDFUE")
    #if DEBUG
      let jsCodeLocation = URL(string: "http://localhost:9988/index.bundle?platform=ios")!
    #else
      let jsCodeLocation = CodePush.bundleURL()!
    #endif
      let rootView = RCTRootView(
        bundleURL: jsCodeLocation,
        moduleName: "draftStars",
        initialProperties: [:] as [NSObject : AnyObject],
        launchOptions: nil
      )
      self.view = rootView

    
  }
}
