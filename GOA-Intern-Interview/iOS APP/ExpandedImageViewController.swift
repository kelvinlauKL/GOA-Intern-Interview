//
//  ExpandedImageViewController.swift
//  iOS APP
//
//  Created by Student on 2018-05-15.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ExpandedImageViewController: UIViewController {
    
    var selectedFruit: Fruit? = nil

    @IBOutlet weak var expandedFruit: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        expandedFruit.image = selectedFruit?.image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
