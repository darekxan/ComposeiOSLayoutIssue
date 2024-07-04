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
        
        view.backgroundColor = .red
        
        let kotlinViewController = MainViewControllerKt.MainViewController()
        kotlinViewController.view.backgroundColor = UIColor.blue
        
        
        addChild(kotlinViewController)
        view.addSubview(kotlinViewController.view)
        kotlinViewController.didMove(toParent: self)

        kotlinViewController.view.translatesAutoresizingMaskIntoConstraints = false
//
        let safeArea = view.safeAreaLayoutGuide
//        
        NSLayoutConstraint.activate([
            kotlinViewController.view.topAnchor.constraint(equalTo: safeArea.topAnchor),
            kotlinViewController.view.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            kotlinViewController.view.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
        ])
        
        let label = UILabel()
        label.text = "UILabel"
        label.backgroundColor = .orange
        label.textAlignment = .center
        view.addSubview(label) // Add label to the main view
        label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: kotlinViewController.view.bottomAnchor),
            label.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        ])

    }
}
