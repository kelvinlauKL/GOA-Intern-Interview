//
//  ImagesTableViewController.swift
//  A3
//
//  Created by Paul Tang on 2018-05-13.
//  Copyright © 2018 Paul Tang. All rights reserved.
//

import UIKit

class ImagesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var selectedImage: UIImage? = nil
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let image = imageList[indexPath.row]
        selectedImage = image
        performSegue(withIdentifier: "showImage", sender: self)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseImage", for: indexPath) as! ImagesTableViewCell

        let dislayedImageList = imageList[indexPath.row]
        cell.displayedImage.image = dislayedImageList
        return cell
    }


    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? ShowImageViewController {
            destinationViewController.selectedImage = selectedImage
        }
    }
    
}
