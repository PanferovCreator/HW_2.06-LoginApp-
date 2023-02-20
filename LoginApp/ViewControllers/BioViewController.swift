//
//  BioViewController.swift
//  LoginApp
//
//  Created by Dmitriy Panferov on 16/02/23.
//

import UIKit

final class BioViewController: UIViewController {

    
    @IBOutlet var nameBioLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var contactsLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        nameBioLabel.text = "\(user.person.name) \(user.person.surname) Bio"
        descriptionLabel.text = user.person.userDescription
        contactsLabel.text = user.person.contactInformation
    }
}
