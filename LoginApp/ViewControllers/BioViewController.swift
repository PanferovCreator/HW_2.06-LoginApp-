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
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        nameBioLabel.text = "\(user.person.name) \(user.person.surname) Bio"
        descriptionLabel.text = user.person.userDescription
        contactsLabel.text = user.person.contactInformation
    }
}
