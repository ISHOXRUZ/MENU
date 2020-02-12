//
//  MenuDetailTableViewCell.swift
//  Menu
//
//  Created by Lucifer on 2/11/20.
//  Copyright © 2020 Lucifer. All rights reserved.
//

import UIKit

class MenuDetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var keyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
