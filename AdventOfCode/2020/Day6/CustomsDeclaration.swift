//
//  CustomsDeclaration.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/6/20.
//

import Foundation

class CustomsDeclaration: NSObject {
    var groupAnswers: Set<Character> = []
    
    init(_ answers: [String]) {
        for answerLine in answers {
            let personAnswers = Array(answerLine)
            
            for letter in personAnswers {
                groupAnswers.insert(letter)
            }
        }
    }
    
    func yesCount() -> Int {
        return groupAnswers.count
    }
}
