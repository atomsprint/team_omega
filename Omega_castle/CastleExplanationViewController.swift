//
//  CastleExplanationViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/04/14.
//

import UIKit

class CastleExplanationViewController: UIViewController {
    @IBOutlet weak var CastleName: UILabel!
    @IBOutlet weak var BuiltPeople: UILabel!
    @IBOutlet weak var Explanation: UILabel!
    
    var castle: Castle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let c = castle else { return }

        CastleName.text = "お城の名前:\(c.CastleName)"
        BuiltPeople.text = "築いた人:\(c.BuiltPeople)"
        Explanation.text = "説明:\(c.Explanation)"
    }
}
