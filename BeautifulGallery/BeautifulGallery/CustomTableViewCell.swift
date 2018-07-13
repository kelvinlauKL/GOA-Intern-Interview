//
//  CustomTableViewCell.swift
//  BeautifulGallery
//
//  Created by Martin-Artur on 2018-05-13.
//  Copyright © 2018 MartinYushko. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {


  @IBOutlet weak var cellImage: UIImageView!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
