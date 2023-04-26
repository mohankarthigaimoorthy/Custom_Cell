//
//  TableViewCell.swift
//  CustomCell
//
//  Created by Mohan K on 15/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var appleImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
