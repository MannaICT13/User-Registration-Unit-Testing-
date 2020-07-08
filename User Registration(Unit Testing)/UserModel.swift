//
//  UserModel.swift
//  User Registration(Unit Testing)
//
//  Created by Md Khaled Hasan Manna on 8/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

struct UserModel{
    
    let username : String
    let city : String
    let email : String
    let password : String
    let repeatPassword: String
    
    
    
}

extension UserModel{

    func isValidateName() -> Bool{
        return username.count > 1
    }
    
    func isValidateCity() -> Bool{
        return city.count > 1 && city.count < 10
    }
    
    func isValidateEmail() -> Bool {
        return email.contains("@") && email.contains(".")
    }
    
    func isValidPasswordLength() ->Bool{
        return password.count >= 8 && password.count <= 16
    }
    
    func isMatchPassword() -> Bool{
        return password == repeatPassword
    }
    
    func isValidPassword() -> Bool{
        return isValidPasswordLength() && isMatchPassword()
    }
    

}
