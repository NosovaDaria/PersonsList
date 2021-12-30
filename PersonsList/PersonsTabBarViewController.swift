//
//  PersonsTabBarViewController.swift
//  PersonsList
//
//  Created by Дарья Носова on 29.12.2021.
//

import UIKit

class PersonsTabBarViewController: UITabBarController {
    
    var persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passPersons()
    }
    
    private func passPersons() {
        let tabBarController = self.tabBarController
        guard let viewControllers = tabBarController?.viewControllers else { return }

        for viewController in viewControllers {
            if let personsListVC = viewController as? PersonsListViewController {
                personsListVC.persons = persons
            } else if let personsInfoVC = viewController as? PersonsInfoViewController{
                personsInfoVC.persons = persons
            }
        }
    }
}
