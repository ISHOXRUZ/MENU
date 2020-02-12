//
//  MenuTableViewController.swift
//  Menu
//
//  Created by Lucifer on 2/10/20.
//  Copyright © 2020 Lucifer. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnSwipe = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Restarant.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellReuse", for: indexPath) as! MenuTableViewCell
        
        cell.thumbnailImageView.image = UIImage(named: Restarant[indexPath.row].image)
        cell.thumbnailImageView.layer.cornerRadius = 15
        cell.thumbnailImageView.clipsToBounds = true
        
        cell.nameLabel.text = Restarant[indexPath.row].name
        
        cell.locationLabel.text = Restarant[indexPath.row].location
        
        cell.typeLabel.text = Restarant[indexPath.row].type
        
        cell.accessoryType = Restarant[indexPath.row].isVisited ? .checkmark : .none
        
        
        return cell
    }
    
    func showAlert(index: Int) {
        let ac = UIAlertController(title: nil, message: "viberite destviya", preferredStyle: .actionSheet)
        
        let call = UIAlertAction(title: "pozvonit:+998(12)345-67-8\(index)", style: .default) { (action: UIAlertAction) -> Void in
            
            let aleetC = UIAlertController(title: nil, message: "Vizov ne mojet sovershen", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            aleetC.addAction(ok)
            self.present(aleetC, animated: true, completion: nil)
            
        }
        let cancel = UIAlertAction(title: "Otmena", style: .cancel, handler: nil)
        
        ac.addAction(cancel)
        ac.addAction(call)
        
        present(ac, animated: true, completion: nil)
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //showAlert(index: indexPath.row)
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let share = UITableViewRowAction(style: .default, title: "Podelitsya") { (action,  indexPath) in
            
            let defaultText = "Ya seychas v " + Restarant[indexPath.row].name
            if let image = UIImage(named: Restarant[indexPath.row].image) {
                let activityController = UIActivityViewController(activityItems: [defaultText, image], applicationActivities: nil)
                self.present(activityController, animated: true, completion: nil)
            }
        }
        share.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        return [share]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let dvc = segue.destination as! MenuDetailViewController
                dvc.restarant = Restarant[indexPath.row]
            }
        }
    }
}
