//
//  imageViewController.swift
//  Internship App
//
//  Created by Hod Kimhi on 2018-05-10.
//  Copyright © 2018 Hod Kimhi. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {
    @IBOutlet weak var singleImage: UIImageView!
    
    //variables that were assigned values before the segue
    var enlargedImage = UIImage()
    var imageName = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //assigning the image and title to the view
        singleImage.image = enlargedImage
        self.title = imageName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
