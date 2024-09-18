//
//  BaseTestcase.swift
//  Flash Chat iOS13UITests
//
//  Created by Tyra Phung on 22/01/2024.
//

import Foundation
import XCTest

internal class BaseTestcase:TestCase {
    override func setUp() {
        super.setUp()
        BaseTestcase.app.launch()
        continueAfterFailure = true
    }
    
    override func tearDown() {
        if let failureCount = testRun?.failureCount, failureCount > 0 {
            takeScreenshot(name: "Failed")
        }
        BaseTestcase.app.terminate()
        super.tearDown()
    }
    
    func takeScreenshot(name: String) {
        let fullScreenshot = XCUIScreen.main.screenshot()
        let screenshot = XCTAttachment(uniformTypeIdentifier: "public.png", name: "Screenshot-\(name)-\(UIDevice.current.name).png", payload: fullScreenshot.pngRepresentation, userInfo: nil)
        screenshot.lifetime = .keepAlways
        add(screenshot)
    }
}
