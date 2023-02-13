//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Dmitriy Panferov on 13/02/23.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var welcomeImage: UIImageView!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeText
    }
    
    @IBAction func logOutTapped() {
        dismiss(animated: true)
    }
    
}
