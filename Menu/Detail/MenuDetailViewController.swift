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
    
    @IBAction func unownedSegue(segue: UIStoryboardSegue) {
        
    }
    
    var restarant: Menu?
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rateButtons()
        
        tableViewRowHight()
        
        imageView.image = UIImage(named: restarant!.image)
        
        tableView.tableFooterView = UIView()
        
        title = restarant!.name
    }
    
    private func rateButtons() {
        rateButton.layer.cornerRadius = 15
        rateButton.layer.borderWidth = 1
        rateButton.layer.borderColor = UIColor.white.cgColor
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
            cell.keyLabel.text = "Name"
            cell.valueLabel.text = restarant!.name
        case 1:
            cell.keyLabel.text = "Adress"
            cell.valueLabel.text = restarant!.location
        case 2:
            cell.keyLabel.text = "Type"
            cell.valueLabel.text = restarant!.type
        case 3:
            cell.keyLabel.text = "I there was?"
            cell.valueLabel.text = restarant!.isVisited ? "Yes" : "No"
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
