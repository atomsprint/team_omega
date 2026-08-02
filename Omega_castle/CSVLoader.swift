//
//  Caslte.swift
//  Omega_Castle
//
//  Created by 鈴木久美 on 2026/08/02.
//

import Foundation


class CSVLoader {

    static func loadCSV() -> [Castle] {

        var castles:[Castle] = []


        // CSVファイルを探す
        guard let path = Bundle.main.path(
            forResource: "castles",
            ofType: "csv"
        ) else {

            print("CSVファイルがありません")
            return []
        }


        do {

            let csvString = try String(
                contentsOfFile: path,
                encoding: .utf8
            )


            // 改行ごとに分割
            let rows = csvString.components(
                separatedBy: "\n"
            )


            for row in rows {


                // 空行を無視
                if row.isEmpty {
                    continue
                }


                let columns = parseCSVLine(row)


                let castle = Castle(row: columns)


                castles.append(castle)

            }


        } catch {

            print("CSV読み込み失敗")
        }


        return castles
    }



    // CSVのカンマ分割
    static func parseCSVLine(
        _ line:String
    ) -> [String] {


        var result:[String] = []

        var current = ""

        var insideQuote = false



        for char in line {


            if char == "\"" {

                insideQuote.toggle()

            }


            else if char == "," && !insideQuote {


                result.append(current)

                current = ""

            }


            else {

                current.append(char)

            }

        }


        result.append(current)


        return result

    }

}
