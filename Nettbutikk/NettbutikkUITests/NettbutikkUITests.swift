//
//  NettbutikkUITests.swift
//  NettbutikkUITests
//
//  Created by Håkon Bogen on 04/09/2024.
//

import XCTest

final class NettbutikkUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        
        let app = XCUIApplication()
        app.scrollViews.otherElements.buttons["Sko"].tap()
        
        let leggTilIHandlekurvStepper = app.steppers["Legg til i handlekurv"]
        let incrementButton = leggTilIHandlekurvStepper/*@START_MENU_TOKEN@*/.buttons["Increment"]/*[[".buttons[\"Legg til i handlekurv, Increment\"]",".buttons[\"Increment\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        incrementButton.tap()
        
        let decrementButton = leggTilIHandlekurvStepper/*@START_MENU_TOKEN@*/.buttons["Decrement"]/*[[".buttons[\"Legg til i handlekurv, Decrement\"]",".buttons[\"Decrement\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        decrementButton.tap()
        decrementButton.tap()
        decrementButton.tap()
        incrementButton.tap()
       
        

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
