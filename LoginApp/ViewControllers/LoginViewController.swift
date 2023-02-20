//
//  ViewController.swift
//  LoginApp
//
//  Created by Dmitriy Panferov on 13/02/23.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.text = user.login
        passwordTextField.text = user.password
    }
    
    // MARK: - override func
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {
            return
        }
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userVC = navigationVC.topViewController
                guard let userVC = userVC as? UserViewController else {
                    return
                }
                userVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let companyVC = navigationVC.topViewController
                guard let companyVC = companyVC as? CompanyViewController else {
                    return
                }
                companyVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let hobbyVC = navigationVC.topViewController
                guard let hobbyVC = hobbyVC as? HobbyViewController else {
                    return
                }
                hobbyVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
    }
        
        // MARK: - IBActions
    @IBAction func loginButtonTapped() {
            guard userTextField.text == user.login, passwordTextField.text == user.password else {
                showAlert(
                    title: "Invalid login or password",
                    message: "Please, enter correct login and password",
                    textField: passwordTextField
                )
                return
            }
        }
        
        @IBAction func forgotRegisterData(_ sender: UIButton) {
            sender.tag == 0
            ? showAlert(
                title: "Oooppss!",
                message: "Your name is \(user.login)"
            )
            : showAlert(
                title: "Oooppss!",
                message: "Your password is \(user.password)"
            )
        }
        
        @IBAction func unwind(for segue: UIStoryboardSegue) {
            userTextField.text = ""
            passwordTextField.text = ""
        }
        
        // MARK: - Add UIAlertController
        private func showAlert(title: String, message: String, textField: UITextField? = nil) {
            let alert = UIAlertController(
                title: title,
                message: message,
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                textField?.text = ""
            }
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    
}
    


