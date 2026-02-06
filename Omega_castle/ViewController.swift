//
//  ViewController.swift
//  SwichScreenApp
//
//  Created by Haruno on 2025/11/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let prefectures = PrefectureData.topFive
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //hello
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
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
