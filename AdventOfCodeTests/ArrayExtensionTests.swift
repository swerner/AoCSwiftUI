//
//  ArrayExtensionTests.swift
//  AdventOfCodeTests
//
//  Created by Scott Werner on 12/5/20.
//

import XCTest

class ArrayExtensionTests: XCTestCase {

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
    
    func testLeft() throws {
        let testArray = Array(0...127)
        let expectedArray = Array(0...63)
        
        XCTAssertEqual(testArray.left(), expectedArray)
    }
    
    func testLeft2() throws {
        let testArray = Array(32...63)
        let expectedArray = Array(32...47)
        
        XCTAssertEqual(testArray.left(), expectedArray)
    }
    
    func testLeft3() throws {
        let testArray = Array(44...47)
        let expectedArray = Array(44...45)
        
        XCTAssertEqual(testArray.left(), expectedArray)
    }
    
    func testLeft4() throws {
        let testArray = Array(44...45)
        let expectedArray = [44]
        
        XCTAssertEqual(testArray.left(), expectedArray)
    }
    
    func testLeft5() throws {
        let testArray = Array(4...7)
        let expectedArray = Array(4...5)
        
        XCTAssertEqual(testArray.left(), expectedArray)
    }
    
    func testRight() throws {
        let testArray = Array(0...127)
        let expectedArray = Array(64...127)
        
        XCTAssertEqual(testArray.right(), expectedArray)
    }
    
    func testRight2() throws {
        let testArray = Array(0...63)
        let expectedArray = Array(32...63)
        
        XCTAssertEqual(testArray.right(), expectedArray)
    }
    
    func testRight3() throws {
        let testArray = Array(32...47)
        let expectedArray = Array(40...47)
        
        XCTAssertEqual(testArray.right(), expectedArray)
    }
    
    func testRight4() throws {
        let testArray = Array(40...47)
        let expectedArray = Array(44...47)
        
        XCTAssertEqual(testArray.right(), expectedArray)
    }
    
    func testRight5() throws {
        let testArray = Array(0...7)
        let expectedArray = Array(4...7)
        
        XCTAssertEqual(testArray.right(), expectedArray)
    }
    
    func testRight6() throws {
        let testArray = Array(4...5)
        let expectedArray = [5]
        
        XCTAssertEqual(testArray.right(), expectedArray)
    }

}
