//
//  DetailViewController.swift
//  PersonsList
//
//  Created by Алина Ражева on 15.11.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = person.name + " " + person.lastname
        emailLabel.text = person.email
        phoneLabel.text = person.phoneNumber        
    }
}
