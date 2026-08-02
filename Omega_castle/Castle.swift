//
//  Castle.swift
//  Omega_Castle
//
//  Created by 鈴木久美 on 2026/08/02.
//

import Foundation


class Castle {

    var CastleName: String
    var BuiltPeople: String
    var Explanation: String
    var region: String
    var English: String
    var alias: String
    var URL: String
    var place: String
    
    var category1: String
    var category2: String
    var category3: String
    var category4: String
    

    init(row:[String]) {

        CastleName = row.count > 0 ? row[0] : "不明"

        BuiltPeople = row.count > 1 ? row[1] : "不明"

        Explanation = row.count > 2 ? row[2] : "説明なし"

        region = row.count > 3 ? row[3] : "不明"

        English = row.count > 4 ? row[4] : "不明"

        alias = row.count > 5 ? row[5] : "不明"

        URL = row.count > 6 ? row[6] : "不明"

        place = row.count > 7 ? row[7] : "不明"


        category1 = row.count > 8 ? row[8] : ""

        category2 = row.count > 9 ? row[9] : ""

        category3 = row.count > 10 ? row[10] : ""

        category4 = row.count > 11 ? row[11] : ""

    }
}
