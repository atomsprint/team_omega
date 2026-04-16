//
//  ViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/02/08.
//

import UIKit

class PeopleNumberViewController: UIViewController {
    
    @IBOutlet weak var TableView: UITableView!
    
    let prefectures = PrefectureData.topFive
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
    }
}

// MARK: - UITableViewDataSource
extension PeopleNumberViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let prefecture = prefectures[indexPath.row]
        
        cell.textLabel?.text = "\(prefecture.rank)位: \(prefecture.name)"
        cell.detailTextLabel?.text = "\(prefecture.PeopleNumber) 人"
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension PeopleNumberViewController: UITableViewDelegate {
    
}

