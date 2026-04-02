//
//  Quiz.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/03/07.
//

import Foundation

struct Quiz {
    let question: String
    let choices: [String]
    let answer: Int
    let explanation: String = "test"
}

let KumamotoQuizzes: [Quiz] = [
    Quiz(question: "加藤清正は秀吉の命令で朝鮮出兵した文禄、慶長の役の時に兵種の確保に苦しみ．あまりの空腹に耐えかね馬すらも口にしたという苦い経験があり、それゆえ熊本城を建てた時には兵糧の確保を頑張ったと言われるが、ここで問題です。熊本物で籠城した時のことを考えて食べられるものとして植えたとされる木は何ですか", choices: ["かきの木","どんぐりの木","みかんの木","銀杏の木"], answer: 3),
    Quiz(question: "清正は熊本城を建てる時、籠城して戦うことを考えてうまいこと兵糧を確保をしました。壁に何をかくしていたのでしょうか。", choices: ["米つぶ","馬の干し肉","じゃかいも","干瓢"], answer: 3),
    Quiz(question: "清正は石垣作りの名人と言われており、防御力を高めるためによじ登ることが困難な角度の急なの石垣を作りましたが、何というものでしょうか。", choices: ["つばめ返し","忍者返し","武者返し","借金返し"], answer: 2),
    Quiz(question: "清正公は籠城する時のために作ったものは何でしょうか", choices: ["抜け道としてのトンネル","長い戦いに備えての大きなお風呂","120箇所の井戸","大きなくみ取り式のトイレ"], answer: 2),
    Quiz(question: "石垣作りの名人とされた清正公ですが2016年の熊本地震で8段12個の石垣だけでギリギリの状態で櫓を支えた寺跡の一本石垣はどの櫓か。", choices: ["宇土櫓","飯田丸五回櫓","監物櫓","北十八間櫓"], answer: 1),
    Quiz(question: "加藤清正が朝鮮を攻めた時に退治した、どうもうな動物とは何でしょうか。", choices: ["熊","ライオン","黒豹","虎"], answer: 3),
    Quiz(question: "熊本城の近くで取れるオメガ３の入った魚は何か", choices: ["太刀魚","鯛","鰹","鰊"], answer: 0)
]

let MatsumotoQuizzes: [Quiz] = [
    Quiz(question: "国宝。日本の城で五つしかないうちの一つ、松本城はどこにあるでしょうか。", choices: ["兵庫県","長野県","岡山県","新潟県"], answer: 1),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から松本城の別名は、", choices: ["白帝城","馬場城","兜城","烏城"], answer: 3),
    Quiz(question: "人は今、世界で増え続けている。昔に松本城を築いた人は?", choices: ["武田信玄","徳川家康","石川数正","豊臣秀吉"], answer: 2),
    Quiz(question: "今は丁度いい角度の階段。松本城はお城の中で日本一急な階段がある。その階段の角度は？", choices: ["23度","59度","72度","61度"], answer: 3),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。松本城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、松本城であった事件とは？", choices: ["お城が傾いた","松本城の宝が無くなった","石川数正を裏切った人がいた","松本城が崩れた"], answer: 0),
    Quiz(question: "松本城の大規模な改修を行った武田信玄は、城を守る上で必要な物質として「米、大豆、薪、味噌、塩、糠、あら、乾魚、海藻」をあげている。この中でオメガ３脂肪酸が含まれるものはどれか。", choices: ["米","大豆","糠","あら"], answer: 3)
]

let MatsueQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、松江城はどこにあるでしょうか。", choices: ["青森県","島根県","福島県","鳥取県"], answer: 1),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から松江城の別名は、", choices: ["鷹城","鶴島城","千鳥城","金鳥城"], answer: 2),
    Quiz(question: "人は今、世界で増え続けている。昔に松江城を築いた人は?", choices: ["池田光政","生駒親正","小笠原忠真","本多利朝"], answer: 0),
    Quiz(question: "今は丁度いい角度の階段。松江城の階段の角度は？", choices: ["47度","50度","59度","32度"], answer: 1),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。松江城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、松江城であった事件とは？", choices: ["城が滅びた","黒松が根こそぎ倒れた","石垣の石が落ちた","将軍がいなくなった"], answer: 1),
    Quiz(question: "松江城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鮭","鱸","鰯","秋刀魚"], answer: 1)
]

let MarukameQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、丸亀城はどこにあるでしょうか。", choices: ["山形県","福島県","鳥取県","香川県"], answer: 3),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から丸亀城の別名は、", choices: ["横山城","鯉城","丸山城","久松城"], answer: 2),
    Quiz(question: "人は今、世界で増え続けている。昔に丸亀城を築いた人は?", choices: ["池田光政","生駒親正","黒田長政","中川秀成"], answer: 1),
    Quiz(question: "今は丁度いい角度の階段。丸亀城の階段の角度は？", choices: ["29度","38度","57度","43度"], answer: 2),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。丸亀城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 3),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、丸亀城であった事件とは？", choices: ["天守閣が壊れた","築城者が行方不明になった","石垣の石が落ちた","将軍が裏切った"], answer: 2),
    Quiz(question: "丸亀城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["太刀魚","メダカ","秋刀魚","沙魚"], answer: 3)
]

let InuyamaQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、犬山城はどこにあるでしょうか。", choices: ["大阪府","栃木県","新潟県","愛知県"], answer: 3),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から犬山城の別名は、", choices: ["丸山城","山城","無鶴城","白帝城"], answer: 3),
    Quiz(question: "人は今、世界で増え続けている。昔に犬山城を築いた人は?", choices: ["徳川家康","織田信康","山内一豊","藤堂高虎"], answer: 1),
    Quiz(question: "今は丁度いい角度の階段。犬山城の階段の角度は？", choices: ["29度","38度","42度","50度"], answer: 3),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。犬山城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、犬山城であった事件とは？", choices: ["主人が自殺した。","天守に攻め込まれた","主人が行方不明","雷でほぼ壊れた"], answer: 3),
    Quiz(question: "犬山城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鯉","虎魚","鯰","公魚"], answer: 2)
]

let KinojoQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、鬼ノ城はどこにあるでしょうか。", choices: ["三重県","群馬県","岡山県","富山県"], answer: 3),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から鬼ノ城の別名は、", choices: ["松尾城","千代田城","矢留城","鬼城山"], answer: 3),
    Quiz(question: "人は今、世界で増え続けている。昔に鬼ノ城を築いた人は?", choices: ["豊臣秀吉","不明","鍋島直正","藤堂高虎"], answer: 1),
    Quiz(question: "今は丁度いい角度の階段。鬼ノ城の階段の角度は？", choices: ["64度","38度","53度","24度"], answer: 1),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。鬼ノ城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、鬼ノ城であった事件とは？", choices: ["兵士がいなくなった","天守に攻め込まれた","忍者に秘密を探られていた","転落事故"], answer: 3),
    Quiz(question: "鬼ノ城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["真鯛","鱧","鰆","太刀魚"], answer: 0)
]

let AzutiQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、安土城はどこにあるでしょうか。", choices: ["佐賀県","滋賀県","埼玉県","山梨県"], answer: 3),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から安土城の別名は、", choices: ["金亀城","稲葉山城","福山城","なし"], answer: 3),
    Quiz(question: "人は今、世界で増え続けている。昔に安土城を築いた人は?", choices: ["豊臣秀吉","織田信康","鍋島直正","藤堂高虎"], answer: 1),
    Quiz(question: "今は丁度いい角度の階段。安土城の階段の角度は？", choices: ["46度","53度","57度","64度"], answer: 2),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。安土城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、安土城であった事件とは？", choices: ["兵士がいなくなった","津波","安土城放火","転落事故"], answer: 2),
    Quiz(question: "安土城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鮎","鯛","鯖","鰤"], answer: 3)
]
        
let OdawaraQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、小田原城はどこにあるでしょうか。", choices: ["京都府","大阪府","神奈川県","東京都"], answer: 2),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から小田原城の別名は、", choices: ["霧ヶ城","なし","佐々木城","鶴ヶ城"], answer: 1),
    Quiz(question: "人は今、世界で増え続けている。昔に小田原城を築いた人は?", choices: ["豊臣秀吉","毛利元就","武田信玄","小田原北条氏"], answer: 3),
    Quiz(question: "今は丁度いい角度の階段。小田原城の階段の角度は？", choices: ["52度","67度","55度","37度"], answer: 2),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。小田原城の石垣の積み方は？", choices: ["らん石","切込接","野面積","打込接"], answer: 0),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、小田原城であった事件とは？", choices: ["石垣が壊れた","松が倒れた","津波","合戦"], answer: 3),
    Quiz(question: "小田原城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鮭","鯖","鱈","鯰"], answer: 1)
]

let YamagataQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、山形城はどこにあるでしょうか。", choices: ["山形県","長崎県","熊本県","青森県"], answer: 0),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から山形城の別名は、", choices: ["喜春城","菖蒲城","霧ヶ城","蕗城"], answer: 1),
    Quiz(question: "人は今、世界で増え続けている。昔に山形城を築いた人は?", choices: ["豊臣秀吉","京極高和","浅野長直","最上義光"], answer: 3),
    Quiz(question: "今は丁度いい角度の階段。山形城の階段の角度は？", choices: ["43度","62度","55度","34度"], answer: 2),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。山形城の石垣の積み方は？", choices: ["らん石","切込接","野面積","打込接"], answer: 2),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、山形城であった事件とは？", choices: ["石垣が壊れた","津波","火事","殺人"], answer: 3),
    Quiz(question: "山形城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鯖","鯛","鮒","鮪"], answer: 2)
]

let BitchuMatsuyamaQuizzes: [Quiz] = [
    Quiz(question: "現存12天守。日本の城で12個しかないうちの一つ、備中松山城はどこにあるでしょうか。", choices: ["徳島県","岡山県","鹿児島県","鳥取県"], answer: 1),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から備中松山城の別名は、", choices: ["なし","月山城","蕗城","金亀城"], answer: 0),
    Quiz(question: "人は今、世界で増え続けている。昔に備中松山城を築いた人は?", choices: ["秋庭重信","森忠正","堀尾吉晴","伊達政宗"], answer: 0),
    Quiz(question: "今は丁度いい角度の階段。昔の備中松山城の階段の角度は？", choices: ["34度","54度","73度","46度"], answer: 1),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。備中松山城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 3),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、備中松山城であった事件とは？", choices: ["脱走・再入城事件","備中松山城の宝が無くなった","お城が半分崩れた","泥棒"], answer: 0),
    Quiz(question: "備中松山城の近くで取れるオメガ３の入った魚は何か", choices: ["鮎","鯖","鮭","鱈"], answer: 0)
]

let HirosakiQuizzes: [Quiz] = [
    Quiz(question: "現存12天守。日本の城で12個しかないうちの一つ、弘前城はどこにあるでしょうか。", choices: ["徳島県","青森県","鹿児島県","鳥取県"], answer: 1),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から弘前城の別名は、", choices: ["なし","月山城","蕗城","金亀城"], answer: 0),
    Quiz(question: "人は今、世界で増え続けている。昔に弘前城を築いた人は?", choices: ["秋庭重信","森忠正","堀尾吉晴","伊達政宗"], answer: 0),
    Quiz(question: "弘前城の魅力は何でしょう", choices: ["漆黒の天守","切込接の石垣","神経痛の効くモール温泉","城址を埋め尽くす５千本の桜"], answer: 3),
    Quiz(question: "天守の屋根は「銅板葺」という、薄く伸ばした銅板を重ねる方法をとっている。その理由に当てはまらないものはどれか？", choices: ["雪に強い","地震に強い","見栄えが良い","海風に強い"], answer: 3),
    Quiz(question: "日本は山が多く、国土の4分の3が山地だ。弘前城からは津軽富士と呼ばれる山が見える。その山の名前は？", choices: ["栗駒山","岩木山","八甲田山","月山"], answer: 1),
    Quiz(question: "江戸時代には、火事がよく起こっていました。弘前城も1627年に被害を受けているが、その時の火事の原因はなんだったのか？", choices: ["落雷","焚き火","放火","火入れ"], answer: 0)
]

