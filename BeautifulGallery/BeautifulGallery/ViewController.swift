//
//  ViewController.swift
//  BeautifulGallery
//
//  Created by Martin-Artur on 2018-05-09.
//  Copyright © 2018 MartinYushko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  struct ModelData{
    var name: String
    var image: UIImage?
    let description: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    init(name: String, image: UIImage){
      self.name = name
      self.image = image
    }
  }
  
  var food: [ModelData] = []
  
  
  
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return (food.count)
  }
  
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
    cell.cellImage.image = food[indexPath.row].image
    cell.titleLabel.text = food[indexPath.row].name
    cell.descriptionLabel.text = food[indexPath.row].description
    return cell
  }
  
  
  @IBOutlet weak var expandedButton: UIButton!
  @IBOutlet weak var expandedImage: UIImageView!
  @IBOutlet var expandedView: UIView!
  @IBOutlet weak var expandedLabel: UILabel!
  @IBOutlet weak var dimView: UIView!
  
  public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let data = food[indexPath.row]
    
    expandedImage.image = data.image
    expandedLabel.text = data.name
    expandedView.center = view.center
    
    expandedView.transform = CGAffineTransform(scaleX: 0.8, y: 1.2)
    
    view.addSubview(expandedView)

    UIView.animate(withDuration: 0.3, animations: {self.dimView.alpha = 0.8})
    UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
          self.expandedView.transform = .identity
    })
    
  }
  
  @IBAction func closeExpandedView(_ sender: Any) {
   
    self.expandedButton.alpha = 1

    UIView.animate(withDuration: 0.5, animations: {
      self.dimView.alpha = 0
      self.expandedView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
    }, completion: { (success) in
    self.expandedView.removeFromSuperview()})
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    food.append(ModelData(name: "Banana", image: UIImage(named: "banana")!))
    food.append(ModelData(name: "Apple", image: UIImage(named: "apple")!))
    food.append(ModelData(name: "Orange", image: UIImage(named: "orange")!))
    food.append(ModelData(name: "Chocolate", image: UIImage(named: "chocolate")!))
    food.append(ModelData(name: "Cake", image: UIImage(named: "cake")!))
    food.append(ModelData(name: "Strawberry", image: UIImage(named: "strawberry")!))

    expandedButton.layer.cornerRadius = expandedButton.frame.width/2
    expandedView.layer.cornerRadius = 16
    
  }

  
  
}

