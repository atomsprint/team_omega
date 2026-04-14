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
    
    init(row: [String]) {
        self.CastleName = row.count > 0 ? row[0] : "不明"
        self.BuiltPeople = row.count > 2 ? row[2] : "不明"
        self.Explanation = row.count > 3 ? row[3] : "不明"
    }
}
