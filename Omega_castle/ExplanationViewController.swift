//
//  ExplanationViewController.swift
//  Omega_castle
//
//  Created by Takahashi Haruno on 2026/05/15.
//

import UIKit

class ExplanationViewController: UIViewController {
    
    @IBOutlet weak var Castle_Image: UIImageView!
    @IBOutlet weak var Castle_Name: UILabel!
    @IBOutlet weak var Castle_Explanation: UILabel!

    var selectedIndex: Int = 0
    
    // 1. お城の情報をまとめる型を作る
    struct CastleData {
        let name: String
        let image: UIImage
        let explanation: String
    }

    // 2. 26城分のデータを配列にする
    var castleList: [CastleData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ここでデータを登録する（本来はCSVLoaderを使うのが理想的です）
        castleList = [
            CastleData(name: "五稜郭", image: UIImage(named: "Goryokaku")!, explanation: "江戸時代、蝦夷地と呼ばれていた北の地に建てられた。当時は水はけの悪い土地で、至る所に柳が生えていたことから柳野城という別名がついた。星型には2つの目的があったと考えられている。一つ目はどの方向から攻められても必ず2方向から銃砲で反撃できる「十字砲火」を可能すること。もう一つは諸外国への技術力や軍事力をアピールであった。18世紀末から19世紀の初め、ロシアの南下政策に感じた幕府は、松前藩に代わって蝦夷地を自ら直轄し、その後、五稜郭を築城することにした。星型の城（西洋式稜堡式城郭）は、北海道函館市の「五稜郭」と、長野県佐久市の「龍岡城」の2カ所のみ現存。1855年（安政2年）に函館に来たフランス軍艦コンスタンティーン号の軍人からパリの都市要塞について学んだ。明治元年(1868)8月，品川沖を脱走した旧幕府脱走軍艦隊が蝦夷地へ到着し、戊辰戦争の最後の戦いとなる箱館戦争が開始された。脱走軍の最大の砦であった弁天岬台場がほとんど壊滅状態となり，その救援に向かった新撰組副長の土方歳三は異国橋（いこくばし。現在の十字街電停付近）あたりで銃弾に撃たれて戦死した。"),
            CastleData(name: "弘前城", image: UIImage(named: "Hirosaki")!, explanation: "1590年津軽地方を統一した津軽為朝が領地を開拓して築城を計画したが、志半ばで病没したため三男の信牧が後を継いだ。全国に12城ある現存天守の一つで、武家諸法度で天守閣の再建が厳しく規制されていた江戸時代後期に再建された珍しい建物である。また、北側には武家屋敷も残っている。弘前城内には2,600本もの桜の木が植えられていると言われており、日本三大桜の名称として来場者の目を楽しませてくれる。青森県にある。"),
            CastleData(name: "仙台城", image: UIImage(named: "Sendai")!, explanation: "1600年、伊達政宗が青葉山に築城を開始。広瀬川を作る断崖や、渓谷に囲まれた攻めにくい城だ。天守は無かったが、豪華な本丸御殿が建っていた。その中心となる大広間は千畳敷と呼ばれ、華やかふすま絵などで飾られた、見事な部屋があった。本丸北壁の石垣は、長さ約179m、高い所で約17mもある。3回改修されていて、最も古いのは政宗が積んだもの。政宗の子供の忠宗が二の丸を作ると二の丸が政治の中心地になった。宮城県にある。"),
            CastleData(name: "山形城", image: UIImage(named: "Yamagata")!, explanation: "山形城は最上義光によって現在の原型になる城郭の大改修が行われた。関ヶ原の戦いで東軍へ加担し、家康から57万石の領地を認められた。山形城は本丸・二の丸・三の丸の三重の堀と土塁で囲まれた、全国有数の規模を持つ輪郭式の平常である。本丸は御殿のみで天守はなかったが、二の丸には三階櫓があった。現在は二の丸や堀、土塁が残っている。二の丸北側の土塁では全校で初の屏風折れ土塀の基礎が発見された。山形県にある。"),
            CastleData(name: "会津若松城", image: UIImage(named: "Aizuwakamatu")!, explanation: "弘前城の説明文..."),
            // ...26個分続く
        ]
        showDetail(index: selectedIndex)
    }
    
    func showDetail(index: Int) {
        // 配列の範囲内かチェックして安全に表示
        if index < castleList.count {
            let castle = castleList[index]
            Castle_Name.text = castle.name
            Castle_Image.image = castle.image
            Castle_Explanation.text = castle.explanation
        }
    }

    @IBAction func Goryokaku(_ sender: Any) {
        showDetail(index: 0)
    }

    @IBAction func Hirosaki(_ sender: Any) {
        showDetail(index: 1)
    }

    @IBAction func Sendai(_ sender: Any) {
        showDetail(index: 2)
    }
    @IBAction func Yamagata(_ sender: Any) {
        showDetail(index: 3)
    }
    @IBAction func Aizuwakamatu(_ sender: Any) {
        showDetail(index: 4)
    }
    @IBAction func Oshi(_ sender: Any) {
    }
    @IBAction func Odawara(_ sender: Any) {
    }
    @IBAction func Ueda(_ sender: Any) {
    }
    @IBAction func Matumoto(_ sender: Any) {
    }
    @IBAction func Kanazawa(_ sender: Any) {
    }
    @IBAction func Maruoka(_ sender: Any) {
    }
    @IBAction func Inuyama(_ sender: Any) {
    }
    @IBAction func Nagoya(_ sender: Any) {
    }
    @IBAction func Nagashino(_ sender: Any) {
    }
    @IBAction func Hikone(_ sender: Any) {
    }
    @IBAction func Azuchi(_ sender: Any) {
    }
    @IBAction func Osaka(_ sender: Any) {
    }
    @IBAction func Takeda(_ sender: Any) {
    }
    @IBAction func Ako(_ sender: Any) {
    }
    @IBAction func Himeji(_ sender: Any) {
    }
    @IBAction func Matue(_ sender: Any) {
    }
    @IBAction func Kino(_ sender: Any) {
    }
    @IBAction func Marugame(_ sender: Any) {
    }
    @IBAction func Kochi(_ sender: Any) {
    }
    @IBAction func Kumamoto(_ sender: Any) {
    }
    
    var num = 0
    let images = [#imageLiteral(resourceName: "Goryokaku"), #imageLiteral(resourceName: "Hirosaki"), #imageLiteral(resourceName: "Sendai"), #imageLiteral(resourceName: "Yamagata"), #imageLiteral(resourceName: "Aizuwakamatu"), #imageLiteral(resourceName: "Oshi"), #imageLiteral(resourceName: "Odawara"), #imageLiteral(resourceName: "Ueda"), #imageLiteral(resourceName: "Matumoto"), #imageLiteral(resourceName: "Kanazawa"), #imageLiteral(resourceName: "Maruoka"), #imageLiteral(resourceName: "Inuyama"), #imageLiteral(resourceName: "Nagoya"), #imageLiteral(resourceName: "Nagashino"), #imageLiteral(resourceName: "Shri"), #imageLiteral(resourceName: "Hikone"), #imageLiteral(resourceName: "Azuchi"), #imageLiteral(resourceName: "Osaka"), #imageLiteral(resourceName: "Takeda"), #imageLiteral(resourceName: "Ako"), #imageLiteral(resourceName: "Himeji"), #imageLiteral(resourceName: "Matue"), #imageLiteral(resourceName: "Kino"), #imageLiteral(resourceName: "Marukame"), #imageLiteral(resourceName: "Kochi"),#imageLiteral(resourceName: "Kumamoto")]
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
