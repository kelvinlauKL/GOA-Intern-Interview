//
//  FirstViewController.swift
//  Challenge2SHIRDAYAN
//
//  Created by Shir Dayan on 2018-05-14.
//  Copyright © 2018 Shir Dayan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var myTableView: UITableView!
    
    var objects: [Object] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        objects = createArray()
    }
    
    func createArray() -> [Object]{
        var myObjects: [Object] = []
        
        let object1 = Object(image: #imageLiteral(resourceName: "image1"), title: "Microphone")
        let object2 = Object(image: #imageLiteral(resourceName: "image2"), title: "Controls")
        let object3 = Object(image: #imageLiteral(resourceName: "image3"), title: "Music Sheets")
        
        myObjects.append(object1)
        myObjects.append(object2)
        myObjects.append(object3)
        
        return myObjects
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let object = objects[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ContentTableViewCell
        
        cell.setObject(object: object)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TableViewtoDetail"{
            let destinationViewController = segue.destination as! DetailViewController
            destinationViewController.object = sender as? Object
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let object = objects[indexPath.row]
        performSegue(withIdentifier: "TableViewtoDetail", sender: object)
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
