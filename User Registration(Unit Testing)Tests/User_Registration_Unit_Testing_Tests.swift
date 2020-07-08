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

    override func setUp() {
       
    }

    override func tearDown() {
     
    }

    
    
    func test_UserModel(){
        
        let um = UserModel(name: "Manna", city: "Rangpur", password: "1234", repeatPassword: "1234")
        
        XCTAssertNotNil(um)
        
    }
    

}
