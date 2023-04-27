//
//  AppDelegate.swift
//  Bankey
//
//  Created by David Kochkin on 25.04.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let loginViewController = LoginViewController()
    let onboardingViewController = OnboardingContainerViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        loginViewController.delegate = self
         // window?.rootViewController = loginViewController
        
        onboardingViewController.delegate = self
        window?.rootViewController = onboardingViewController
        
       // window?.rootViewController = OnboardingViewController(heroImageName: "delorean", titleText: "Bankey is faster, easier to use, and has a brand new look and feel that will make you fell like you are back in 1989.")
        
        return true
    }

}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        print("foo - Did login")
    }
}

extension AppDelegate: OnboardingContainerViewControllerDelegate {
    func didFinishOnboarding() {
        print("boo - Did finish onboarding")
    }
    
    
}




