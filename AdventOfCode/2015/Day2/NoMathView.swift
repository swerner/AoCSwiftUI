//
//  NoMathView.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/24/20.
//

import SwiftUI

struct NoMathView: View {
    @State private var totalSqft: Int = 0
    @State private var totalRibbon: Int = 0
    
    var body: some View {
        VStack {
            Button(action: {
                let values = FileImporter(filename: "day2-input").lines()
                
                totalSqft = values.reduce(0, {
                    memo, iter in
                    let elements = iter.split(separator: "x")
                    let wpc = WrappingPaperCalculator(length: Int(elements[0])!, width: Int(elements[1])!, height: Int(elements[2])!)
                    return memo + wpc.sqft()
                })
            }) {
                Text("Calculate Wrapping Paper Length")
            }
            Text("Total Sqft Needed: \(totalSqft)")
            
            Button(action: {
                let values = FileImporter(filename: "day2-input").lines()
                
                totalRibbon = values.reduce(0, { memo, iter in
                    let elements = iter.split(separator: "x")
                    let wpc = WrappingPaperCalculator(length: Int(elements[0])!, width: Int(elements[1])!, height: Int(elements[2])!)
                    return memo + wpc.ribbonLength()
                })
            }) {
                Text("Calculate Total Ribbon")
            }
            Text("Total Ribbon Needed: \(totalRibbon)")
        }
    }
}

struct NoMathView_Previews: PreviewProvider {
    static var previews: some View {
        NoMathView()
    }
}
