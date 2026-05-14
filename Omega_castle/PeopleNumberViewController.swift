//
//  ViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/02/08.
//

import UIKit

class PeopleNumberViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let prefectures = PrefectureData.topTen
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

// MARK: - UITableViewDataSource
extension PeopleNumberViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "cell",
            for: indexPath
        ) as? PrefectureCell else {
            return UITableViewCell()
        }
        
        let prefecture = prefectures[indexPath.row]
        
        cell.rankLabel.text = "入城者数\(prefecture.rank)位"
        cell.nameLabel.text = prefecture.name
        cell.peopleNumberLabel.text = "入城者数 \(prefecture.peopleNumber) 人"
        
        cell.prefectureImageView.image = UIImage(named: prefecture.castleImage)
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension PeopleNumberViewController: UITableViewDelegate {
    
}
