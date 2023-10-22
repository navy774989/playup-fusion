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
    let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    button.backgroundColor = .green
    button.titleLabel?.text = "switch"
    button.addTarget(self, action: #selector(switchApp), for: .touchUpInside)
    let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
    let rootView = RCTRootView(
        bundleURL: jsCodeLocation,
        moduleName: "playup",
        initialProperties: [:] as [NSObject : AnyObject],
        launchOptions: nil
    )
    rootView.backgroundColor = .red
    self.view = rootView
    self.view.addSubview(button)
  }
  @objc
  func switchApp(){
    let draftStarsVC = DraftstarsViewController()
    UIApplication.shared.windows.first?.rootViewController = draftStarsVC
  }
}
