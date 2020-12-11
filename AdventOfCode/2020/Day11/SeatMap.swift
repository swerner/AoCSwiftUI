//
//  SeatMap.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/11/20.
//

import Foundation

class SeatMap: NSObject {
    class SeatPosition: NSObject {
        let row: Int
        let column: Int
        
        init(row: Int, column: Int) {
            self.row = row
            self.column = column
        }
        
        init(description: String) {
            let parts = description.split(separator: ",")
            self.row = Int(parts[0])!
            self.column = Int(parts[1])!
        }
        
        func adjacentPositions() -> [SeatPosition] {
            return [
                SeatPosition(row: self.row - 1, column: self.column), //Above
                SeatPosition(row: self.row + 1, column: self.column), //Below
                SeatPosition(row: self.row, column: self.column - 1), //Left
                SeatPosition(row: self.row, column: self.column + 1), //Right
                SeatPosition(row: self.row - 1, column: self.column - 1), //Top Left
                SeatPosition(row: self.row - 1, column: self.column + 1), //Top Right
                SeatPosition(row: self.row + 1, column: self.column - 1), //Bottom Left
                SeatPosition(row: self.row + 1, column: self.column + 1), //Bottom Right
            ]
        }
        
        func toString() -> String {
            return "\(self.row),\(self.column)"
        }
    }
    
    class Seat: NSObject {
        var status: Character
        
        init(status: Character) {
            self.status = status
        }
    }
    
    var seats: [String:Seat] = [:]
    let rows: Int
    let columns: Int
    
    init(_ lines: [String]) {
        self.rows = lines.count
        self.columns = Array(lines[0]).count
        
        for (rowIndex, line) in lines.enumerated() {
            for (columnIndex, status) in Array(line).enumerated() {
                seats[SeatPosition(row: rowIndex, column: columnIndex).toString()] = Seat(status: status)
            }
        }
    }
    
    func step() {
        var newMap: [String:Seat] = [:]
        
        for (seatPosition, seat) in seats {
            let adjacentOccupiedCount = adjacentOccupiedSeats(position: seatPosition)
                   
            if seat.status == "L" && adjacentOccupiedCount == 0 {
                newMap[seatPosition] = Seat(status: "#")
            } else if seat.status == "#" && adjacentOccupiedCount >= 4 {
                newMap[seatPosition] = Seat(status: "L")
            } else {
                newMap[seatPosition] = seat
            }
        }
        
        self.seats = newMap
    }
    
    func occupiedSeatCount() -> Int {
        var count = 0
        
        for (_, seat) in seats {
            if seat.status == "#" {
                count += 1
            }
        }
        
        return count
    }
    
    func adjacentOccupiedSeats(position: String) -> Int {
        var count = 0
        
        for potentialPosition in SeatPosition(description: position).adjacentPositions() {
            if seats[potentialPosition.toString()]?.status == "#" {
                count += 1
            }
        }
        
        return count
    }
    
    func display() -> String {
        var stringToDisplay = ""
        
        for row in 0..<self.rows {
            var tempString = ""
            
            for column in 0..<self.columns {
                tempString += String(self.seats["\(row),\(column)"]!.status)
            }
            stringToDisplay = stringToDisplay + tempString + "\n"
        }
        
        return stringToDisplay
    }
}
