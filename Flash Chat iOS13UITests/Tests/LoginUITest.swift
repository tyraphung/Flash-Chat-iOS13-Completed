//
//  LoginUITest.swift
//  Flash Chat iOS13UITests
//
//  Created by Tyra Phung on 22/01/2024.
//

import XCTest
class LoginUITest: BaseTestcase {
    func test_verifyUserIsableToLoginSuccessful() {
        let inputText = "my chat " + CommonData.generateCurrentTimeStamp
        // when
        welcomeScreen.selectLoginOption()
        //then
        loginScreen.tapLoginButton()
        chatScreen.verifyChatScreenIsExist()
        chatScreen.typeAndSendAChat(textChat: inputText)
        chatScreen.verifySentTextChatSuccess(textChat: inputText)
        chatScreen.tapLogOut()
    }
}
