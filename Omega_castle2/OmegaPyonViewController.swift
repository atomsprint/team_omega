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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        OmegaPyonImage.image = #imageLiteral(resourceName: "OmegaPyon1")
        OmegaPyonText.text = """
            私の名前はオメガぴょんだよ!
            『レベルアップ』を押すと私が進化するよ。
            """
        OmegaPyonLevel.text = "Level 1"
    }
    var index = 0
    var level = 1
    
    @IBAction func ChangeOmegaPyons(_ sender: Any) {
        
        let array = [#imageLiteral(resourceName: "OmegaPyon1"),#imageLiteral(resourceName: "OmegaPyon2"),#imageLiteral(resourceName: "OmegaPyon3"),#imageLiteral(resourceName: "OmegaPyon4"),#imageLiteral(resourceName: "OmegaPyon5"),#imageLiteral(resourceName: "OmegaPyon6"),#imageLiteral(resourceName: "OmegaPyon7"),#imageLiteral(resourceName: "OmegaPyon8"),#imageLiteral(resourceName: "OmegaPyon9"),#imageLiteral(resourceName: "OmegaPyon10"),#imageLiteral(resourceName: "OmegaPyon11")]
        let array2 = ["""
私の名前はオメガぴょんだよ!
オメガ酸が入った魚を食べて元気いっぱいです!
私は城巡りが大好きで、みんなと一緒に城を攻略するのが楽しみ!!!
""","""
私、お座りができるようになったの!
やっぱり城巡りは好きだけどね。
""","""
私、今度は四足歩行ができるようになったの!!
もっと成長していくよ。
""","""
今度は私、なんと二足歩行が出来るようになったの!!
どのお城に二足歩行で行こうかな?
""","""
今度は私、道具を手に入れたわ!!
今度は私がお城を作っちゃおうかな?
""","""
今度は私、森から出てきて貧乏だけど農民になったの!!
貧乏でも服がきれて暖かい。
夜でも寒くないから色々なことができちゃう。
""","""
私ね、今度は火を手にいれて大好きなオメガ3脂肪酸の入ったサケを焼いているんだ。
美味しそうに焼けてきたね。
みんなも食べたい?
""","""
私ね、今度は裕福な農民になったの。
今まで貧乏で自分で何とかして生きてきたけど、
裕福になってみんなと一緒に美味しいお米を作れるようになったよ。
みんなもお米好き?
""","""
私は今度足軽になったの!!
裕福な農民だったけど隣町に住んでいる関白秀吉様が足軽にしてくださったの!!だって槍の技を認めてくれたんだもん。
よし、一番先に敵を倒しちゃえ!!
""","""
今度は関白様に武将にしてもらったの!!
だから私、兜や甲冑をつけてかっこよくなったの!!
だから頑張っていっぱい敵を倒すんだ。
""","""
今度は関白様に大将にしてもらったの!!
だから私はね、全ての軍隊を指揮することになったの。
自分も敵に撃たれないように気をつけなきゃね。
"""]
        
        let array3 = ["Level 1","Level 2","Level 3","Level 4","Level 5","Level 6","Level 7","Level 8","Level 9","Level 10","Level 11"]
        
        index += 1
        if index >= array.count {
            index = 0
        }
        if index >= array2.count {
            index = 0
        }
        if index >= array3.count {
            index = 0
        }
            OmegaPyonImage.image = array[index]
            OmegaPyonText.text = array2[index]
            OmegaPyonLevel.text = array3[index]
        }
    }
