//
//  DetailViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/08/02.
//

import UIKit

class DetailViewController: UIViewController {

    var castle: Castle?

    @IBOutlet weak var castleImageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var builderLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var englishLabel: UILabel!
    @IBOutlet weak var aliasLabel: UILabel!
    @IBOutlet weak var explanationTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        castleImageView.contentMode = .scaleAspectFill
        castleImageView.clipsToBounds = true

        if let castle = castle {

            // Englishを画像名として使う
            castleImageView.image = UIImage(named: castle.English)

            nameLabel.text = castle.CastleName
            builderLabel.text = "築城者：" + castle.BuiltPeople
            regionLabel.text = "地方：" + castle.region
            englishLabel.text = "英語名：" + castle.English
            aliasLabel.text = "別名：" + castle.alias
            explanationTextView.text = castle.Explanation
        }
    }
}
