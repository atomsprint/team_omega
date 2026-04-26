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
    var onFinish: (() -> Void)?
    var selectedIndex = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI() {
        questionNumberLabel.text = "第\(questionOrdinal)間 / \(tatleQuestions)問"
        let correctText = quiz.choices[quiz.answer]
        questionLabel.text = "正解は:\(correctText)"
        explanationLabel.text = quiz.explanation
        explanationLabel.numberOfLines = 0
        if selectedIndex == quiz.answer {
            score += 1
        }
        
    }
    @IBAction func nextQuestionTapped(_ sender: UIButton) {
        if questionOrdinal == 7{
            performSegue(withIdentifier: "showResult", sender: nil)
        }
        else{
            navigationController?.popViewController(animated: true)
            dismiss(animated: true) { [weak self] in
                self?.onFinish?()
            }
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
            if let resultVC = segue.destination as? ResultViewController {
                resultVC.score = score
            }
        }
    }
}
