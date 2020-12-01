//
//  AoC2020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/30/20.
//

import SwiftUI

struct AoC2020View: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    HStack {
                        Image(systemName: "star")
                        Image(systemName: "star")
                        NavigationLink(destination: Day1View2020()) {
                            Text("Day 1")
                        }
                    }
                   
                    Group {
                        Text("Day 2")
                        Text("Day 3")
                        Text("Day 4")
                        Text("Day 5")
                        Text("Day 6")
                        Text("Day 7")
                        Text("Day 8")
                        Text("Day 9")
                    }
                    Group {
                        Text("Day 10")
                        Text("Day 11")
                        Text("Day 12")
                        Text("Day 13")
                        Text("Day 14")
                        Text("Day 15")
                        Text("Day 16")
                        Text("Day 17")
                        Text("Day 18")
                    }
                    Group {
                        Text("Day 19")
                        Text("Day 20")
                        Text("Day 21")
                        Text("Day 22")
                        Text("Day 23")
                        Text("Day 24")
                        Text("Day 25")
                    }
                }
            }
        }
    }
}

struct AoC2020View_Previews: PreviewProvider {
    static var previews: some View {
        AoC2020View()
    }
}
