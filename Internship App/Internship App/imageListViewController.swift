//
//  imageListViewController.swift
//  Internship App
//
//  Created by Hod Kimhi on 2018-05-09.
//  Copyright © 2018 Hod Kimhi. All rights reserved.
//

import UIKit

class tableViewCell: UITableViewCell{
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
}

class imageListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //assigning the variables that will be used for the segue
    var image = UIImage()
    var imageLabel = String()

    //an array for the image names (a label above the image)
    var imageNames = ["IMG 1", "IMG 2", "IMG 3", "IMG 4", "IMG 5", "IMG 6", "IMG 7", "IMG 8", "IMG 9", "IMG 10"
    ]
    
    //an array to store the names of the images. Instead of using the actual image, I used named: "IMG 1" for example so that if I change the images in the assets folder, I can just keep the image name the sameß
    var imagesArray = [UIImage(named: "IMG 1"), UIImage(named: "IMG 2"), UIImage(named: "IMG 3"), UIImage(named: "IMG 4"), UIImage(named: "IMG 5"), UIImage(named: "IMG 6"), UIImage(named: "IMG 7"), UIImage(named: "IMG 8"), UIImage(named: "IMG 9"), UIImage(named: "IMG 10")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Changing the title of the view to "Home"
        self.title = "Home"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //the numbner of cells needed will be the amount of images we have
        return imageNames.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! tableViewCell
        
        // Configure the cell...
        let imageName = imageNames[indexPath.row]
        let image = imagesArray[indexPath.row]
        cell.label.text = imageName //change the text of the label to the correct image name
        cell.cellImageView.image = image //change the image of the UIImage to the correct image
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let singleImageView = segue.destination as! imageViewController
        //assigning the values for the image and image name for the next view
        singleImageView.enlargedImage = image
        singleImageView.imageName = imageLabel
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //assigning the correct information (image and image name) into variable based on the cell which the user tapped which will be used for segueing.
        image = imagesArray[indexPath.row]!
        imageLabel = imageNames[indexPath.row]
        performSegue(withIdentifier: "listImagetoSingleImage", sender: self)
    }
}
