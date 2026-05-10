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
    var alias: String
    var English: String
    var URL: String
    var place: String
    var category1: String
    var category2: String
    var category3: String
    var category4: String
    var Explanation: String
    var region: String
    init(row: [String]) {
        self.CastleName = row.count > 0 ? row[0] : "不明"
        self.BuiltPeople = row.count > 1 ? row[1] : "不明"
        self.English = row.count > 4 ? row[4] : "不明"
        self.alias = row.count > 5 ? row[5] : "不明"
        self.URL = row.count > 6 ? row[6] : "不明"
        self.place = row.count > 7 ? row[7] : "不明"
        self.region = row.count > 3 ? row[3] : "不明"
        
        self.category1 = row.count > 10 ? row[10].trimmingCharacters(in: .whitespacesAndNewlines) : ""
        self.category2 = row.count > 11 ? row[11].trimmingCharacters(in: .whitespacesAndNewlines) : ""
        self.category3 = row.count > 12 ? row[12].trimmingCharacters(in: .whitespacesAndNewlines) : ""
        self.category4 = row.count > 13 ? row[13].trimmingCharacters(in: .whitespacesAndNewlines) : ""
        
        self.Explanation = row.count > 2 ? row[2] : "説明なし"
    }
}

