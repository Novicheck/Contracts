//
//  Person.swift
//  Contracts
//
//  Created by Denis on 22.02.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getConyactList() -> [Person] {
        var persons: [Person] = []
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0 ..< names.count {
            let person = Person(name: names[index], surname: surnames[index],
                                email: emails[index], phoneNumber: phones[index])
            persons.append(person)
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
