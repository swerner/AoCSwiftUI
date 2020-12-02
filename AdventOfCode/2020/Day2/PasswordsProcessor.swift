//
//  PasswordsProcessor.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/2/20.
//

import Foundation

class PasswordsProcessor: NSObject {
    class Password: NSObject {
        let reqMin: Int
        let reqMax: Int
        let reqLetter: Character
        let candidate: String
        
        init(requirement: String, candidate: String) {
            let reqComponents = requirement.split(separator: " ")
            let reqNums = reqComponents[0].split(separator: "-")
            
            self.reqMin = Int(reqNums[0])!
            self.reqMax = Int(reqNums[1])!
            self.reqLetter = Array(reqComponents[1])[0]
            self.candidate = candidate
        }
        
        func isValid() -> Bool {
            let candidateCharacters = Array(self.candidate)
            let candidateCount = candidateCharacters.filter { $0 == self.reqLetter }.count
            
            if candidateCount >= reqMin && candidateCount <= reqMax {
                return true
            }
            
            return false
        }
    }
    
    var passwords: [Password]
    
    init(lines: [String]) {
        self.passwords = []
        
        for item in lines {
            let components = item.split(separator: ":")
            self.passwords.append(Password(requirement: String(components[0]), candidate: String(components[1])))
        }
    }
    
    func validPasswordCount() -> Int {
        return passwords.reduce(0, { memo, iter in
            if iter.isValid() {
                return memo + 1
            } else {
                return memo
            }
        })
    }
}
