//
//  RegistrationPresenter.swift
//  MVPDemo
//
//  Created by Parvez Shaikh on 16/01/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import Foundation

protocol RegistrationDelegate{
    func showProgress()
    func hideProgress()
    func registrationDidSucceed()
    func registrationDidFailed(message: String)
}

class RegistrationPresenter{
    var delegate: RegistrationDelegate
    
    init(delegate: RegistrationDelegate) {
        self.delegate = delegate
}
    func register(email: String, password: String, fullName: String, phoneNumber:String){
        if email.isEmpty{
            print("omayib")
            self.delegate.registrationDidFailed(message: "email can't be blank")
            return
}
        
        self.delegate.showProgress()
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            self.delegate.hideProgress()
            self.delegate.registrationDidSucceed()
        }
}
}
