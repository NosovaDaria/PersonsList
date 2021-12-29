//
//  PersonsTabBarViewController.swift
//  PersonsList
//
//  Created by Дарья Носова on 29.12.2021.
//

import UIKit

class PersonsTabBarViewController: UITabBarController {
    let persons = Persons().persons;
    
    //  private func segueToTableView() {
    //    guard let viewControllers = tabBarController?.viewControllers else { return }
    //    viewControllers.forEach {
    //      if let PersonsListVC = $0 as? PersonsListViewController {
    //        PersonsListVC.persons = persons
    //      } else if let PersonsInfoVC = $1 as? PersonsInfoViewController {
    //        PersonsInfoVC.persons = persons
    //      }
    //    }
    //    let tabBarController = segue.destination as! UITabBarController
    //    guard let viewControllers = tabBarController.viewControllers else { return }
    //
    //    viewControllers.forEach {
    //        if let welcomeVC = $0 as? WelcomeViewController {
    //            welcomeVC.user = user
    //        } else if let navigationVC = $0 as? UINavigationController {
    //            let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
    //            UINavigationBar.appearance().tintColor = #colorLiteral(red: 0.9011577964, green: 0.3819978237, blue: 0.3516694903, alpha: 1)
    //            aboutUserVC.user = user
    ////        }
    ////    }
    //  }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passPersons()
    }
    private func passPersons() {
        guard let viewControllers = tabBarController?.viewControllers else { return }
            viewControllers.forEach {
              if let PersonsListVC = $0 as? PersonsListViewController {
                PersonsListVC.persons = persons
              }
    }
        
        print (persons)
    }
    
}
