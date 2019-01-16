//
//  ViewController.swift
//  MVPDemo
//
//  Created by Parvez Shaikh on 16/01/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    var presenter : RegistrationPresenter?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.presenter = RegistrationPresenter(delegate: self as! RegistrationDelegate)
        
    }

    @IBAction func buttonRegisterFDidTap(_ sender: Any) {
        self.presenter!.register(email: emailTextField.text!, password: passwordTextField.text!, fullName: fullNameTextField.text!, phoneNumber: phoneNumberTextField.text!)
    }
    
}
extension ViewController: RegistrationDelegate{
    func showProgress(){
        
    }
    func hideProgress(){
        
    }
    func registrationDidSucceed(){
        print("succeed")
    }
    func registrationDidFailed(message: String){
        print(message)
    }
}

