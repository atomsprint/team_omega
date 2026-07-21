//
//  OmegapyonViewController.swift
//  SwichScreenApp
//  test
//  Created by Takahashi Haruno on 2025/12/24.
//

import UIKit

class OmegaPyonViewController: UIViewController {

    @IBOutlet weak var OmegaPyonImage: UIImageView!
    @IBOutlet weak var OmegaPyonText: UITextView!
    @IBOutlet weak var OmegaPyonLevel: UILabel!

    // 追加（StoryboardでUILabelをつなぐ）
    @IBOutlet weak var pointLabel: UILabel!

    let images: [UIImage] = [
        #imageLiteral(resourceName: "OmegaPyon1_2"),
        #imageLiteral(resourceName: "OmegaPyon2_2"),
        #imageLiteral(resourceName: "OmegaPyon3_2"),
        #imageLiteral(resourceName: "OmegaPyon4_2"),
        #imageLiteral(resourceName: "OmegaPyon5_2"),
        #imageLiteral(resourceName: "OmegaPyon6_2"),
        #imageLiteral(resourceName: "OmegaPyon7_2"),
        #imageLiteral(resourceName: "OmegaPyon8_2"),
        #imageLiteral(resourceName: "OmegaPyon9_2"),
        #imageLiteral(resourceName: "OmegaPyon10_2"),
        #imageLiteral(resourceName: "OmegaPyon11_2"),
        #imageLiteral(resourceName: "OmegaPyon12_2")
    ]

    let texts = [

"""
私の名前はオメガぴょんだよ!
オメガ酸が入った魚を食べて元気いっぱいです!
私は城巡りが大好きで、みんなと一緒に城を攻略するのが楽しみ!!!
""",

"""
私、お座りができるようになったの!
やっぱり城巡りは好きだけどね。
""",

"""
私、今度は四足歩行ができるようになったの!!
もっと成長していくよ。
""",

"""
今度は私、なんと二足歩行が出来るようになったの!!
どのお城に二足歩行で行こうかな?
""",

"""
今度は私、道具を手に入れたわ!!
今度は私がお城を作っちゃおうかな?
""",

"""
今度は私、森から出てきて貧乏だけど農民になったの!!
貧乏でも服が着れて暖かい。
夜でも寒くないから色々なことができちゃう。
""",

"""
私ね、今度は火を手に入れて大好きなオメガ3脂肪酸の入ったサケを焼いているんだ。
美味しそうに焼けてきたね。
みんなも食べたい?
""",

"""
私ね、今度は裕福な農民になったの。
今まで貧乏で自分で何とかして生きてきたけど、
裕福になってみんなと一緒に美味しいお米を作れるようになったよ。
みんなもお米好き?
""",

"""
私は今度足軽になったの!!
関白秀吉様が足軽にしてくださったの!!
槍の技を認めてもらったんだ!!
""",

"""
今度は関白様に武将にしてもらったの!!
兜や甲冑をつけてかっこよくなったよ!!
""",

"""
今度は関白様に大将にしてもらったの!!
私は全軍を指揮する大将になったんだ!!
""",
"""
今度は関白様に殿様にしてもらったの!!
私は全軍を指揮する殿様になったんだ!!
"""
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        updateOmegaPyon()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // クイズ終了後に戻ってきたときも更新
        updateOmegaPyon()
    }

    func updateOmegaPyon() {

        let point = UserDefaults.standard.integer(forKey: "POINT")

        // 100ポイントごとにレベルアップ
        var level = point / 500

        // 最大レベル11
        if level > 11 {
            level = 11
        }

        OmegaPyonImage.image = images[level]
        OmegaPyonText.text = texts[level]
        OmegaPyonLevel.text = "Level \(level + 1)"
        pointLabel.text = "ポイント : \(point)"
    }

}
