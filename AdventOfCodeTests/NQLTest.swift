//
//  NQLTest.swift
//  AdventOfCodeTests
//
//  Created by Scott Werner on 11/23/20.
//

import XCTest

class NQLTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCorrectFloor1() throws {
        let nql = NQL("(())");
        XCTAssertEqual(nql.correctFloor(), 0)
    }
    
    func testCorrectFloor2() throws {
        let nql = NQL("()()");
        XCTAssertEqual(nql.correctFloor(), 0)
    }
    
    func testCorrectFloor3() throws {
        let nql = NQL("(((");
        XCTAssertEqual(nql.correctFloor(), 3)
    }
    
    func testCorrectFloor4() throws {
        let nql = NQL("(()(()(")
        XCTAssertEqual(nql.correctFloor(), 3)
    }
    
    func testCorrectFloor5() throws {
        let nql = NQL("))(((((")
        XCTAssertEqual(nql.correctFloor(), 3)
    }
    
    func testCorrectFloor6() throws {
        let nql = NQL("())");
        XCTAssertEqual(nql.correctFloor(), -1)
    }
    
    func testCorrectFloor7() throws {
        let nql = NQL("))(");
        XCTAssertEqual(nql.correctFloor(), -1)
    }
    
    func testCorrectFloor8() throws {
        let nql = NQL(")))")
        XCTAssertEqual(nql.correctFloor(), -3)
    }
    
    func testCorrectFloor9() throws {
        let nql = NQL(")())())")
        XCTAssertEqual(nql.correctFloor(), -3)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
