//
//  LoginViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emailField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
        passwordField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
                
    }
    
    @objc private func validateFields() {
        LoginButton.isEnabled = emailField.text != "" && passwordField.text != ""
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton) {
        NetworkService.share.login(email: emailField.text!, password: passwordField.text!) { success in
            if success{
                self.goToHomePage()
            } else {
                print("invalid credentials")
            }
        }
    }
    
    private func goToHomePage() {
        let controller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        present(controller, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
