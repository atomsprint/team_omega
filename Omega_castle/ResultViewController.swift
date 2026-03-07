//
//  ResultViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/03/07.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabel.text = "7問中 \(score)問正解！💫🌟"
    }
    @IBAction func retryTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
