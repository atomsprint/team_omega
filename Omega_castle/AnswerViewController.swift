//
//  AnswerViewController.swift
//  Omega_castle
//
//  Created by Takahashi Haruno on 2026/03/21.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    
    var quiz: Quiz!
    var questionOrdinal: Int = 1
    var tatleQuestions: Int = 1
    weak var sourceQuizVC: QuizViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI() {
        questionNumberLabel.text = "第\(questionOrdinal)間 / \(tatleQuestions)問"
        let correctText = quiz.choices[quiz.answer]
        questionLabel.text = "正解:\(correctText)"
        explanationLabel.text = quiz.explanation
    }
}
