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
    let explanation: String
}

let KumamotoQuizzes: [Quiz] = [
    Quiz(question: "加藤清正は秀吉の命令で朝鮮出兵した文禄、慶長(けいちょう)の役(えき)の時に兵糧(ひょうろう)の確保に苦しみ．あまりの空腹に耐えかね馬すらも口にしたという苦い経験があり、それゆえ熊本城を建てた時には兵糧の確保を頑張ったと言われるが、ここで問題です。熊本城で籠城した時のことを考えて食べられるものとして植えたとされる木は何ですか", choices: ["かきの木","どんぐりの木","みかんの木","銀杏の木"], answer: 3, explanation: "熊本城は別名を銀杏城という。いざという時に食べられる銀杏のなるイチョウの木が多く植えられていた。"),
    Quiz(question: "清正は熊本城を建てる時、籠城して戦うことを考えてうまいこと兵糧を確保をしました。壁に何をかくしていたのでしょうか。", choices: ["米つぶ","馬の干し肉","じゃかいも","干瓢"], answer: 3, explanation: "非常時には壁を崩して食べられるようにするために干瓢が練り込まれていた。熊本城は「食べられる城」とも呼ばれていた。"),
    Quiz(question: "清正は石垣作りの名人と言われており、防御力を高めるためによじ登ることが困難な角度の急なの石垣を作りましたが、何というものでしょうか。", choices: ["つばめ返し","忍者返し","武者返し","借金返し"], answer: 2, explanation: "石垣は扇のように反り返っていることが特徴。石垣の下の方はゆるやかだが、上に向かうとほぼ垂直になる。登れそうに見えて忍者でも登れないことから「武者返し」と呼ばれている。"),
    Quiz(question: "清正公は籠城する時のために作ったものは何でしょうか", choices: ["抜け道としてのトンネル","長い戦いに備えての大きなお風呂","120箇所の井戸","大きなくみ取り式のトイレ"], answer: 2, explanation: "清正は朝鮮出兵時に籠城を経験して水の大切さを痛感(つうかん)した。そのため城内に120の井戸があり飲み水も確保もした。井戸は30尺(39m)にも達しています。"),
    Quiz(question: "石垣作りの名人とされた清正公ですが2016年の熊本地震で8段12個の石垣だけでギリギリの状態で櫓を支えた奇跡の一本石垣はどの櫓か。", choices: ["宇土櫓","飯田丸五回櫓","監物櫓","北十八間櫓"], answer: 1, explanation: "飯田丸五回櫓は熊本城本丸の南を守っていた場所です。熊本地震で約580石が崩落して角の石垣『隅石』(すみいし)のみで建物を支えていたため「奇跡の一本石垣」と呼ばれました。"),
    Quiz(question: "加藤清正が朝鮮を攻めた時に退治した、どうもうな動物とは何でしょうか。", choices: ["熊","ライオン","黒豹","虎"], answer: 3, explanation: "当時の朝鮮半島には野生の虎がたくさんいて清正の陣地の近くにも巨大な虎が現れた。伝説では、清正自ら虎退治に乗り出し、槍一本でその巨大な虎を仕留めたとなっている。"),
    Quiz(question: "熊本城を作った加藤清正が朝鮮出兵の時に現地に送った兵糧に含まれるものはどれか?", choices: ["イワシ","スズキ","タラ","ヒラメ"], answer: 0, explanation: "清正は塩イワシを送った。イワシはオメガ3脂肪酸を多く含んでいる。「腐ってもタイ」と言われているタイの２倍以上オメガ３脂肪酸が含まれている。オメガ3脂肪酸は体内で作ることができないため食物から取る必要があります。オメガ3脂肪酸は脳が正しく動き発達するために必要です。炎症や血栓も抑えます。")
]

