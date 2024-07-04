//
//  as.swift
//  iosApp
//
//  Created by Dariusz Skrzypoń on 04/07/2024.
//  Copyright © 2024 orgName. All rights reserved.
//


import UIKit

@UIApplicationMain // Marks this class as the app's delegate
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? // Main window for your app's UI

    // Called when the app finishes launching
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Create a UIWindow and set its rootViewController
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController() // Replace with your initial ViewController
        window?.makeKeyAndVisible()

        // Perform any app-level initialization (e.g., configure settings, initialize data)
        // ...

        return true // Signal successful launch
    }

    // Called when the app is about to enter the background
    func applicationWillResignActive(_ application: UIApplication) {
        // Pause ongoing tasks, disable timers, etc.
    }

    // Called when the app enters the background
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Save user data, release shared resources, etc.
    }

    // Called when the app is about to enter the foreground
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Prepare UI for foreground display, undo changes made in background, etc.
    }

    // Called when the app becomes active again
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the app was inactive
    }

    // Called when the app is about to terminate
    func applicationWillTerminate(_ application: UIApplication) {
        // Save data if appropriate
    }
}
