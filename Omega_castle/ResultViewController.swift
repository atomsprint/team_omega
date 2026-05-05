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
    
    var score: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showResult()
        // Do any additional setup after loading the view.
        func showResult() {
            if score == 7 {
                resultLabel.text = "⭐️💫🌟🥇かんぺき!!🥇🌟💫⭐️"
                resultLabel.textColor = .black
            } else if score == 6 {
                resultLabel.text = "💫🌟もう一息!!頑張れ!!🌟💫"
                resultLabel.textColor = .black
            } else if score == 5 {
                resultLabel.text = "🌟おしい!!🌟"
                resultLabel.textColor = .black
            } else if score == 4 {
                resultLabel.text = "🌟⭐️🥈ちょっと間違えちゃった...また頑張ろう🥈⭐️🌟"
                resultLabel.textColor = .black
            } else if score == 3 {
                resultLabel.text = "💫🥈もう少し頑張ろう!!🥈💫"
                resultLabel.textColor = .black
            } else if score == 2 {
                resultLabel.text = "⭐️🥉もっと頑張ろう!!🥉⭐️"
                resultLabel.textColor = .black
            } else if score == 1 {
                resultLabel.text = "📚もっともっと頑張ろう📚"
                resultLabel.textColor = .black
            } else if score == 0 {
                resultLabel.text = "😭君はお城博士に向いていない...😭"
                resultLabel.textColor = .black
            }
        }
    }
    @IBAction func retryTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
        performSegue(withIdentifier: "showQuiz",sender: nil)
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showQuiz" {
                //if let quizVC = segue.destination as? QuizViewController {
                }
            }
        }


