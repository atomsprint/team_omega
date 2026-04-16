//
//  CSVLoader.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/04/14.
//

import Foundation

class CSVLoader {
    
    static func load() -> [Castle] {
        var castles = [Castle]()
        
        guard let path = Bundle.main.path(forResource: "castles", ofType: "csv") else {
            print("CSV file not found")
            return castles
        }
        
        do {
            let csvString = try String(contentsOfFile: path, encoding: .utf8)
            let lines = csvString.components(separatedBy: .newlines)
            
            for line in lines {
                if line.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    continue
                }
                
                let columns = parseCSVLine(line)
                
                if columns.count >= 15 {
                    castles.append(Castle(row: columns))
                } else {
                    print("列数不足:", columns.count, columns)
                }
            }
            
        } catch {
            print("CSV Error: \(error)")
        }
        
        return castles
    }
    
    static func parseCSVLine(_ line: String) -> [String] {
        var result: [String] = []
        var current = ""
        var insideQuotes = false
        
        for char in line {
            if char == "\"" {
                insideQuotes.toggle()
            } else if char == "," && !insideQuotes {
                result.append(current.trimmingCharacters(in: .whitespacesAndNewlines))
                current = ""
            } else {
                current.append(char)
            }
        }
        
        result.append(current.trimmingCharacters(in: .whitespacesAndNewlines))
        return result
    }
}
