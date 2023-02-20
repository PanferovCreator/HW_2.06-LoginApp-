//
//  CompanyViewController.swift
//  LoginApp
//
//  Created by Dmitriy Panferov on 16/02/23.
//

import UIKit

final class CompanyViewController: UIViewController {

    @IBOutlet var companyDescriptionLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        navigationItem.title = user.person.company
        companyDescriptionLabel.text = user.person.companyDescription
    }
}
