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
    
    // MARK: - override func
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.welcomeText = "Welcome, \(userTextField.text ?? "" ) !"
        
    }
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    // MARK: - IBActions
    @IBAction func loginButtonTapped() {
        if userTextField.text != "www" && passwordTextField.text != "www" {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert(withTitle: "Oooppss!", andMessage: "Your User Name : www")
        
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Oooppss!", andMessage: "Your Password : www")
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}



