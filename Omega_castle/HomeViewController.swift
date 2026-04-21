//
//  HomeViewController.swift
//  SwichScreenApp
//
//  Created by Takahashi Haruno on 2025/12/13.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? SearchedViewController else { return }
        
        switch segue.identifier {
        case "お城":
            vc.castle = "お城"
        default:
            vc.castle = ""
        }
        
        print("segue.identifier = \(segue.identifier ?? "nil")")
        print("渡す castle = \(vc.castle)")
    }
}
