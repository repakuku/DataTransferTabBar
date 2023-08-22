//
//  ViewController.swift
//  DataTransferTabBar
//
//  Created by Alexey Turulin on 8/22/23.
//

import UIKit

final class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let firstVC = viewController as? FirstViewController {
                firstVC.view.backgroundColor = .systemOrange
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemCyan
            } else if let navigationVC = viewController as? UINavigationController {
                guard let thirdVC = navigationVC.topViewController as? ThirdViewController else { return }
                thirdVC.view.backgroundColor = .systemGreen
                thirdVC.title = "Third Screen"
            }
        }
    }
}

