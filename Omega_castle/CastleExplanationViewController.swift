//
//  CastleExplanationViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/04/14.
//

import UIKit

class CastleExplanationViewController: UIViewController {
    
    @IBOutlet weak var ExplanationLabel: UILabel!
    @IBOutlet weak var castleImageView: UIImageView!
    
    
    var castle: Castle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let c = castle else { return }
        
        ExplanationLabel.text = "説明:\(c.Explanation)"
    }
}
