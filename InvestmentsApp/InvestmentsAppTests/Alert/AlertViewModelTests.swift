//
//  AlertViewModelTests.swift
//  InvestmentsAppTests
//
//  Created by Lev Litvak on 20.09.2022.
//

import XCTest
import InvestmentsApp

class AlertViewModelTests: XCTestCase {
    func test_showAlert_modifiesAlertStateAndProperties() {
        let sut = AlertViewModel()
        
        XCTAssertEqual(sut.isActive, false)
        XCTAssertEqual(sut.title, "")
        XCTAssertEqual(sut.message, "")
        
        sut.showAlert(title: "Any title", message: "Any message")
        XCTAssertEqual(sut.isActive, true)
        XCTAssertEqual(sut.title, "Any title")
        XCTAssertEqual(sut.message, "Any message")
    }
}
