//
//  Person.swift
//  PersonsList
//
//  Created by Алина Ражева on 15.11.2022.
//

import Foundation

struct Person {
    let name: String
    let lastname: String
    let email: String
    let phoneNumber: String
    
    static func createPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let lastnames = DataManager.shared.lastnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                lastname: lastnames[index],
                                email: emails[index],
                                phoneNumber: phoneNumbers[index])
            
            persons.append(person)
        }

        return persons
    }
}
