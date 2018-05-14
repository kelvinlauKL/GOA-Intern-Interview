//
//  ShowImageViewController.swift
//  A3
//
//  Created by Paul Tang on 2018-05-13.
//  Copyright © 2018 Paul Tang. All rights reserved.
//

import UIKit

class ShowImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        displayedImage.image = selectedImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var displayedImage: UIImageView!

    var selectedImage: UIImage? = nil

    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}

