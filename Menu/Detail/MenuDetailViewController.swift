//
//  MenuDetailViewController.swift
//  Menu
//
//  Created by Lucifer on 2/11/20.
//  Copyright © 2020 Lucifer. All rights reserved.
//

import UIKit

class MenuDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var rateButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    
    var restarant: Menu?
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewRowHight()
        
        imageView.image = UIImage(named: restarant!.image)
        
        tableView.tableFooterView = UIView()
        
        title = restarant!.name
    }
    
    private func tableViewRowHight() {
        tableView.estimatedRowHeight = 38
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MenuDetailTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.keyLabel.text = "Nazvanie"
            cell.valueLabel.text = restarant!.name
        case 1:
            cell.keyLabel.text = "Adress"
            cell.valueLabel.text = restarant!.location
        case 2:
            cell.keyLabel.text = "Tip"
            cell.valueLabel.text = restarant!.type
        case 3:
            cell.keyLabel.text = "Ya tam bil?"
            cell.valueLabel.text = restarant!.isVisited ? "Da" : "Net"
        default:
            break
        }
        
        cell.backgroundColor = .clear
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
