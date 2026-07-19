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
    @IBOutlet weak var Castle_Explanation: UITextView!
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
            CastleData(name: "会津若松城", image: UIImage(named: "Aizuwakamatu")!, explanation: "至徳元年（1384)に葦名直盛が東黒川館を築いたのを起源とし、その後豊臣秀吉の家臣であった蒲生氏郷が会津若松城（鶴ヶ城）に改名するとともに、東日本で初の本格的な天守閣を建てた。北国の雪や寒さに耐えられるよう鉄分を多く含んだ釉薬を用いた赤煉瓦を開発した。現在この赤煉瓦を用いた天守をいることができるのは会津若松城だけである。明治維新における新政府軍と旧幕府軍の戦いである戊辰戦争では会津藩が戦場となり多くの命が奪われた。旧幕府軍であった会津藩は賊軍の汚名を着せられて会津若松城に1ヶ月の籠城の末に降伏した。福島県にある。"),
            CastleData(
                name: "忍城",
                image: UIImage(named: "Oshi")!,
                explanation: """
            忍城は現在の埼玉県行田市にある城です。15世紀後半に成田氏によって築かれました。沼地や湿地に囲まれていたため、石田三成の水攻めにも耐え、「浮城」と呼ばれました。関東七名城の一つで、難攻不落の城として有名です。
            """
            ),

            CastleData(
                name: "小田原城",
                image: UIImage(named: "Odawara")!,
                explanation: """
            小田原城は神奈川県小田原市にあります。後北条氏が約100年間本拠地としました。上杉謙信や武田信玄にも落とされなかったため、「難攻不落の城」と呼ばれます。1590年に豊臣秀吉の小田原征伐によって開城しました。
            """
            ),

            CastleData(
                name: "上田城",
                image: UIImage(named: "Ueda")!,
                explanation: """
            上田城は1583年に真田昌幸が築いた城です。天然の堀として千曲川を利用し、徳川軍を2度撃退したことで有名です。現在も西櫓などが残り、長野県上田市のシンボルとなっています。
            """
            ),

            CastleData(
                name: "松本城",
                image: UIImage(named: "Matumoto")!,
                explanation: """
            松本城は石川数正・康長親子によって築かれた城です。現存12天守の一つで国宝に指定されています。黒い天守が美しいことから「烏城」と呼ばれ、日本最古の五重六階天守として知られています。
            """
            ),

            CastleData(
                name: "金沢城",
                image: UIImage(named: "Kanazawa")!,
                explanation: """
            金沢城は佐久間盛政が築き、その後前田利家が大改修しました。「石垣の博物館」と呼ばれるほど様々な石垣を見ることができます。日本では珍しい鉛瓦が使われていることでも有名です。
            """
            ),

            CastleData(
                name: "丸岡城",
                image: UIImage(named: "Maruoka")!,
                explanation: """
            丸岡城は1575年に柴田勝豊によって築かれました。現存12天守の一つで、自然石を使った野面積みの石垣や石瓦の屋根が特徴です。福井県坂井市にあります。
            """
            ),

            CastleData(
                name: "犬山城",
                image: UIImage(named: "Inuyama")!,
                explanation: """
            犬山城は愛知県犬山市にある国宝の城です。現存12天守の一つで、日本最古級の木造天守として有名です。木曽川沿いの高台に建ち、美しい景色を楽しめます。
            """
            ),

            CastleData(
                name: "名古屋城",
                image: UIImage(named: "Nagoya")!,
                explanation: """
            名古屋城は徳川家康によって築かれました。天守の屋根にある金のしゃちほこが有名です。天下普請によって多くの大名が築城に参加し、本丸御殿も豪華な造りとなっています。
            """
            ),

            CastleData(
                name: "長篠城",
                image: UIImage(named: "Nagashino")!,
                explanation: """
            長篠城は1508年に菅沼元成が築いた城です。長篠の戦いでは織田・徳川連合軍が武田軍を破り、織田信長の三段撃ちで有名になりました。愛知県新城市にあります。
            """
            ),

            CastleData(
                name: "彦根城",
                image: UIImage(named: "Hikone")!,
                explanation: """
            彦根城は井伊家の居城で、国宝に指定されている現存天守です。別名は金亀城。琵琶湖を一望でき、美しい玄宮園や「ひこにゃん」でも有名です。
            """
            ),
            CastleData(
                name: "安土城",
                image: UIImage(named: "Azuchi")!,
                explanation: """
            1576年、織田信長が琵琶湖に突き出した山に築いた城です。日本で初めて本格的な天守を持つ城とされ、全体を高い石垣で囲んだ革新的な城でした。天守は5重6階地下1階で、豪華な造りが特徴でした。滋賀県にあります。
            """
            ),

            CastleData(
                name: "大阪城",
                image: UIImage(named: "Osaka")!,
                explanation: """
            豊臣秀吉が全国統一の本拠地として築いた城です。完成まで約15年かかりました。黒い外壁に金箔を施した美しい天守から「錦城」とも呼ばれます。大阪冬の陣・夏の陣では豊臣家最後の戦いの舞台となりました。
            """
            ),

            CastleData(
                name: "竹田城",
                image: UIImage(named: "Takeda")!,
                explanation: """
            兵庫県朝来市にある山城です。雲海に浮かぶ姿から「天空の城」と呼ばれています。野面積みの石垣が美しく、関ヶ原の戦いの後に廃城となりました。
            """
            ),

            CastleData(
                name: "赤穂城",
                image: UIImage(named: "Ako")!,
                explanation: """
            兵庫県赤穂市にある城です。1648年から浅野長直によって大改修されました。変形輪郭式の縄張りが特徴で、天守台はありますが天守は築かれませんでした。旧赤穂城庭園は国の名勝に指定されています。
            """
            ),

            CastleData(
                name: "姫路城",
                image: UIImage(named: "Himeji")!,
                explanation: """
            兵庫県姫路市にある世界文化遺産です。白漆喰で覆われた美しい姿から「白鷺城」と呼ばれています。池田輝政によって現在の姿に大改修され、日本を代表する名城です。
            """
            ),

            CastleData(
                name: "松江城",
                image: UIImage(named: "Matue")!,
                explanation: """
            島根県松江市にある国宝の現存12天守の一つです。堀尾吉晴によって築かれました。天守には石落としや狭間など多くの防御設備があり、別名は「千鳥城」です。
            """
            ),

            CastleData(
                name: "鬼ノ城",
                image: UIImage(named: "Kino")!,
                explanation: """
            岡山県総社市にある古代山城です。築城者は不明で、「謎の城」とも呼ばれています。温羅（うら）伝説や桃太郎伝説の舞台としても知られ、天守は存在しません。
            """
            ),

            CastleData(
                name: "丸亀城",
                image: UIImage(named: "Marukame")!,
                explanation: """
            香川県丸亀市にある現存12天守の一つです。「石垣の名城」として知られ、高く美しい石垣が特徴です。一度廃城となりましたが、その後再築されました。
            """
            ),

            CastleData(
                name: "高知城",
                image: UIImage(named: "Kochi")!,
                explanation: """
            山内一豊によって築かれた高知県の城です。別名は「鷹城」。現存する天守と本丸御殿がそろって残る数少ない城で、1727年の大火後に再建されました。
            """
            ),

            CastleData(
                name: "熊本城",
                image: UIImage(named: "Kumamoto")!,
                explanation: """
            加藤清正によって築かれた名城です。別名は「銀杏城」。武者返しと呼ばれる石垣や約120本の井戸を備えた難攻不落の城として知られています。熊本地震では「奇跡の一本石垣」が話題となりました。
            """
            )
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

    @IBAction func Oshi(_ sender: Any) {
        showDetail(index: 5)
    }

    @IBAction func Odawara(_ sender: Any) {
        showDetail(index: 6)
    }

    @IBAction func Ueda(_ sender: Any) {
        showDetail(index: 7)
    }

    @IBAction func Matumoto(_ sender: Any) {
        showDetail(index: 8)
    }

    @IBAction func Kanazawa(_ sender: Any) {
        showDetail(index: 9)
    }

    @IBAction func Maruoka(_ sender: Any) {
        showDetail(index: 10)
    }

    @IBAction func Inuyama(_ sender: Any) {
        showDetail(index: 11)
    }

    @IBAction func Nagoya(_ sender: Any) {
        showDetail(index: 12)
    }

    @IBAction func Nagashino(_ sender: Any) {
        showDetail(index: 13)
    }

    @IBAction func Hikone(_ sender: Any) {
        showDetail(index: 14)
    }

    @IBAction func Azuchi(_ sender: Any) {
        showDetail(index: 15)
    }

    @IBAction func Osaka(_ sender: Any) {
        showDetail(index: 16)
    }

    @IBAction func Takeda(_ sender: Any) {
        showDetail(index: 17)
    }

    @IBAction func Ako(_ sender: Any) {
        showDetail(index: 18)
    }

    @IBAction func Himeji(_ sender: Any) {
        showDetail(index: 19)
    }

    @IBAction func Matue(_ sender: Any) {
        showDetail(index: 20)
    }

    @IBAction func Kino(_ sender: Any) {
        showDetail(index: 21)
    }

    @IBAction func Marugame(_ sender: Any) {
        showDetail(index: 22)
    }

    @IBAction func Kochi(_ sender: Any) {
        showDetail(index: 23)
    }

    @IBAction func Kumamoto(_ sender: Any) {
        showDetail(index: 24)
    }
    
    var num = 0

    let images: [UIImage] = [
        #imageLiteral(resourceName: "Goryokaku"),
        #imageLiteral(resourceName: "Hirosaki"),
        #imageLiteral(resourceName: "Sendai"),
        #imageLiteral(resourceName: "Yamagata"),
        #imageLiteral(resourceName: "Aizuwakamatu"),
        #imageLiteral(resourceName: "Oshi"),
        #imageLiteral(resourceName: "Odawara"),
        #imageLiteral(resourceName: "Ueda"),
        #imageLiteral(resourceName: "Matumoto"),
        #imageLiteral(resourceName: "Kanazawa"),
        #imageLiteral(resourceName: "Maruoka"),
        #imageLiteral(resourceName: "Inuyama"),
        #imageLiteral(resourceName: "Nagoya"),
        #imageLiteral(resourceName: "Nagashino"),
        #imageLiteral(resourceName: "Hikone"),
        #imageLiteral(resourceName: "Azuchi"),
        #imageLiteral(resourceName: "Osaka"),
        #imageLiteral(resourceName: "Takeda"),
        #imageLiteral(resourceName: "Ako"),
        #imageLiteral(resourceName: "Himeji"),
        #imageLiteral(resourceName: "Matue"),
        #imageLiteral(resourceName: "Kino"),
        #imageLiteral(resourceName: "Marukame"),
        #imageLiteral(resourceName: "Kochi"),
        #imageLiteral(resourceName: "Kumamoto")
    ]
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
