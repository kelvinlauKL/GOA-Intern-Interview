//
//  ViewController.swift
//  JackChan_Challenge2
//
//  Created by Student on 2018-05-09.
//  Copyright © 2018 Jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController
    {
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    @IBOutlet weak var pic4: UIImageView!
    @IBOutlet weak var pic5: UIImageView!
    
    @IBAction func pic1Tapped(_ sender: Any)
        {
            performSegue(withIdentifier: "pic1Segue", sender: self)
        }
    
    @IBAction func pic2Tapped(_ sender: Any)
        {
            performSegue(withIdentifier: "pic2Segue", sender: self)
        }
    
    @IBAction func pic3Tapped(_ sender: Any)
        {
            performSegue(withIdentifier: "pic3Segue", sender: self)
        }
    
    @IBAction func pic4Tapped(_ sender: Any)
        {
            performSegue(withIdentifier: "pic4Segue", sender: self)
        }
    
    @IBAction func pic5Tapped(_ sender: Any)
        {
            performSegue(withIdentifier: "pic5Segue", sender: self)
        }
    }

