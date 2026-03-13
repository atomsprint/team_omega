//
//  ResultViewController2.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/03/13.
//

import UIKit

class ResultViewController2: UIViewController {
    
    // 受け取る変数（? は「まだnilかも」という意味）
    var selectedAge: String?
    var selectedGender: String?
    
    @IBOutlet weak var tableView: UITableView!
        
        var recommendedBooks: [Book] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            title = "おすすめの本"
            
            guard let age = selectedAge else { return }
            guard let gender = selectedGender else { return }
            
            tableView.dataSource = self
            tableView.delegate = self
            
            // データベースから検索
            recommendedBooks = getRecommendedBooks(age: age, gender: gender)
            // Do any additional setup after loading the view.
        }
        
        // 本を読み込む
        func loadBooks() {
            // 年齢と性別が設定されているか確認
            guard let age = selectedAge else { return }
            guard let gender = selectedGender else { return }
            
            // データベースから検索
            recommendedBooks = getRecommendedBooks(age: age, gender: gender)
            
            // TableViewを更新
            tableView.reloadData()
        }
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
    
    extension ResultViewController2: UITableViewDataSource {
        
        // セルの数
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return recommendedBooks.count
        }
        
        // セルの内容
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // 再利用するセルを取得
            let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
            
            // 本のデータを取得
            let book = recommendedBooks[indexPath.row]
            
            // セルに表示
            cell.textLabel?.text = book.title
            cell.detailTextLabel?.text = book.author
            
            return cell
        }
    }
    
    // MARK: - TableView Delegate
    extension ResultViewController2: UITableViewDelegate {
        
        // セルがタップされた時
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            
            let book = recommendedBooks[indexPath.row]
            print("選択された本: \(book.title)")
        }
    }
