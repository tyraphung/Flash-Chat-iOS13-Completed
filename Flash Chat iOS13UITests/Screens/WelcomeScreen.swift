//
//  WelcomeScreen.swift
//  Flash Chat iOS13UITests
//
//  Created by Tyra Phung on 22/01/2024.
//

import Foundation
import XCTest

class WelcomeScreen {
    init() {
        _ = title.waitForExistence(timeout: Timeouts.defaultTimeout)
    }
    
    private lazy var title = BaseTestcase.app.staticTexts["⚡️FlashChat"]
    private lazy var loginButton = BaseTestcase.app.buttons["Log In"]
    private lazy var registerButton = BaseTestcase.app.buttons["Register"]
    
    @discardableResult
    func selectLoginOption() -> LoginScreen {
        loginButton.tap()
        return LoginScreen()
    }
    
    @discardableResult
    func selectRegisterOption() -> RegisterScreen {
        registerButton.tap()
        return RegisterScreen()
    }
}

