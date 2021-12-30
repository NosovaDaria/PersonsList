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
        guard let viewControllers = tabBarController?.viewControllers else { return }
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                let personsListVC = navigationVC.topViewController as! PersonsListViewController
                personsListVC.persons = persons
            }
        }
        
    }
        
    
}
