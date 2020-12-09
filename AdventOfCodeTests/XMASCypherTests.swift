//
//  XMASCypherTests.swift
//  AdventOfCodeTests
//
//  Created by Scott Werner on 12/9/20.
//

import XCTest

class XMASCypherTests: XCTestCase {

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
    
    func testValidNumber1() throws {
        let testValues = Array(1...25)
        
        XCTAssertEqual(XMASCypher.isValid(candidate: 26, numberList: testValues), true)
    }
    
    func testValidNumber2() throws {
        let testValues = Array(1...25)
        
        XCTAssertEqual(XMASCypher.isValid(candidate: 49, numberList: testValues), true)
    }
  
    func testValidNumber3() throws {
        let testValues = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,21,22,23,24,25,45]
        
        XCTAssertEqual(XMASCypher.isValid(candidate: 26, numberList: testValues), true)
    }
    
    func testValidNumber4() throws {
        let testValues = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,21,22,23,24,25,45]
        
        XCTAssertEqual(XMASCypher.isValid(candidate: 64, numberList: testValues), true)
    }
    
    func testValidNumber5() throws {
        let testValues = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,21,22,23,24,25,45]
        
        XCTAssertEqual(XMASCypher.isValid(candidate: 66, numberList: testValues), true)
    }
    
    func testInvalidNumber1() throws {
        let testValues = Array(1...25)
        
        XCTAssertEqual(XMASCypher.isValid(candidate: 100, numberList: testValues), false)
    }
    
    func testInvalidNumber2() throws {
        let testValues = Array(1...25)
        
        XCTAssertEqual(XMASCypher.isValid(candidate: 50, numberList: testValues), false)
    }
    
    func testInvalidNumber3() throws {
        let testValues = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,21,22,23,24,25,45]
        
        XCTAssertEqual(XMASCypher.isValid(candidate: 65, numberList: testValues), false)
    }
    
    func testCreateCorrectNumberList1() throws {
        let testValues = FileImporter.init(filename:"d92020-input-test").lines()
        var cypher = XMASCypher(testValues, preamble: 5)
        
        XCTAssertEqual(cypher.candidateNumberList(), [35,20,15,25,47])
    }
    
    func testCreateCorrectNumberList2() throws {
        let testValues = FileImporter.init(filename: "d92020-input-test").lines()
        var cypher = XMASCypher(testValues, preamble: 5)
        cypher.currentIndex = 8
        
        XCTAssertEqual(cypher.candidateNumberList(), [25, 47, 40, 62, 55])
    }
    
    func testFindContiguousSet() throws {
        let testValues = FileImporter.init(filename: "d92020-input-test").lines()
        var cypher = XMASCypher(testValues, preamble: 5)
        
        XCTAssertEqual(cypher.findContiguousSet(target: 127), [15, 25, 47, 40])
    }
}
