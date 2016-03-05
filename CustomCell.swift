//
//  CustomCell.swift
//  MyFirstApp
//
//  Created by Jonas Kucharz on 05/03/2016.
//  Copyright © 2016 Jonas Kucharz. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    var contact = Contact()

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var forename: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
