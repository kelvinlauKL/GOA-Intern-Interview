//
//  ViewController.swift
//  GOA_Challenge2_HamzaRasheed_mkII
//
//  Created by Susan and Amir on 2018-05-13.
//  Copyright © 2018 Hamza. All rights reserved.
//

import UIKit


var myIndex = 0

var galleryWords = ["Lightsaber", "Halo_Helmet", "Energy_Sword", "Wine_Glass"]

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
  
  @IBOutlet weak var tableView: UITableView!
  
 
 
  //set number of sections of the table view
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
    return 1
    
  }
  //set the number of rows needed to the number of items needed to be listed
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return galleryWords.count
    
  }
  //formats cells for different index paths
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell

    
    //removes the greyed out selection effect
    cell.selectionStyle = UITableViewCellSelectionStyle.none
    //sets the background image per cell to be each a different image
    cell.backgroundView = UIImageView( image: UIImage(named: galleryWords[indexPath.row]))
   
    
    
    return cell
    
  }
  //when it selects a cell it will record it's index path and preform a segue to a different page
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Row \(indexPath.row) selected")
   
    myIndex = indexPath.row
    performSegue(withIdentifier: "segue", sender: self)
  }
  

}

