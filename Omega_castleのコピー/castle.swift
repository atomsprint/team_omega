//
//  castle.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/04/14.
//

import Foundation

class Castle {
    var CastleName: String
    var BuiltPeople: String
    var Explanation: String
    var category1: String
    var category2: String
    var category3: String
    var category4: String
    
    init(row: [String]) {
        self.CastleName = row.count > 0 ? row[0] : "不明"
        self.BuiltPeople = row.count > 2 ? row[2] : "不明"
        self.category1 = row.count > 10 ? row[10].trimmingCharacters(in: .whitespacesAndNewlines) : ""
        self.category2 = row.count > 11 ? row[11].trimmingCharacters(in: .whitespacesAndNewlines) : ""
        self.category3 = row.count > 12 ? row[12].trimmingCharacters(in: .whitespacesAndNewlines) : ""
        self.category4 = row.count > 13 ? row[13].trimmingCharacters(in: .whitespacesAndNewlines) : ""
        self.Explanation = row.count > 3 ? row[3] : "不明"
    }
}
