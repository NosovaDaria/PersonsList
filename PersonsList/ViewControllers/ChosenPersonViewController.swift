//
//  ChosenPersonViewController.swift
//  PersonsList
//
//  Created by Дарья Носова on 30.12.2021.
//

import UIKit

class ChosenPersonViewController: UIViewController {
  @IBOutlet var phoneNumberLabel: UILabel!
  @IBOutlet var emailLabel: UILabel!
  
  var person: Person!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = person.fullname
    phoneNumberLabel.text = person.phone
    emailLabel.text = person.email
    }
    

}
