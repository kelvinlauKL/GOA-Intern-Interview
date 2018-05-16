//
//  TableViewCell.swift
//  iOS APP
//
//  Created by Student on 2018-05-15.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var FruitView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setFruitImage(fruit: Fruit) {
        FruitView.image = fruit.image
    }

}
