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
    
    var heightConstraint: NSLayoutConstraint? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Hello, UIKit!"
        label.textAlignment = .center
        view.addSubview(label) // Add label to the main view
        view.backgroundColor = .red

//        var kotlinViewController
        let kotlinViewController = MainViewControllerKt.MainViewController { [self] height in
            heightConstraint?.constant = CGFloat(height)/2.5
            print(CGFloat(height)/2.5)
            self.view.layoutIfNeeded()
        }
        kotlinViewController.view.backgroundColor = UIColor.blue
        
        heightConstraint = kotlinViewController.view.heightAnchor.constraint(equalToConstant: 50)
        heightConstraint?.priority = UILayoutPriority(249) //

        
        addChild(kotlinViewController)
               view.addSubview(kotlinViewController.view)
               kotlinViewController.didMove(toParent: self)

               // Enable Auto Layout
               kotlinViewController.view.translatesAutoresizingMaskIntoConstraints = false

               // Safe Area Constraints
               let safeArea = view.safeAreaLayoutGuide
        
//        kotlinViewController.view.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .vertical)
//        kotlinViewController.view.setContentCompressionResistancePriority(UILayoutPriority.defaultLow, for: .vertical)
               NSLayoutConstraint.activate([
                   kotlinViewController.view.topAnchor.constraint(equalTo: safeArea.topAnchor),
                   kotlinViewController.view.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
                   kotlinViewController.view.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
                   heightConstraint!,
//                   kotlinViewController.view.heightAnchor.constraint(equalToConstant: 200).priority = .defaultLow
                   kotlinViewController.view.bottomAnchor.constraint(lessThanOrEqualTo: safeArea.bottomAnchor)
//                   kotlinViewController.view.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -)
               ])
        
        // Add layout constraints to position the label...
    }
}