let MatsumotoQuizzes: [Quiz] = [
    Quiz(question: "日本の城で五つしかない国宝のうちの一つ、松本城はどこにあるでしょうか。", choices: ["兵庫県","長野県","岡山県","新潟県"], answer: 1, explanation: "松本城は長野県の松本にある。松本は北アルプスを望み、美しい水が溢れる肥沃の地である。古来より多くの人々が定住し交通の要で軍事的に重要な拠点に築かれた。"),
    Quiz(question: "日本100名城の城の内、90以上の城に別名がある。その中から松本城の別名は、", choices: ["白帝城","馬場城","兜城","烏城"], answer: 3, explanation: "松本城が烏城と呼ばれているかというと天守が黒漆塗りで黒くて烏に似ているからです。"),
    Quiz(question: "人は今、世界で増え続けている。昔に松本城を築いた人は?", choices: ["武田信玄","徳川家康","石川数正","豊臣秀吉"], answer: 2, explanation: "石川数正は徳川家康の家臣から豊臣秀吉の家臣になった。数正は武将としても一流だった。秀吉の九州責めに功をあげ信州松本において八万石を与えられた。松本城は数正がその基礎を作った。"),
    Quiz(question: "今は丁度いい角度の階段。松本城はお城の中で日本一急な階段がある。その階段の角度は？", choices: ["23度","59度","72度","61度"], answer: 3, explanation: "階段は急勾配で踏み板の踏み幅は狭くかつ蹴上(踏み板の段差)が高い。四階の階段の勾配は61度もあり最大の蹴り上げは39cmの高さである。敵兵の侵入を防ぐ工夫である。"),
    Quiz(question: "今、積むのはつみき。昔、お城に積んでいた石垣。松本城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2, explanation: "切り出してほとんど加工しないで積み上げるのが野面積。最も古い時代の積み方。"),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、松本城であった事件とは？", choices: ["お城が傾いた","松本城の宝が無くなった","石川数正を裏切った人がいた","松本城が崩れた"], answer: 0, explanation: "江戸前期の松本藩で大きな農民一揆が起こり、鎮圧された。藩は約束をはごにしたうえとらえたものを処刑した。指導者の加助ははりつけにされた時、「わしの一念で城の天守閣を傾けて見せる」と天守を睨んでから処刑された。すると松本城天守は西へ少し傾いた。何度も傾きを直そうとしてもすぐまた傾いてしまう。加助の祟りだと言われている。"),
    Quiz(question: "松本城の大規模な改修を行った武田信玄は、城を守る上で必要な物質として「米、大豆、薪、味噌、塩、糠、青魚のあら、乾魚、海藻」をあげている。この中でオメガ３脂肪酸が含まれるものはどれか。", choices: ["米","大豆","糠","青魚のあら"], answer: 3, explanation: "サバ、さんま、イワシなどの青魚にはオメガ３脂肪酸が含まれる。青魚のあら、煮干しなど。あらには刺身部分には少ないオメガ３脂肪酸が集中している。オメガ３脂肪酸は健康に良く、頭も良くなる。")
]

let MatsueQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、松江城はどこにあるでしょうか。", choices: ["青森県","島根県","福島県","鳥取県"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "日本100名城の城の内、90以上の城に別名がある。その中から松江城の別名は、", choices: ["鷹城","鶴島城","千鳥城","金鳥城"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に松江城を築いた人は?", choices: ["池田光政","生駒親正","小笠原忠真","本多利朝"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "今は丁度いい角度の階段。松江城の階段の角度は？", choices: ["47度","50度","59度","32度"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。松江城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、松江城であった事件とは？", choices: ["城が滅びた","黒松が根こそぎ倒れた","石垣の石が落ちた","将軍がいなくなった"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "松江城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鮭","鱸","鰯","秋刀魚"], answer: 1, explanation: "解説準備中")
]

let MarukameQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、丸亀城はどこにあるでしょうか。", choices: ["山形県","福島県","鳥取県","香川県"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から丸亀城の別名は、", choices: ["横山城","鯉城","丸山城","久松城"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に丸亀城を築いた人は?", choices: ["池田光政","生駒親正","黒田長政","中川秀成"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "今は丁度いい角度の階段。丸亀城の階段の角度は？", choices: ["29度","38度","57度","43度"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。丸亀城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、丸亀城であった事件とは？", choices: ["天守閣が壊れた","築城者が行方不明になった","石垣の石が落ちた","将軍が裏切った"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "丸亀城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["太刀魚","メダカ","秋刀魚","沙魚"], answer: 3, explanation: "解説準備中")
]

let InuyamaQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、犬山城はどこにあるでしょうか。", choices: ["大阪府","栃木県","新潟県","愛知県"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から犬山城の別名は、", choices: ["丸山城","山城","無鶴城","白帝城"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に犬山城を築いた人は?", choices: ["徳川家康","織田信康","山内一豊","藤堂高虎"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "今は丁度いい角度の階段。犬山城の階段の角度は？", choices: ["29度","38度","42度","50度"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。犬山城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、犬山城であった事件とは？", choices: ["主人が自殺した。","天守に攻め込まれた","主人が行方不明","雷でほぼ壊れた"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "犬山城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鯉","虎魚","鯰","公魚"], answer: 2, explanation: "解説準備中")
]

let KinojoQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、鬼ノ城はどこにあるでしょうか。", choices: ["三重県","群馬県","岡山県","富山県"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から鬼ノ城の別名は、", choices: ["松尾城","千代田城","矢留城","鬼城山"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に鬼ノ城を築いた人は?", choices: ["豊臣秀吉","まだ、築いた人がわかっていない","鍋島直正","藤堂高虎"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "今は丁度いい角度の階段。鬼ノ城の階段の角度は？", choices: ["64度","38度","53度","24度"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。鬼ノ城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、鬼ノ城であった事件とは？", choices: ["兵士がいなくなった","天守に攻め込まれた","忍者に秘密を探られていた","転落事故"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "鬼ノ城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["真鯛","鱧","鰆","太刀魚"], answer: 0, explanation: "解説準備中")
]

let AzutiQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、安土城はどこにあるでしょうか。", choices: ["佐賀県","滋賀県","埼玉県","山梨県"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から安土城の別名は、", choices: ["金亀城","稲葉山城","福山城","なし"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に安土城を築いた人は?", choices: ["豊臣秀吉","織田信康","鍋島直正","藤堂高虎"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "今は丁度いい角度の階段。安土城の階段の角度は？", choices: ["46度","53度","57度","64度"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。安土城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、安土城であった事件とは？", choices: ["兵士がいなくなった","津波","安土城放火","転落事故"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "安土城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鮎","鯛","鯖","鰤"], answer: 3, explanation: "解説準備中")
]
        
let OdawaraQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、小田原城はどこにあるでしょうか。", choices: ["京都府","大阪府","神奈川県","東京都"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から小田原城の別名は、", choices: ["霧ヶ城","なし","佐々木城","鶴ヶ城"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に小田原城を築いた人は?", choices: ["豊臣秀吉","毛利元就","武田信玄","小田原北条氏"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "今は丁度いい角度の階段。小田原城の階段の角度は？", choices: ["52度","67度","55度","37度"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。小田原城の石垣の積み方は？", choices: ["らん石","切込接","野面積","打込接"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、小田原城であった事件とは？", choices: ["石垣が壊れた","松が倒れた","津波","合戦"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "小田原城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鮭","鯖","鱈","鯰"], answer: 1, explanation: "解説準備中")
]

let YamagataQuizzes: [Quiz] = [
    Quiz(question: "日本百名城のうちの一つ、山形城はどこにあるでしょうか。", choices: ["山形県","長崎県","熊本県","青森県"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から山形城の別名は、", choices: ["喜春城","菖蒲城","霧ヶ城","蕗城"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に山形城を築いた人は?", choices: ["豊臣秀吉","京極高和","浅野長直","最上義光"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "今は丁度いい角度の階段。山形城の階段の角度は？", choices: ["43度","62度","55度","34度"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。山形城の石垣の積み方は？", choices: ["らん石","切込接","野面積","打込接"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、山形城であった事件とは？", choices: ["石垣が壊れた","津波","火事","殺人"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "山形城の近くでオメガ３の入った魚が取れる。その魚は何か", choices: ["鯖","鯛","鮒","鮪"], answer: 2, explanation: "解説準備中")
]

let BitchuMatsuyamaQuizzes: [Quiz] = [
    Quiz(question: "現存12天守。日本の城で12個しかないうちの一つ、備中松山城はどこにあるでしょうか。", choices: ["徳島県","岡山県","鹿児島県","鳥取県"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から備中松山城の別名は、", choices: ["なし","月山城","蕗城","金亀城"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に備中松山城を築いた人は?", choices: ["秋庭重信","森忠正","堀尾吉晴","伊達政宗"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "今は丁度いい角度の階段。昔の備中松山城の階段の角度は？", choices: ["34度","54度","73度","46度"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "今、積むのはつみき昔、お城に積んでいた石垣。備中松山城の石垣の積み方は？", choices: ["まづめ石","切込接","野面積","打込接"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "トランプ大統領が大統領になってから色々な事件が起きている気がする。昔、備中松山城であった事件とは？", choices: ["脱走・再入城事件","備中松山城の宝が無くなった","お城が半分崩れた","泥棒"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "備中松山城の近くで取れるオメガ３の入った魚は何か", choices: ["鮎","鯖","鮭","鱈"], answer: 0, explanation: "解説準備中")
]

let HirosakiQuizzes: [Quiz] = [
    Quiz(question: "現存12天守。日本の城で12個しかないうちの一つ、弘前城はどこにあるでしょうか。", choices: ["徳島県","青森県","鹿児島県","鳥取県"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から弘前城の別名は、", choices: ["なし","月山城","蕗城","金亀城"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に弘前城を築いた人は?", choices: ["秋庭重信","森忠正","堀尾吉晴","伊達政宗"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "弘前城の魅力はなんでしょう？", choices: ["漆黒の天守","切込接の石垣","神経痛に効くモール温泉","城址を埋め尽くす2600本の桜"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "天守の屋根は「銅板葺」という、薄く伸ばした銅板を重ねる方法をとっている。その理由に当てはまらないものはどれか？", choices: ["雪に強い","地震に強い","見栄えが良い","海風に強い"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "日本は山が多く、国土の4分の3が山地だ。弘前城からは津軽富士と呼ばれる山が見える。その山の名前は？", choices: ["栗駒山","岩木山","八甲田山","月山"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "江戸時代には、火事がよく起こっていました。弘前城も1627年に被害を受けているが、その時の火事の原因はなんだったのか？", choices: ["落雷","焚き火","放火","火入れ"], answer: 0, explanation: "解説準備中")
]

let KochiQuizzes: [Quiz] = [
    Quiz(question: "名城100このうちの一つ、高知城がある高知県の旧国名は？", choices: ["伊予","土佐","紀井","河内"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中から高知城の別名は、", choices: ["なし","月山城","蕗城","金亀城"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "人は今、世界で増え続けている。昔に弘前城を築いた人は?", choices: ["秋庭重信","森忠正","堀尾吉晴","伊達政宗"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "もともとこの土地に住んでいたのは何氏でしょう", choices: ["毛利氏","小早川氏","長宗我部氏","細川氏"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "今、家を作るのにかかる時間は1年くらい。高知城の全城郭が完成するのに何年間かかったか？", choices: ["三年間","五年間","八年間","十年間"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "高知城の「こうち」は何度も漢字が変わっている。この中で、一度も使われたことない漢字はどれ？", choices: ["高智","高知","河中","光地"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "高知城の藩主の中で、賢君と呼ばれ、評判が高いのは誰でしょう", choices: ["3代山内忠豊","7代山内豊常","11代山内豊興","15代山内豊信"], answer: 3, explanation: "解説準備中")
]

let HikoneQuizzes: [Quiz] = [
    Quiz(question: "彦根域を訪れた際、出迎えてくれる人気キャラクターは", choices: ["くまモン","ひこにゃん","ふなっしー","せいとくん"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "天守閣から一望できるものは", choices: ["大阪湾","日本海","瀬戸内海","琵琶湖"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "彦根藩主の庭園として国の名勝に指定されているものは", choices: ["兼六園","玄宮園","後楽園","偕楽園"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "井伊軍団は落主以下家臣にいたるまで甲冑のみならず、旗、馬印、吹き流し、采配など全てある色で統一されており敵陣に真っ先に突き進み果敢に攻め立てたため井伊の◯鬼と恐れられていましたが何鬼と恐れられていたのでしょうか。", choices: ["黒鬼","青鬼","緑鬼","赤鬼"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "徳川四天王のうち最も大きな知行国を与えられた、徳川家康の腹心とも言える武将は", choices: ["本田忠勝","榊原康政","井伊直政","酒井忠次"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "彦根城の建物は徳川家康の支援で、井伊家が琵琶湖周辺の廃城の建物や用材を活用して達てました。では国宝の天守はもともとどの域のものだったでしょうか。", choices: ["大津城","佐和山城","長浜城","小谷城"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "廊下橋前の天秤櫓は大手門と表門からの道が合流する要に位置し、本丸を防御するための重要な櫓ですが、右手の高石垣が築城当初に越前の岩工大工たちによって築かれた石垣でありいまだに現存しているものですが何という積み方によって積まれたものでしょうか。", choices: ["ごぼう積み","大根積み","人参積み","干し芋積み"], answer: 0, explanation: "解説準備中")
]

let NagoyaQuizzes: [Quiz] = [
    Quiz(question: "名城100このうちの一つ、名古屋城はどこにあるでしょうか。", choices: ["徳島県","愛知県","岐阜県","高知県"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中か名古屋城の別名は、", choices: ["綿水城","なし","金鯱城","稲葉山城"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "名古屋城は徳川家康が全国の大名に築城させた城である。これをなんというか？", choices: ["天下泰平","天下布武","天下普請","天下統一"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "名古屋城が作られ始めたのは1610年のことだ。名古屋城が完成したのは何年？", choices: ["1613年","1615年","1620年","1623年"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "名古屋城のシンボルでもある有名な鯱鉾。雌の大きさは8尺3寸。雄の鯱鉾の大きさは？", choices: ["8尺","8尺3寸","8尺5寸","9尺3寸"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "明治5年にある国の公使が名古屋城を訪れた。その人の名はフォン・プラントン。どこの国の人？", choices: ["イギリス","ドイツ","フランス","ギリシャ"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "名古屋城の本丸御殿は戦争で焼失したが、2018年に復元された。この本丸御殿は一部屋を除いて全てある種類の木材が使われている。その木材は何か？", choices: ["桧","松","槙","杉"], answer: 0, explanation: "解説準備中")
]

let GoryokakuQuizzes: [Quiz] = [
    Quiz(question: "名城100このうちの一つ、五稜郭はどこにあるでしょうか。", choices: ["北海道","青森県","山形県","岩手県"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中か五稜郭の別名は？", choices: ["霧ヶ城","なし","柳野城","鶴ヶ城"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "五稜郭はどのような形をしているか？", choices: ["六角形","星形","三角形","楕円形"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "江戸時代の末期に築城された星型の五稜郭は防御に優れているが、どの国との戦いを想定していたか？", choices: ["清","イギリス","ロシア帝国","アメリカ合衆国"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "このような星型の城は日本に2つある。もう一つは何城か？", choices: ["龍岡城","松前城","多賀城","白河小峰城"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "五稜郭を設計したのは蘭学者の武田斐三郎だが、どこの国から学んだか？", choices: ["イギリス","ドイツ","フランス","アメリカ合衆国"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "明治新政府と旧幕府軍の最後の戦いが行われた箱館戦争で戦死した、新撰組副長の名は？", choices: ["近藤勇","沖田総司","永倉新八","土方歳三"], answer: 3, explanation: "解説準備中")
]

let OshiQuizzes: [Quiz] = [
    Quiz(question: "名城100このうちの一つ、忍城はどこにあるでしょうか。", choices: ["神奈川県","愛知県","埼玉県","静岡県"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "日本100名城の中で90以上の別名がある。その中か忍城の別名は？", choices: ["霧ヶ城","なし","浮城","鶴ヶ城"], answer: 2, explanation: "解説準備中"),
    Quiz(question: "忍城を築いたのは何氏？", choices: ["成田氏","上杉氏","北条氏","太田氏"], answer: 1, explanation: "解説準備中"),
    Quiz(question: "豊臣秀吉の小田原攻めを中心とした関東統一の中で、忍城にも豊臣軍が攻め入った。誰が率いた軍が忍城に向かったか？", choices: ["池田三成","伊達政宗","徳川家康","真田幸村"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "忍城は〇〇名城として知られています。〇〇とはなんか？", choices: ["関東七名城","関東三大山城","日本三水城","日本三大天空城"], answer: 0, explanation: "解説準備中"),
    Quiz(question: "忍城は難攻不落の城と言われている。どのような特徴があるか？", choices: ["四重の堀で囲まれている","崖の上にある","総構構造","温地帯にある"], answer: 3, explanation: "解説準備中"),
    Quiz(question: "忍城が豊臣軍（石田三成）に攻め入られた時、城主成田氏長の妻（真名女）が自ら堀を堀ったいう山本周五郎による物語がある。その物語の中で真名女は何を使って堀を掘ったか？", choices: ["櫛","簪","笄","鏡"], answer: 3, explanation: "解説準備中")
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
//Hello
