//
//  TestCase.swift
//  Flash Chat iOS13UITests
//
//  Created by Tyra Phung on 22/01/2024.
//

import XCTest

internal class TestCase: XCTestCase {
    lazy var welcomeScreen = WelcomeScreen()
    lazy var loginScreen = LoginScreen()
    lazy var registerScreen = RegisterScreen()
    lazy var chatScreen = ChatScreen()
    
    static let app = XCUIApplication()
}
