//
//  Person.swift
//  PersonsList
//
//  Created by Дарья Носова on 29.12.2021.
//

import Foundation

struct Person {
    
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        var persons: [Person] = [];
        for (index, _) in names.enumerated() {
            persons.append(Person(name: names[index], surname: surnames[index], email: emails[index], phone: phones[index]))
        }
        return persons
    }
}

