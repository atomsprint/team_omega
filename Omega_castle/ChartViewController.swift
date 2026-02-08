//
//  ChartViewController.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/02/08.
//

import UIKit

class ChartViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let prefectures = PrefectureData.topFive
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension ChartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PrefectureCell", for: indexPath) as! PrefectureCell
        let prefecture = prefectures[indexPath.row]
        
        cell.rankLabel.text = "\(prefecture.rank)"
        cell.nameLabel.text = prefecture.name
        cell.areaLabel.text = "\(prefecture.area) 人"
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
}
