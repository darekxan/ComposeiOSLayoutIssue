//
//  SceneDelegate.swift
//  iosApp
//
//  Created by Dariusz Skrzypoń on 04/07/2024.
//  Copyright © 2024 orgName. All rights reserved.
//


import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    // Called when a new scene is created for your app
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)

        // Create your root ViewController
        let rootViewController = ViewController() 

        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }

    // Called when the user discards a scene
    func sceneDidDisconnect(_ scene: UIScene) { }

    // Called as the scene transitions from the foreground to the background
    func sceneDidEnterBackground(_ scene: UIScene) { }

    // Called as the scene transitions from the background to the foreground
    func sceneWillEnterForeground(_ scene: UIScene) { }

    // Called when the scene becomes active
    func sceneDidBecomeActive(_ scene: UIScene) { }

    // Called when the scene is about to resign active
    func sceneWillResignActive(_ scene: UIScene) { }
}
