//
//  QuizViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/03/07.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet weak var choiceAButton: UIButton!
    @IBOutlet weak var choiceBButton: UIButton!
    @IBOutlet weak var choiceCButton: UIButton!
    @IBOutlet weak var choiceDButton: UIButton!
    
    var quizzes: [Quiz] = []
    var currentIndex = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        startQuiz()
    }
    
    func startQuiz() {
        quizzes = Array(KumamotoQuizzes.shuffled().prefix(7))
        currentIndex = 0
        score = 0
        showQuestion()
    }
    
    func showQuestion() {
        let quiz = quizzes[currentIndex]
        
        questionNumberLabel.text = "第\(currentIndex + 1)問 / 7問"
        questionLabel.text = quiz.question
        choiceAButton.setTitle(quiz.choices[0], for: .normal)
        choiceBButton.setTitle(quiz.choices[1], for: .normal)
        choiceCButton.setTitle(quiz.choices[2], for: .normal)
        choiceDButton.setTitle(quiz.choices[3], for: .normal)
    }
    @IBAction func choiceTapped(_ sender: UIButton) {
        var selectedIndex = 0
        
        if sender == choiceAButton {
            selectedIndex = 0
        } else if sender == choiceBButton {
            selectedIndex = 1
        } else if sender == choiceCButton {
            selectedIndex = 2
        } else {
            selectedIndex = 3
        }
        
        // 正解チェック
        if selectedIndex == quizzes[currentIndex].answer {
            score += 1
        }
        
        // 次の問題へ
        currentIndex += 1
        
        if currentIndex < 7 {
            showQuestion()
        } else {
            performSegue(withIdentifier: "toResult", sender: nil)
            
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? ResultViewController {
            resultVC.score = score
        }
    }
}
