//
//  SearchingViewController.swift
//  Omega_castle
//
//  Created by Takahashi Haruno on 2026/05/10.
//

import UIKit

class SearchingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1. 次の画面（destination）が ExplanationViewController であることを確認
        if let nextVC = segue.destination as? ExplanationViewController {
            
            // 2. Storyboardで矢印（Segue）につけた名前（Identifier）で判別
            if segue.identifier == "toGoryokaku" {
                nextVC.selectedIndex = 0 // 五稜郭なら0番
            } else if segue.identifier == "toHirosaki" {
                nextVC.selectedIndex = 1 // 弘前城なら1番
            } else if segue.identifier == "toSendai" {
                nextVC.selectedIndex = 2
            } else if segue.identifier == "toYamagata" {
                nextVC.selectedIndex = 3
            } else if segue.identifier == "toAizuwakamatu" {
                nextVC.selectedIndex = 4
                
                // 他のお城も同様に else if で追加していきます
            }
        }
        
    }
}
