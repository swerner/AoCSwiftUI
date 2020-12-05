//
//  BoardingPassTests.swift
//  AdventOfCodeTests
//
//  Created by Scott Werner on 12/5/20.
//

import XCTest

class BoardingPassTests: XCTestCase {

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
    
    func testCorrectBoardingPass() throws {
        let boardingPass = BoardingPass("BFFFBBFRRR")
        
        XCTAssertEqual(boardingPass.row(), 70)
        XCTAssertEqual(boardingPass.column(), 7)
        XCTAssertEqual(boardingPass.seatID(), 567)
    }

    func testCorrectBoardingPass2() throws {
        let boardingPass = BoardingPass("FFFBBBFRRR")
        
        XCTAssertEqual(boardingPass.row(), 14)
        XCTAssertEqual(boardingPass.column(), 7)
        XCTAssertEqual(boardingPass.seatID(), 119)
    }
    
    func testCorrectBoardingPas3() throws {
        let boardingPass = BoardingPass("BBFFBBFRLL")
        
        XCTAssertEqual(boardingPass.row(), 102)
        XCTAssertEqual(boardingPass.column(), 4)
        XCTAssertEqual(boardingPass.seatID(), 820)
    }
}
