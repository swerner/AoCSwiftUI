//
//  PassportProcessor.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/4/20.
//

import Foundation

class PassportProcessor: NSObject {
    class Passport {
        var passportData: [String: String] = [:]
        
        func addAttributes(attributes: String) {
            let splitAttributes = attributes.split(separator: " ")
            
            for attribute in splitAttributes {
                let splitAttribute = attribute.split(separator: ":")
                
                passportData[String(splitAttribute[0])] = String(splitAttribute[1])
            }
        }
        
        func asString() -> String {
            var output = ""
            
            for (key, value) in passportData {
                output += "\(key): \(value),"
            }
            return output
        }
        
        func isPresent() -> Bool {
            return (
                passportData["byr"] != nil &&
                passportData["iyr"] != nil &&
                passportData["eyr"] != nil &&
                passportData["hgt"] != nil &&
                passportData["hcl"] != nil &&
                passportData["ecl"] != nil &&
                passportData["pid"] != nil
            )
        }
        
        func validBirthYear() -> Bool {
            let birthYear = Int(passportData["byr"]!)!
            return (birthYear >= 1920 && birthYear <= 2002)
        }
        
        func validIssueYear() -> Bool {
            let issueYear = Int(passportData["iyr"]!)!
            return (issueYear >= 2010 && issueYear <= 2020)
            
        }
        
        func validExpirationYear() -> Bool {
            let expirationYear = Int(passportData["eyr"]!)!
            return (expirationYear >= 2020 && expirationYear <= 2030)
        }
        
        func validHeight() -> Bool {
            let passportHeight = passportData["hgt"]!
            let value = Int(passportHeight.prefix(passportHeight.count - 2))!
            
            if(passportHeight.suffix(2) == "cm") {
                return (value >= 150 && value <= 193)
            } else if (passportHeight.suffix(2) == "in") {
                return (value >= 59 && value <= 76)
            } else {
                return false
            }
        }
        
        func validHairColor() -> Bool {
            return passportData["hcl"]!.range(of: #"#[0-9a-f]{6}"#, options: .regularExpression) != nil
        }
        
        func validEyeColor() -> Bool {
            let validEyeColors = ["amb", "blu", "brn", "gry", "grn", "hzl", "oth"]
            return validEyeColors.contains(passportData["ecl"]!)
        }
        
        func validPassportId() -> Bool {
            return passportData["pid"]!.range(of: #"^[0-9]{9}$"#, options: .regularExpression) != nil
        }
        
        func isValid() -> Bool {
            return (
                isPresent() &&
                validBirthYear() &&
                validIssueYear() &&
                validExpirationYear() &&
                validHeight() &&
                validHairColor() &&
                validEyeColor() &&
                validPassportId()
            )
        }
    }
    
    var passports: [Passport] = []
        
    init(lines: [String]) {
        var currentPassport = Passport()
        
        for line in lines {
            if line.isEmpty {
                passports.append(currentPassport)
                currentPassport = Passport()
            } else {
                currentPassport.addAttributes(attributes: line)
            }
        }
        
        passports.append(currentPassport)
    }
    
    func passportData() -> String {
        return passports.reduce("", { memo, iter in
            return memo + iter.asString() + "\n-----\n"
        })
    }
    
    func validPassportCount() -> Int {
        return passports.reduce(0, { memo, iter in
            if iter.isPresent() && iter.isValid() {
                return memo + 1
            } else { return memo }
        })
    }
    
    func presentPassportCount() -> Int {
        return passports.reduce(0, { memo, iter in
            if iter.isPresent() {
                return memo + 1
            } else {
                return memo
            }
        })
    }
}
