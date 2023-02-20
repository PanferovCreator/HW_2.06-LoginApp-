//
//  UserViewController.swift
//  LoginApp
//
//  Created by Dmitriy Panferov on 16/02/23.
//

import UIKit

final class UserViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var birthdayLabel: UILabel!
    @IBOutlet var placeOfBirthLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var divisionLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        navigationItem.backButtonTitle = "\(user.person.name) \(user.person.surname)"
        navigationItem.title = "\(user.person.name) \(user.person.surname)"
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        birthdayLabel.text = user.person.birthdayData
        placeOfBirthLabel.text = user.person.placeOfBirthday
        companyLabel.text = user.person.company
        divisionLabel.text = user.person.division
        positionLabel.text = user.person.position
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else {return}
        bioVC.user = user
    }
}
