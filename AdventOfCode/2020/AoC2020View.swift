//
//  AoC2020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/30/20.
//

import SwiftUI

struct AoC2020View: View {
    @State private var selection: String? = "day9"
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    Group {
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            NavigationLink(destination: Day1View2020(), tag: "day1", selection: $selection) {
                                Text("Day 1")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            NavigationLink(destination: Day2View2020(), tag: "day2", selection: $selection) {
                                Text("Day 2")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            NavigationLink(destination: Day3View2020(), tag: "day3", selection: $selection) {
                                Text("Day 3")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            NavigationLink(destination: Day4View2020(), tag: "day4", selection: $selection) {
                                Text("Day 4")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            NavigationLink(destination: D52020View(), tag: "day5", selection: $selection) {
                                Text("Day 5")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            NavigationLink(destination: D62020View(), tag: "day6", selection: $selection) {
                                Text("Day 6")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            NavigationLink(destination: D72020View(), tag: "day7", selection: $selection) {
                                Text("Day 7")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            NavigationLink(destination: D82020View(), tag: "day8", selection: $selection) {
                                Text("Day 8")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: D92020View(), tag: "day9", selection: $selection) {
                                Text("Day 9")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 10"), tag: "day10", selection: $selection) {
                                Text("Day 10")
                            }
                        }
                    }
                    
                    Group {
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 11"), tag: "day11", selection: $selection) {
                                Text("Day 11")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 12"), tag: "day12", selection: $selection) {
                                Text("Day 12")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 13"), tag: "day13", selection: $selection) {
                                Text("Day 13")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 14"), tag: "day14", selection: $selection) {
                                Text("Day 14")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 15"), tag: "day15", selection: $selection) {
                                Text("Day 15")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 16"), tag: "day16", selection: $selection) {
                                Text("Day 16")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 17"), tag: "day17", selection: $selection) {
                                Text("Day 17")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 18"), tag: "day18", selection: $selection) {
                                Text("Day 18")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 19"), tag: "day19", selection: $selection) {
                                Text("Day 19")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 20"), tag: "day20", selection: $selection) {
                                Text("Day 20")
                            }
                        }
                    }
                    
                    Group {
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 21"), tag: "day21", selection: $selection) {
                                Text("Day 21")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 22"), tag: "day22", selection: $selection) {
                                Text("Day 22")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 23"), tag: "day23", selection: $selection) {
                                Text("Day 23")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 24"), tag: "day24", selection: $selection) {
                                Text("Day 24")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "star").foregroundColor(.yellow)
                            Image(systemName: "star").foregroundColor(.yellow)
                            NavigationLink(destination: Text("Day 25"), tag: "day25", selection: $selection) {
                                Text("Day 25")
                            }
                        }
                    }
                }
            }
        }
    }
}
