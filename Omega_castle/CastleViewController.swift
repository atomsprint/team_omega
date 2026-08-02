//
//  CastleViewController.swift
//  Omega_Castle
//
//  Created by 鈴木久美 on 2026/08/02.
//

import UIKit

class CastleViewController: UIViewController,
                            UITableViewDelegate,
                            UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var castleList:[Castle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        castleList = CSVLoader.loadCSV()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        print("読み込み数:",
              castleList.count)
    }
    // 行数
    func tableView(
        _ tableView:UITableView,
        numberOfRowsInSection section:Int
    ) -> Int {
        
        
        return castleList.count
        
    }
    
    
    
    // セル表示
    func tableView(
        _ tableView:UITableView,
        cellForRowAt indexPath:IndexPath
    )
    -> UITableViewCell {
        
        
        let cell =
        tableView.dequeueReusableCell(
            withIdentifier:"CastleCell",
            for:indexPath
        )
        
        
        let castle =
        castleList[indexPath.row]
        
        
        cell.textLabel?.text =
        castle.CastleName
        
        
        return cell
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let detailVC = segue.destination as! DetailViewController

            if let indexPath = tableView.indexPathForSelectedRow {
                detailVC.castle = castleList[indexPath.row]
            }
        }
    }
}
