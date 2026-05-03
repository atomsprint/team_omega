//
//  PerfectureCell.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/05/03.
//

import UIKit

class PrefectureCell: UITableViewCell {
    
    @IBOutlet weak var RankLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var PeopleNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