let KochiQuizzes: [Quiz] = [
    Quiz(question: "名城100このうちの一つ、高知城がある高知県の旧国名は？", choices: ["伊予","土佐","紀井","河内"], answer: 1),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から高知城の別名は、", choices: ["なし","月山城","蕗城","金亀城"], answer: 0),
    Quiz(question: "人は今、世界で増え続けている。昔に弘前城を築いた人は?", choices: ["秋庭重信","森忠正","堀尾吉晴","伊達政宗"], answer: 0),
    Quiz(question: "弘前城の魅力は何でしょう", choices: ["漆黒の天守","切込接の石垣","神経痛の効くモール温泉","城址を埋め尽くす５千本の桜"], answer: 3),
    Quiz(question: "天守の屋根は「銅板葺」という、薄く伸ばした銅板を重ねる方法をとっている。その理由に当てはまらないものはどれか？", choices: ["雪に強い","地震に強い","見栄えが良い","海風に強い"], answer: 3),
    Quiz(question: "日本は山が多く、国土の4分の3が山地だ。弘前城からは津軽富士と呼ばれる山が見える。その山の名前は？", choices: ["栗駒山","岩木山","八甲田山","月山"], answer: 1),
    Quiz(question: "江戸時代には、火事がよく起こっていました。弘前城も1627年に被害を受けているが、その時の火事の原因はなんだったのか？", choices: ["落雷","焚き火","放火","火入れ"], answer: 0)
]

let HikoneQuizzes: [Quiz] = [
    Quiz(question: "彦根域を訪れた際、出迎えてくれる人気キャラクターは", choices: ["くまモン","ひこにゃん","ふなっしー","せいとくん"], answer: 1),
    Quiz(question: "天守閣から一望できるものは", choices: ["大阪湾","日本海","瀬戸内海","琵琶湖"], answer: 3),
    Quiz(question: "彦根藩主の庭園として国の名勝に指定されているものは", choices: ["兼六園","玄宮園","後楽園","偕楽園"], answer: 1),
    Quiz(question: "井伊軍団は落主以下家臣にいたるまで甲冑のみならず、旗、馬印、吹き流し、采配など全てある色で統一されており敵陣に真っ先に突き進み果敢に攻め立てたため井伊の◯鬼と恐れられていましたが何鬼と恐れられていたのでしょうか。", choices: ["黒鬼","青鬼","緑鬼","赤鬼"], answer: 3),
    Quiz(question: "徳川四天王のうち最も大きな知行国を与えられた、徳川家康の腹心とも言える武将は", choices: ["本田忠勝","榊原康政","井伊直政","酒井忠次"], answer: 2),
    Quiz(question: "彦根城の建物は徳川家康の支援で、井伊家が琵琶湖周辺の廃城の建物や用材を活用して達てました。では国宝の天守はもともとどの域のものだったでしょうか。", choices: ["大津城","佐和山城","長浜城","小谷城"], answer: 0),
    Quiz(question: "廊下橋前の天秤櫓は大手門と表門からの道が合流する要に位置し、本丸を防御するための重要な櫓ですが、右手の高石垣が築城当初に越前の岩工大工たちによって築かれた石垣でありいまだに現存しているものですが何という積み方によって積まれたものでしょうか。", choices: ["ごぼう積み","大根積み","人参積み","干し芋積み"], answer: 0)
]

let NagoyaQuizzes: [Quiz] = [
    Quiz(question: "名城100このうちの一つ、名古屋城はどこにあるでしょうか。", choices: ["徳島県","愛知県","岐阜県","高知県"], answer: 1),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中か名古屋城の別名は、", choices: ["綿水城","なし","金鯱城","稲葉山城"], answer: 3),
    Quiz(question: "名古屋城は徳川家康が全国の大名に築城させた城である。これをなんというか？", choices: ["天下泰平","天下布武","天下普請","天下統一"], answer: 2),
    Quiz(question: "名古屋城が作られ始めたのは1610年のことだ。名古屋城が完成したのは何年？", choices: ["1613年","1615年","1620年","1623年"], answer: 1),
    Quiz(question: "名古屋城のシンボルでもある有名な鯱鉾。雌の大きさは8尺3寸。雄の鯱鉾の大きさは？", choices: ["8尺","8尺3寸","8尺5寸","9尺3寸"], answer: 2),
    Quiz(question: "明治5年にある国の公使が名古屋城を訪れた。その人の名はフォン・プラントン。どこの国の人？", choices: ["イギリス","ドイツ","フランス","ギリシャ"], answer: 1),
    Quiz(question: "名古屋城の本丸御殿は戦争で焼失したが、2018年に復元された。この本丸御殿は一部屋を除いて全てある種類の木材が使われている。その木材は何か？", choices: ["桧","松","槙","杉"], answer: 0)
]

