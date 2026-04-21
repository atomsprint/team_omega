//
//  ResultViewController2.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/03/13.
//

import UIKit

class SearchedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var castle: String = ""
    var allCastles = CSVLoader.load()
    var displayCastles: [Castle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayCastles = allCastles.filter {
            c in
            c.category1 == castle ||
            c.category2 == castle ||
            c.category3 == castle ||
            c.category4 == castle
        }
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayCastles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let castle = displayCastles[indexPath.row]
        cell.textLabel?.text = castle.CastleName
        cell.detailTextLabel?.text = castle.BuiltPeople
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Castle", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Castle",
           let infoVC = segue.destination as? CastleExplanationViewController,
           let indexPath = sender as? IndexPath {
            infoVC.castle = displayCastles[indexPath.row]
        }
    }
}
