//
//  HobbyViewController.swift
//  LoginApp
//
//  Created by Dmitriy Panferov on 18/02/23.
//

import UIKit

final class HobbyViewController: UIViewController {

    @IBOutlet var hobbyLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbyLabel.text = user.person.hobbyInformation
    }
}
