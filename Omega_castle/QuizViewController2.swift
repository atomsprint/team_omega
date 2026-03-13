//
//  QuizViewController2.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/03/13.
//

import UIKit

class QuizViewController2: UIViewController {
    @IBOutlet weak var ageButton5_6: UIButton!
    @IBOutlet weak var ageButton7_8: UIButton!
    @IBOutlet weak var ageButton9_10: UIButton!
    @IBOutlet weak var ageButton11_12: UIButton!
    
    @IBOutlet weak var boyButton: UIButton!
    @IBOutlet weak var girlButton: UIButton!
    
    var selectedAge: String?
    var selectedGender: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        selectedAge = "5-6"
        selectedGender = "boy"
        setupButtons()
    }
    
    func setupButtons() {
        // 角丸を設定
        ageButton5_6.layer.cornerRadius = 8
        ageButton7_8.layer.cornerRadius = 8
        ageButton9_10.layer.cornerRadius = 8
        ageButton11_12.layer.cornerRadius = 8
        boyButton.layer.cornerRadius = 8
        girlButton.layer.cornerRadius = 8
        
        // アクションを設定
        ageButton5_6.addTarget(self, action: #selector(ageSelected(_:)), for: .touchUpInside)
        ageButton7_8.addTarget(self, action: #selector(ageSelected(_:)), for: .touchUpInside)
        ageButton9_10.addTarget(self, action: #selector(ageSelected(_:)), for: .touchUpInside)
        ageButton11_12.addTarget(self, action: #selector(ageSelected(_:)), for: .touchUpInside)
        
        boyButton.addTarget(self, action: #selector(genderSelected(_:)), for: .touchUpInside)
        girlButton.addTarget(self, action: #selector(genderSelected(_:)), for: .touchUpInside)
    }
    
    @objc func ageSelected(_ sender: UIButton) {
        switch sender {
        case ageButton5_6:
            selectedAge = "5-6"
        case ageButton7_8:
            selectedAge = "7-8"
        case ageButton9_10:
            selectedAge = "9-10"
        case ageButton11_12:
            selectedAge = "11-12"
        default:
            break
        }
        updateButtonAppearance()
    }
    
    @objc func genderSelected(_ sender: UIButton) {
        switch sender {
        case boyButton:
            selectedGender = "boy"
        case girlButton:
            selectedGender = "girl"
        default:
            break
        }
        updateButtonAppearance()
    }
    
    func updateButtonAppearance() {
        if selectedAge == "5-6" {
            ageButton5_6.backgroundColor = .systemBlue
            ageButton5_6.tintColor = .white
        } else {
            ageButton5_6.backgroundColor = .systemGray5
            ageButton5_6.tintColor = .black
        }
        
        if selectedAge == "7-8" {
            ageButton7_8.backgroundColor = .systemBlue
            ageButton7_8.tintColor = .white
        } else {
            ageButton7_8.backgroundColor = .systemGray5
            ageButton7_8.tintColor = .black
        }
        
        if selectedAge == "9-10" {
            ageButton9_10.backgroundColor = .systemBlue
            ageButton9_10.tintColor = .white
        } else {
            ageButton9_10.backgroundColor = .systemGray5
            ageButton9_10.tintColor = .black
        }
        
        if selectedAge == "11-12" {
            ageButton11_12.backgroundColor = .systemBlue
            ageButton11_12.tintColor = .white
        } else {
            ageButton11_12.backgroundColor = .systemGray5
            ageButton11_12.tintColor = .black
        }
        
        if selectedGender == "boy" {
            boyButton.backgroundColor = .systemPink
            boyButton.tintColor = .white
        } else {
            boyButton.backgroundColor = .systemGray5
            boyButton.tintColor = .black
        }
        
        if selectedGender == "girl" {
            girlButton.backgroundColor = .systemPink
            girlButton.tintColor = .white
        } else {
            girlButton.backgroundColor = .systemGray5
            girlButton.tintColor = .black
        }
    }
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showResults", sender: self)
        
    }
    
    // データを次の画面に渡す（遷移前に自動的に呼ばれる）
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showResults" {
            
            // 遷移先が ResultViewController2 か確認
            if let resultVC = segue.destination as? ResultViewController2 {
                
                // 選択した年齢と性別を渡す
                resultVC.selectedAge = selectedAge
                resultVC.selectedGender = selectedGender
            }
        }
    }
}
