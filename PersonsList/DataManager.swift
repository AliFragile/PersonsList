//
//  DataManager.swift
//  PersonsList
//
//  Created by Алина Ражева on 15.11.2022.
//

import Foundation

class DataManager {
    
    //MARK: - Singleton!!!!:
    static let shared = DataManager()
    
    var names = ["Romeo", "Lara", "Kris",
                 "Jared", "Sofia", "Konny", "Floyd"]
    
    var lastnames = ["Sanchez", "Mur", "Isaak",
                     "Leto", "Moppasan", "Perst", "Tart"]
    
    var emails = ["rocky88@gmail.com", "sunnyMe@gmail.com",
                  "lily84666@mail.ru", "lovvveeer0909@gmail.ru",
                  "imimim99999@mail.com", "opapalala24@yandex.ru",
                  "olala23456@mail.ru"]
    
    var phones = ["+79529460905", "+527898993456", "+167848833778",
                  "+167839566667", "+528889993778", "+79529460507",
                  "+78839937522"]
}
