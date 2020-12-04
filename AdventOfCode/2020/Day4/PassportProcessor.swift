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
        
        func isValid() -> Bool {
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
            if iter.isValid() {
                return memo + 1
            } else {
                return memo
            }
        })
    }
}
