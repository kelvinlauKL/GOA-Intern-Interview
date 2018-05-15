//
//  ContentTableViewCell.swift
//  Challenge2SHIRDAYAN
//
//  Created by Shir Dayan on 2018-05-14.
//  Copyright © 2018 Shir Dayan. All rights reserved.
//

import UIKit

class ContentTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellTitleLbl: UILabel!
    
    func setObject(object: Object){
        cellImageView.image = object.image
        cellTitleLbl.text = object.title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
