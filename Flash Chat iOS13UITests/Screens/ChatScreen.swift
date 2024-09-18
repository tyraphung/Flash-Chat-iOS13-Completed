//
//  ChatScreen.swift
//  Flash Chat iOS13UITests
//
//  Created by Tyra Phung on 22/01/2024.
//

import XCTest

class ChatScreen {
    init() {
        _ = sendButton.waitForExistence(timeout: Timeouts.defaultTimeout)
    }
    
    private lazy var title = BaseTestcase.app.staticTexts["⚡️FlashChat"]
    private lazy var logoutButton = BaseTestcase.app.buttons["Log Out"]
    private lazy var typeTextField = BaseTestcase.app.textFields["Write a message..."]
    private lazy var sendButton = BaseTestcase.app.buttons["send"]
    
    @discardableResult
    func verifyChatScreenIsExist() -> Bool {
        return sendButton.exists
        }
    
    @discardableResult
    func typeAndSendAChat(textChat: String) -> Self {
        typeTextField.tap()
        typeTextField.typeText(textChat)
        sendButton.tap()
        return self
    }
    
    @discardableResult
    func verifySentTextChatSuccess(textChat: String) -> Self{
        XCTAssertTrue(BaseTestcase.app.staticTexts[textChat].waitForExistence(timeout: Timeouts.defaultTimeout))
        return self
    }

    @discardableResult
    func tapLogOut() -> WelcomeScreen {
        logoutButton.tap()
        return WelcomeScreen()
    }
}
