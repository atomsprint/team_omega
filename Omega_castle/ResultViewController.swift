//
//  ResultViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/03/07.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    var score: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        addPoint()
        showResult()
    }

    func addPoint() {

        //現在のポイント
        var point = UserDefaults.standard.integer(forKey: "POINT")

        //1問10ポイント
        point += score * 10

        //保存
        UserDefaults.standard.set(point, forKey: "POINT")
    }

    func showResult() {

        if score == 7{
            resultLabel.text = "⭐️💫🌟🥇かんぺき!!🥇🌟💫⭐️"
        }else if score == 6{
            resultLabel.text = "💫🌟もう一息!!頑張れ!!🌟💫"
        }else if score == 5{
            resultLabel.text = "🌟おしい!!🌟"
        }else if score == 4{
            resultLabel.text = "🌟⭐️🥈ちょっと間違えちゃった...🥈⭐️🌟"
        }else if score == 3{
            resultLabel.text = "💫🥈もう少し頑張ろう!!🥈💫"
        }else if score == 2{
            resultLabel.text = "⭐️🥉もっと頑張ろう!!🥉⭐️"
        }else if score == 1{
            resultLabel.text = "📚もっともっと頑張ろう📚"
        }else{
            resultLabel.text = "😭君はお城博士に向いていない...😭"
        }
    }

}
