//
//  PassportProcessorTests.swift
//  AdventOfCodeTests
//
//  Created by Scott Werner on 12/4/20.
//

import XCTest

class PassportProcessorTests: XCTestCase {

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
    
    func testValidBirthYear() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "byr:2002")
        
        XCTAssertEqual(passport.validBirthYear(), true)
    }
    
    func testInvalidBirthYear() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "byr:2003")
        
        XCTAssertEqual(passport.validBirthYear(), false)
    }
    
    func testValidHeight() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "hgt:60in")
        
        XCTAssertEqual(passport.validHeight(), true)
    }
    
    func testValidHeight2() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "hgt:190cm")
        
        XCTAssertEqual(passport.validHeight(), true)
    }
    
    func testInvalidHeight() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "hgt:190in")
        
        XCTAssertEqual(passport.validHeight(), false)
    }
    
    func testInvalidHeight2() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "hgt:190")
        
        XCTAssertEqual(passport.validHeight(), false)
    }
    
    func testValidHairColor() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "hcl:#123abc")
        
        XCTAssertEqual(passport.validHairColor(), true)
    }
    
    func testInvalidHairColor() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "hcl:#123abz")
        
        XCTAssertEqual(passport.validHairColor(), false)
    }
    
    func testInvalidHairColor2() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "hcl:123abz")
        
        XCTAssertEqual(passport.validHairColor(), false)
    }
    
    func testValidEyeColor() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "ecl:brn")
        
        XCTAssertEqual(passport.validEyeColor(), true)
    }
    
    func testInvalidEyeColor() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "ecl:wat")
        
        XCTAssertEqual(passport.validEyeColor(), false)
    }
    
    func testValidPassportId() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "pid:000000001")
        
        XCTAssertEqual(passport.validPassportId(), true)
    }
    
    func testInvalidPassportId() throws {
        var passport = PassportProcessor.Passport()
        passport.addAttributes(attributes: "pid:0123456789")
        
        XCTAssertEqual(passport.validPassportId(), false)
    }
}
