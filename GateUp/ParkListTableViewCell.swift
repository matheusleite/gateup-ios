//
//  ParkListTableViewCell.swift
//  GateUp
//
//  Created by Matheus Leite on 24/10/16.
//  Copyright © 2016 Matheus Leite. All rights reserved.
//

import UIKit

class ParkListTableViewCell: UITableViewCell {

    @IBOutlet weak var parkDistance: UILabel!
    @IBOutlet weak var parkName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
