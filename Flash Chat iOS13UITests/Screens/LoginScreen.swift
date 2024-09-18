//
//  LoginScreen.swift
//  Flash Chat iOS13UITests
//
//  Created by Tyra Phung on 22/01/2024.
//

import Foundation
import XCTest

class LoginScreen {
    init() {
        _ = loginButton.waitForExistence(timeout: Timeouts.defaultTimeout)
    }
    
    private lazy var loginButton = BaseTestcase.app.buttons["Log In"]
    private lazy var backButton = BaseTestcase.app.buttons["Back"]
    private lazy var passwordFiled = BaseTestcase.app.secureTextFields["Password"]
    
    @discardableResult
    func tapLoginButton() -> ChatScreen {
        loginButton.tap()
        return ChatScreen()
    }
}
