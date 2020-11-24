//
//  WrappingPaperCalculatorTests.swift
//  AdventOfCodeTests
//
//  Created by Scott Werner on 11/24/20.
//

import XCTest

class WrappingPaperCalculatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testCorrectCalculation1() throws {
        let wpc = WrappingPaperCalculator(length: 2, width: 3, height: 4)
        XCTAssertEqual(wpc.sqft(), 58)
    }
    
    func testCorrectCalculation2() throws {
        let wpc = WrappingPaperCalculator(length: 1, width: 1, height: 10)
        XCTAssertEqual(wpc.sqft(), 43)
    }

    func testCorrectRibbonCalculation1() throws {
        let wpc = WrappingPaperCalculator(length: 2, width: 3, height: 4)
        XCTAssertEqual(wpc.ribbonLength(), 34)
    }
    
    func testCorrectRibbonCalculation2() throws {
        let wpc = WrappingPaperCalculator(length: 1, width: 1, height: 10)
        XCTAssertEqual(wpc.ribbonLength(), 14)
    }
    
    // 29x13x26
    //11x11x14
    //27x2x5
    func testCorrectRibbonCalculation3() throws {
        let wpc = WrappingPaperCalculator(length: 13, width: 29, height: 26)
        XCTAssertEqual(wpc.ribbonLength(), 9880)
    }
    
    func testCorrectRibbonCalculation4() throws {
        let wpc = WrappingPaperCalculator(length: 11, width: 11, height: 11)
        XCTAssertEqual(wpc.ribbonLength(), 1375)
    }
}
