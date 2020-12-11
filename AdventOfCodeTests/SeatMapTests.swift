//
//  SeatMapTests.swift
//  AdventOfCodeTests
//
//  Created by Scott Werner on 12/11/20.
//

import XCTest

class SeatMapTests: XCTestCase {

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

    func testVisibleOccupiedCount1() throws {
        let seatMap = SeatMap(FileImporter(filename:"d112020-p2-simpletest").lines())
        XCTAssertEqual(seatMap.visibleOccupiedCount(position: SeatMap.SeatPosition(row: 4, column: 3)), 8)
    }
    
    func testVisibleOccupiedCount2() throws {
        let seatMap = SeatMap(FileImporter(filename:"d112020-p2-simpletest2").lines())
        XCTAssertEqual(seatMap.visibleOccupiedCount(position: SeatMap.SeatPosition(row: 1, column: 1)), 1)
    }
    
    func testVisibleOccupiedCount3() throws {
        let seatMap = SeatMap(FileImporter(filename:"d112020-p2-simpletest3").lines())
        XCTAssertEqual(seatMap.visibleOccupiedCount(position: SeatMap.SeatPosition(row: 3, column: 3)), 0)
    }
}
