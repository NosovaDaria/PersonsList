//
//  PersonsTabBarViewController.swift
//  PersonsList
//
//  Created by Дарья Носова on 29.12.2021.
//

import UIKit

class PersonsTabBarViewController: UITabBarController {
    
    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passPersons()
    }
    
    private func passPersons() {
        guard let personsListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let personsInfoVC = viewControllers?.last as? PersonsInfoViewController else { return }
        
        personsListVC.persons = persons
        personsInfoVC.persons = persons
    }
}
