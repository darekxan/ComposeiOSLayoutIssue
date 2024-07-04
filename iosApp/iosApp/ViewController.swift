//
//  ViewController.swift
//  iosApp
//
//  Created by Dariusz Skrzypoń on 04/07/2024.
//  Copyright © 2024 orgName. All rights reserved.
//


import UIKit
import ComposeApp


class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Hello, UIKit!"
        label.textAlignment = .center
        view.addSubview(label) // Add label to the main view
        view.backgroundColor = .red

        let kotlinViewController = MainViewControllerKt.MainViewController()
        kotlinViewController.view.backgroundColor = UIColor.blue

        
        addChild(kotlinViewController)
               view.addSubview(kotlinViewController.view)
               kotlinViewController.didMove(toParent: self)

               // Enable Auto Layout
               kotlinViewController.view.translatesAutoresizingMaskIntoConstraints = false

               // Safe Area Constraints
               let safeArea = view.safeAreaLayoutGuide
        
               NSLayoutConstraint.activate([
                   kotlinViewController.view.topAnchor.constraint(equalTo: safeArea.topAnchor),
                   kotlinViewController.view.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
                   kotlinViewController.view.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
                   kotlinViewController.view.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
               ])
        
    }
}
