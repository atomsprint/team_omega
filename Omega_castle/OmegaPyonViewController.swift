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
    
    @IBAction func ChangeOmegaPyons(_ sender: Any) {
        
        let array = [#imageLiteral(resourceName: "OmegaPyon1"),#imageLiteral(resourceName: "OmegaPyon2"),#imageLiteral(resourceName: "OmegaPyon3"),#imageLiteral(resourceName: "OmegaPyon4"),#imageLiteral(resourceName: "OmegaPyon5"),#imageLiteral(resourceName: "OmegaPyon6"),#imageLiteral(resourceName: "OmegaPyon7"),#imageLiteral(resourceName: "OmegaPyon8"),#imageLiteral(resourceName: "OmegaPyon9"),#imageLiteral(resourceName: "OmegaPyon10"),#imageLiteral(resourceName: "OmegaPyon11")]
        let array2 = ["""
私の名前はオメガぴょんだよ!
オメガ酸が入った魚を食べて元気いっぱいです!
私は城巡りが大好きで、みんなと一緒に城巡りするのが楽しみ!!!
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
私、火を手に入れたの!!
だからあのオオカミを怖がらずにお城を作れるわ!!
あらいけない!!お城が燃えちゃうわ!!
""","""
今度は私ね、服を着たの!!
服ってあったかいね。
夜でも城巡りが出来ちゃいそう。
""","""
今度は私、帽子を被ったの!!
日差しが暑くないから夏でも城巡りができちゃうわ!!
""","""
私ね、なんとしっぽが長くなって新種になっちゃった。
新種のうさぎがお城に行ったら面白いでしょ。
^_^
""","""
私ね、私ね、今度は羽が生えてオーラが出たの!!
どこのお城にもひとっ飛び。
好きなお城に飛んじゃおう!
""","""
私ね、私、信じられないの!!
天使になっちゃった。
お城をいっぱい作って
私が日本三百名城にしちゃおうかな?
"""]
        
        let array3 = ["Level 1","Level 2","Level 3","Level 4","Level 5","Level 6","Level 7","Level 8","Level 9","Level 10","Level 11"]
        
        index += 1
        if index >= array.count {
            index = 0
            if index >= array2.count {
                index = 0
                if index >= array3.count {
                    index = 0
                }
            }
        }
        OmegaPyonImage.image = array[index]
        OmegaPyonText.text = array2[index]
        OmegaPyonLevel.text = array3[index]
    }
}
