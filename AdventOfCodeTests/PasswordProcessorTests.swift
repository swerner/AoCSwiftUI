//
//  PasswordProcessorTests.swift
//  AdventOfCodeTests
//
//  Created by Scott Werner on 12/2/20.
//

import XCTest

class PasswordProcessorTests: XCTestCase {

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

    func testCorrectValues() throws {
        let examples = [
            "1-3 a: abcde",
            "1-3 b: cdefg",
            "2-9 c: ccccccccc"]
        
        XCTAssertEqual(PasswordsProcessor(lines: examples).validPasswordCount(), 2)
    }
    
    func testSecondStarValues() throws {
        let examples = [
            "1-3 a: abcde",
            "1-3 b: cdefg",
            "2-9 c: ccccccccc"]
        
        XCTAssertEqual(PasswordsProcessor(lines: examples).validPasswordCount2(), 1)
    }
}
