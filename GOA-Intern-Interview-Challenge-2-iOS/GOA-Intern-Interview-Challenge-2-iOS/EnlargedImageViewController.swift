//
//  EnlargedImageViewController.swift
//  GOA-Intern-Interview-Challenge-2-iOS
//
//  Created by Brad on 2018-05-10.
//  Copyright © 2018 BradPeng. All rights reserved.
//

import UIKit

class EnlargedImageViewController: UIViewController
{

    @IBOutlet weak var enlargedImage: UIImageView! //the image view that displays the main image
    
    //stores variables passed on from previous screen (ImageListViewController)
    var image = UIImage() //stores image file
    var imageTitle = String() //stores name of image to be displayed as viewController title
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //set image and title based on values passed on from previous screen (ImageListViewController)
        enlargedImage.image = image
        self.title = imageTitle
        
    }

}
