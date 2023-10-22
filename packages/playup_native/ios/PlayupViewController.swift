//
//  PlayupViewController.swift
//  playup_native
//
//  Created by Kun-Xing Lin on 22/10/2023.
//

import Foundation
import React
import UIKit
class PlayupViewController : UIViewController{
  
  override func viewDidLoad() {
    let defaults = UserDefaults.standard
    defaults.set("playup", forKey: "activeApp")
      CodePush.bundleURL(forResource: "playup")
      CodePush.setDeploymentKey("HepIgBCDAc81hEpYATI40xrGb35BgG5qe46nt")

    
    let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    button.backgroundColor = .green
    button.titleLabel?.text = "switch"
    button.addTarget(self, action: #selector(switchApp), for: .touchUpInside)
    #if DEBUG
      let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
    #else
      let jsCodeLocation = CodePush.bundleURL()!
    #endif
    
      let rootView = RCTRootView(
        bundleURL: jsCodeLocation,
        moduleName: "playup",
        initialProperties: [:] as [NSObject : AnyObject],
        launchOptions: nil
      )
      self.view = rootView
      self.view.addSubview(button)

  }
  @objc
  func switchApp(){
    let draftStarsVC = DraftstarsViewController()
    UIApplication.shared.windows.first?.rootViewController = draftStarsVC
  }
}