let GoryokakuQuizzes: [Quiz] = [
    Quiz(question: "名城100このうちの一つ、五稜郭はどこにあるでしょうか。", choices: ["北海道","青森県","山形県","岩手県"], answer: 0),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中か五稜郭の別名は？", choices: ["霧ヶ城","なし","柳野城","鶴ヶ城"], answer: 2),
    Quiz(question: "五稜郭はどのような形をしているか？", choices: ["六角形","星形","三角形","楕円形"], answer: 1),
    Quiz(question: "江戸時代の末期に築城された星型の五稜郭は防御に優れているが、どの国との戦いを想定していたか？", choices: ["清","イギリス","ロシア帝国","アメリカ合衆国"], answer: 3),
    Quiz(question: "このような星型の城は日本に2つある。もう一つは何城か？", choices: ["龍岡城","松前城","多賀城","白河小峰城"], answer: 2),
    Quiz(question: "五稜郭を設計したのは蘭学者の武田斐三郎だが、どこの国から学んだか？", choices: ["イギリス","ドイツ","フランス","アメリカ合衆国"], answer: 2),
    Quiz(question: "明治新政府と旧幕府軍の最後の戦いが行われた箱館戦争で戦死した、新撰組副長の名は？", choices: ["近藤勇","沖田総司","永倉新八","土方歳三"], answer: 3)
]

let OshiQuizzes: [Quiz] = [
    Quiz(question: "名城100このうちの一つ、忍城はどこにあるでしょうか。", choices: ["神奈川県","愛知県","埼玉県","静岡県"], answer: 0),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中か忍城の別名は？", choices: ["霧ヶ城","なし","浮城","鶴ヶ城"], answer: 2),
    Quiz(question: "忍城を築いたのは何氏？", choices: ["成田氏","上杉氏","北条氏","太田氏"], answer: 1),
    Quiz(question: "江戸時代の末期に築城された星型の五稜郭は防御に優れているが、どの国との戦いを想定していたか？", choices: ["清","イギリス","ロシア帝国","アメリカ合衆国"], answer: 3),
    Quiz(question: "このような星型の城は日本に2つある。もう一つは何城か？", choices: ["龍岡城","松前城","多賀城","白河小峰城"], answer: 2),
    Quiz(question: "五稜郭を設計したのは蘭学者の武田斐三郎だが、どこの国から学んだか？", choices: ["イギリス","ドイツ","フランス","アメリカ合衆国"], answer: 2),
    Quiz(question: "明治新政府と旧幕府軍の最後の戦いが行われた箱館戦争で戦死した、新撰組副長の名は？", choices: ["近藤勇","沖田総司","永倉新八","土方歳三"], answer: 3)
]

var index = 0
// var index2 = 0
// var correctNumber = 0
// var incorrectNumber = 0
// var gameContinue = true

func choseCastle(){
    index = Int.random(in: 0...9)
}

enum CastleID: Int, CaseIterable {
    case Kumamoto = 0
    case Matsumoto = 1
    case Matsue = 2
    case Marukame = 3
    case Inuyama = 4
    case Kinojo = 5
    case Azuti = 6
    case Odawara = 7
    case Yamagata = 8
    case BitchuMatsuyama = 9
    case Hirosaki = 10
    case Kochi = 11
    case Hikone = 12
    case Nagoya = 13
    case Goryokaku = 14
    case Oshi = 15
}

let castleQuizzes: [CastleID: [Quiz]] = [
    .Kumamoto: KumamotoQuizzes,
    .Matsumoto: MatsumotoQuizzes,
    .Matsue: MatsueQuizzes,
    .Marukame: MarukameQuizzes,
    .Inuyama: InuyamaQuizzes,
    .Kinojo: KinojoQuizzes,
    .Azuti: AzutiQuizzes,
    .Odawara: OdawaraQuizzes,
    .Yamagata: YamagataQuizzes,
    .BitchuMatsuyama: BitchuMatsuyamaQuizzes,
    .Hirosaki: HirosakiQuizzes,
    .Kochi: KochiQuizzes,
    .Hikone: HikoneQuizzes,
    .Nagoya: NagoyaQuizzes,
    .Goryokaku: GoryokakuQuizzes,
    .Oshi: OshiQuizzes
]
