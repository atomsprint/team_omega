//
//  Q5answerViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/02/13.
//

import UIKit

class Q5answerViewController: UIViewController {
    @IBOutlet weak var Q5textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // リッチテキストを設定
        setupRichContent()
    }
    
    func setupRichContent() {
        let attributedString = NSMutableAttributedString()
        
        // フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize: 24)
        let bodyFont = UIFont.systemFont(ofSize: 16)
        let maxWidth = view.bounds.width - 40
        
        // === タイトル ===
        let title = "クイズ答え合わせ\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes: [.font: titleFont]
        ))
        
        // === 本文1 ===
        let text1 = "国宝。現存12天守の一つ。５重の天守は黒漆塗りの下見板張（現在も本物の漆）。　　　　本丸正門の復元された黒門は侵入者が直進出来ない枡形門で、一の門が櫓門、二の門は高麗門になっている。\n\n"
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        // === 画像1を挿入 ===
        if let image = UIImage(named: "松本城") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
        // === 本文2 ===
        let text2 = "\n\n天守4階の階段は、日本一急で61度の角度。　　　　　　　　　　　　　石落とし11ヶ所。鉄砲狭間と矢狭間の合計125箇所。　　　　　　　　　　　　金箔瓦。　　　　　　　　　　　　　　乾小天守の丸太柱は日本唯一。\n\n"
        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))
        
        // === 画像2を挿入 ===
        if let image = UIImage(named: "松本城") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
        // === 最後の文章 ===
        let text3 = "\n\n一の門の左に巨石『玄蕃石』がある。推定２６.５トン。石垣は自然石をそのまま積み上げる野面積み。勾配は緩やかで直線的に積み上げられている。　　　　　　　天守のある本丸を囲むように、三重の水堀がめぐる平城。\n\n"
        attributedString.append(NSAttributedString(
            string: text3,
            attributes: [.font: bodyFont]
        ))
        
        // テキストビューに設定
        Q5textView.attributedText = attributedString
    }
}
