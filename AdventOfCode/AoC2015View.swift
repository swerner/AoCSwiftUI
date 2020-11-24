//
//  2015View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/24/20.
//

import SwiftUI

struct AoC2015View: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: NQLView()) {
                    Text("Day 1: NQL")
                }
                
            }
        }
    }
}

struct AoC2015View_Previews: PreviewProvider {
    static var previews: some View {
        AoC2015View()
    }
}
