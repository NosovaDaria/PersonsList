//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Дарья Носова on 29.12.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullname
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let chosenPersonVC = segue.destination as? ChosenPersonViewController else { return }
            chosenPersonVC.person = persons[indexPath.row]
        }
    }
    
}
