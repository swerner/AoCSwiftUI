//
//  CustomsDeclaration.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/6/20.
//

import Foundation

class CustomsDeclaration: NSObject {
    var groupAnswers: [Character: Int] = [:]
    var groupMembers: Int = 0
    
    init(_ answers: [String]) {
        for answerLine in answers {
            let personAnswers = Array(answerLine)
            groupMembers += 1
            
            for letter in personAnswers {
                groupAnswers[letter, default: 0] += 1
            }
        }
    }
    
    func yesCount() -> Int {
        return groupAnswers.count
    }
    
    func allYesCount() -> Int {
        let filteredAnswers = groupAnswers.filter { $0.value == groupMembers }
        return filteredAnswers.count
    }
}
