//
//  PersonsListTableViewController.swift
//  PersonsList
//
//  Created by Алина Ражева on 15.11.2022.
//

import UIKit

class PersonsListTableViewController: UITableViewController {

    let persons = Person.createPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // кнопка Edit:
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    // MARK: - Если нужно, чтобы информация отображалась только на одной странице, а именно: Имя-фамилия, email, телефон, то нужно сделать вот так:
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return persons.count
//    }
//
//    // Использование метода для присваивания заголовка секции:
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let person = persons[section]     //здесь уже работаем не с индексами, а с секциями
//
//        return person.name + " " + person.lastname
//    }
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 2
//    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonName", for: indexPath)
//
//        let person = persons[indexPath.section]
//        cell.textLabel?.text = indexPath.raw = 0 ? person.email : person.phoneNumber
//
//        return cell
//    }
    
    // MARK: - Кастомизация ячеек:
    // Использование кастомного класса:
    // Можно сделать через storyboard, можно здесь(в коде), но перед этим в сториборд сделать заголовок через лейбл HeaderCell:
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderCell
//
//        let person = persons[section]
//        headerCell.personLabel.text = person.name + " " + person.lastname
//
//        return headerCell
//    }
    
    // Без использования кастомного класса:  НО ПРАВИЛЬНЕЕ делать настройки в функциях типа didEndDisplaying, willDisplay и тд
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let person = persons[section]
//
//        let label = UILabel()   //здесь можно сразу же с координатами CGRect(x: 20, y: 3, width: 300, height: 20)
//        label.backgroundColor = .gray
//        label.text = person.name + " " + person.lastname
//        label.textColor = .white
//
//        return label
//    }
    // Снять выделение ячейки при тапе:
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonName", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.lastname
       
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60   // задаем жесткую высоту ячейки
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier != "Person" { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = persons[indexPath.row]
        }
    }
}

