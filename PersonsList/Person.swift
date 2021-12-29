//
//  Person.swift
//  PersonsList
//
//  Created by Дарья Носова on 29.12.2021.
//

import Foundation

//class Person {
//
//    static let names = DataManager.shared.names.shuffled()
//    static let surnames = DataManager.shared.surnames.shuffled()
//    static let emails = DataManager.shared.emails.shuffled()
//    static let phones = DataManager.shared.emails.shuffled()
//
//    let name: String
//    let surname: String
//    let email: String
//    let phone: String
//
//    init(index: Int) {
//        self.name = Person.names[index]
//        self.surname = Person.surnames[index]
//        self.email = Person.emails[index]
//        self.phone = Person.phones[index]
//    }
//
//}
//
//class Persons {
//
//    var persons: [Person] = []
//
//    init() {
//        for (index, _) in Person.names.enumerated() {
//            self.persons.append(Person(index: index))
//        }
//    }
//}
struct Person {
    let names = DataManager.shared.names.shuffled()
    let surnames = DataManager.shared.surnames.shuffled()
    let emails = DataManager.shared.emails.shuffled()
    let phones = DataManager.shared.phones.shuffled()
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        
            
        }
    }
}

