//
//  SecndViewController.swift
//  GOA_Challenge2_HamzaRasheed_mkII
//
//  Created by Susan and Amir on 2018-05-13.
//  Copyright © 2018 Hamza. All rights reserved.
//

import UIKit

class SecndViewController: UIViewController {

  @IBOutlet weak var myImageView: UIImageView!
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    //sets the imageView on the page to be the image in the cell that was clicked to segue here
    myImageView.image = UIImage(named: galleryWords[myIndex])
    
    }

}
