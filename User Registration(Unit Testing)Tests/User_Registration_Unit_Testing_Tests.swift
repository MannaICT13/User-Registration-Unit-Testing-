//
//  User_Registration_Unit_Testing_Tests.swift
//  User Registration(Unit Testing)Tests
//
//  Created by Md Khaled Hasan Manna on 8/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import XCTest
@testable import User_Registration_Unit_Testing_

class User_Registration_Unit_Testing_Tests: XCTestCase {
    
    
    
    var model : UserModel!
    
    let username = "Manna"
    let city = "Rangpur"
    let email = "manna@email.com"
    let password = "12345678"
    let repeatPassword  = "12345678"

    override func setUp() {
       
    }

    override func tearDown() {
        
        model = nil
     
    }

    
    
    func test_UserModel(){
        
        model = UserModel(username: username, city: city, email: email, password: password, repeatPassword: repeatPassword)
        
        XCTAssertNotNil(model)
      
    }
    
    func test_isValidateName(){
        
        model = UserModel(username: "ss", city: city, email: email, password: password, repeatPassword: repeatPassword)
        XCTAssertTrue(model.isValidateName())
        
        
    }
    
    func test_isValidateCity(){
        model = UserModel(username: name, city: "Rajshahi", email: email, password: password, repeatPassword: repeatPassword)
        XCTAssertTrue(model.isValidateCity())
    }
    
    func test_isValidateEmail(){
        model = UserModel(username: username, city: city, email: "hello@gmail.com", password: password, repeatPassword: repeatPassword)
        
        XCTAssertTrue(model.isValidateEmail())
    }

    func test_isValidPasswordLength(){
        
        model = UserModel(username: username, city: city, email: email, password: "12345678", repeatPassword: repeatPassword)
        
        XCTAssertTrue(model.isValidPassword())
    }
    
    func test_isMatchPassword(){
        model = UserModel(username: username, city: city, email: email, password: "1234567", repeatPassword: "1234567")
        XCTAssertTrue(model.isMatchPassword())
        
    }
    func test_isValidPassword(){
        model = UserModel(username: username, city: city, email: email, password: "123123123", repeatPassword: "123123123")
        XCTAssertTrue(model.isValidPassword())
    }
}
