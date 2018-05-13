//
//  ImageListViewController.swift
//  GOA-Intern-Interview-Challenge-2-iOS
//
//  Created by Brad on 2018-05-10.
//  Copyright © 2018 BradPeng. All rights reserved.
//

import UIKit

class ImageListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource //import UITableViewDelegate and UITableViewDataSource to for usage of the tableView functions
{
   
    //Struct for storing info on all images
    struct imageStruct {
        var image = UIImage() //UIImage file
        var title = String() //Name of image to be displayed
    }
    
    var imageArray = [imageStruct]() //array for storing all images
 
    //variables that store info about the image user tapped on, vales will be passed on to EnlargedImageViewController
    var selectedImage = UIImage()
    var imageTitle = String()
 
    //Return INT, how many sections in table
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1; //only one section needed for this app
    }
 
    //return INT, how many rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return imageArray.count //always returns exact amount of rows needed for all images without empty cells
    }
    
    //insert contents to cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageListTableViewCell") as! ImageListTableViewCell //reuse cells with same format
        
        cell.cellImage.image = imageArray[indexPath.row].image //fill cells with images from imageArray
    
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nextScreen = segue.destination as! EnlargedImageViewController
        
        //pass on information about the image the user tapped on to the next scene (EnlargedImageViewController)
        nextScreen.image = selectedImage
        nextScreen.imageTitle = imageTitle
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        //set variables to proper values before being passed on to next screen (EnlargedImageViewController)
        selectedImage = imageArray[indexPath.row].image
        imageTitle = imageArray[indexPath.row].title
        
        performSegue(withIdentifier: "imageListToEnlarged", sender: self)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //define images and their properties, also add them to the imageArray
        let imageOne = imageStruct(image: #imageLiteral(resourceName: "background_PaintSplash"),
                                   title: "Paint Splash")
        imageArray.append(imageOne)

        let imageTwo = imageStruct(image: #imageLiteral(resourceName: "background_Spectre"),
                                   title: "The Spectre")
        imageArray.append(imageTwo)
        
        let imageThree = imageStruct(image: #imageLiteral(resourceName: "Background_Space"), title: "Space")
        imageArray.append(imageThree)
        
        let imageFour = imageStruct(image: #imageLiteral(resourceName: "background_Be_Linspired"), title: "Be Linspired")
        imageArray.append(imageFour)
        
        let imageFive = imageStruct(image: #imageLiteral(resourceName: "Background_Pastel_Leaves"), title: "Pastel Leaves")
        imageArray.append(imageFive)
        
        let imageSix = imageStruct(image: #imageLiteral(resourceName: "Background_Defocused_Christmas"), title: "Christmas Lights")
        imageArray.append(imageSix)
        
        let imageSeven = imageStruct(image: #imageLiteral(resourceName: "Background_Space_Pink"), title: "Pink Space")
        imageArray.append(imageSeven)
        
        let imageEight = imageStruct(image: #imageLiteral(resourceName: "Background_Forest_Sunset"), title: "Forest Sunset")
        imageArray.append(imageEight)
    }
}
