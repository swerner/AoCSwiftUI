//
//  BaggingSystem.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/7/20.
//

import Foundation

class BaggingSystem: NSObject {
    class BaggingRule: NSObject {
        let quantity: Int
        let color: String
        
        init(quantity: Int, color: String) {
            self.quantity = quantity
            self.color = color
        }
    }
    
    var baggingRules: [String:[BaggingRule]] = [:]
    
    init(_ lines: [String]) {
        for line in lines {
            let ruleParts = line.components(separatedBy: " bags contain ")
            let containingRules = ruleParts[1].components(separatedBy: ", ")
            
            for var containingRule in containingRules {
                containingRule = containingRule.replacingOccurrences(of: " bags.", with: "")
                containingRule = containingRule.replacingOccurrences(of: " bag.", with: "")
                containingRule = containingRule.replacingOccurrences(of: "bags", with: "")
                containingRule = containingRule.replacingOccurrences(of: "bag", with: "")
                
                
                let processedRule = containingRule.components(separatedBy: " ")
                
                if processedRule[0] != "no" {
                    let ruleQuantity = Int(processedRule[0])!
                    let ruleColor = String(processedRule[1]) + " " + String(processedRule[2])
                    
                    baggingRules[ruleParts[0], default: []].append(BaggingRule(quantity: ruleQuantity, color: ruleColor))
                } else {
                    baggingRules[ruleParts[0]] = []
                }
            }
        }
    }
    
    func allBagColors(bagColor: String) -> [String] {
        let rules = baggingRules[bagColor, default: []]
        var containingColors: [String] = [bagColor]
        
        for rule in rules {
            containingColors += allBagColors(bagColor: rule.color)
        }
        
        return containingColors
    }
    
    func bagsContaining(bagColor: String) -> Int {
        var count = 0
        
        for (key, _) in baggingRules {
            if key != bagColor && allBagColors(bagColor: key).contains(bagColor) {
                count += 1
            }
        }
        
        return count
    }
}
