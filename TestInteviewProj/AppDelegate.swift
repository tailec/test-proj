//
//  AppDelegate.swift
//  TestInteviewProj
//
//  Created by krawiecp on 13/07/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            let viewModel = ViewModel(api: API())
            let viewController = ViewController(viewModel: viewModel)
            window.rootViewController = viewController
            window.makeKeyAndVisible()
        }
        return true
    }
}
