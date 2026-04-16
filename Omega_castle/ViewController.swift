//
//  ViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/04/15.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? SearchedViewController else { return }

        switch segue.identifier {
        case "あ行のお城":
            vc.selectedGenre = "あ行のお城"
        default:
            vc.selectedGenre = ""
        }

        print("segue.identifier = \(segue.identifier ?? "nil")")
        print("渡す selectedGenre = \(vc.selectedGenre)")
    }
}
