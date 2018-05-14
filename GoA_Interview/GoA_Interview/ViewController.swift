//
//  ViewController.swift
//  GoA_Interview
//
//  Created by Student on 2018-05-14.
//  Copyright © 2018 Bronwen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func birdButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "bird", sender: sender)
    }
    
    @IBAction func leafButton(_ sender: UIButton)
    {
       performSegue(withIdentifier: "leaf", sender: sender)
    }
    
    @IBAction func puppyButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "puppy", sender: sender)
    }
    
    @IBAction func riverButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "river", sender: sender)
    }
    
    @IBAction func roseButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "rose", sender: sender)
    }
    
    @IBAction func trainButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "train", sender: sender)
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

