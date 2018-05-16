//
//  ImageTableViewController.swift
//  iOS APP
//
//  Created by Student on 2018-05-15.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ImageTableViewController: UITableViewController {
    
    var fruitArray: [Fruit] = []
    var selectedFruit: Fruit? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        fruitArray = createArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createArray() -> [Fruit]{
        var tempFruit: [Fruit] = []
        
        let fruit1 = Fruit(image: #imageLiteral(resourceName: "Apple"))
        let fruit2 = Fruit(image: #imageLiteral(resourceName: "Orange"))
        let fruit3 = Fruit(image: #imageLiteral(resourceName: "Banana"))
        
        tempFruit.append(fruit1)
        tempFruit.append(fruit2)
        tempFruit.append(fruit3)
        
        
        return tempFruit
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruitArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let fruit = fruitArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.FruitView.image = fruit.image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let fruit = fruitArray[indexPath.row]
        selectedFruit = fruit
        performSegue(withIdentifier: "ExpandedImageView", sender: self)
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationViewController = segue.destination as? ExpandedImageViewController {
            destinationViewController.selectedFruit = selectedFruit
        }
    }
    

}
