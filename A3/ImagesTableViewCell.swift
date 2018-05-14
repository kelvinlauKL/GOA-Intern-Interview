//
//  ImagesTableViewCell.swift
//  A3
//
//  Created by Paul Tang on 2018-05-13.
//  Copyright © 2018 Paul Tang. All rights reserved.
//

import UIKit

class ImagesTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var displayedImage: UIImageView!

}
