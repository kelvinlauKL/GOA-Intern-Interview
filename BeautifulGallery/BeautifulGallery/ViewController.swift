//
//  ViewController.swift
//  BeautifulGallery
//
//  Created by Martin-Artur on 2018-05-09.
//  Copyright © 2018 MartinYushko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tb: UITableView!
    
    var masterFood: [ModelData] = []
    
  struct ModelData{
    enum Food {
        case fruit
        case dessert
    }
    var type: Food
    var name: String
    var image: UIImage?
    let description: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    init(name: String, image: UIImage, foodType: Food){
      self.name = name
      self.image = image
      self.type = foodType
    }
  }
  
  var food: [ModelData] = []
  
  
  
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return (food.count+1)
  }
  
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if(indexPath.row == 0){
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! LabelTableViewCell
        return cell
    }
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
    cell.cellImage.image = food[indexPath.row-1].image
    cell.titleLabel.text = food[indexPath.row-1].name
    cell.descriptionLabel.text = food[indexPath.row-1].description
    return cell
  }
  
  
  @IBOutlet weak var expandedButton: UIButton!
  @IBOutlet weak var expandedImage: UIImageView!
  @IBOutlet var expandedView: UIView!
  @IBOutlet weak var expandedLabel: UILabel!
  @IBOutlet weak var dimView: UIView!
    
    @IBOutlet var selectionVeiw: UIView!
    
    @IBAction func allFoodsSelection(_ sender: Any) {
    food = masterFood
    tb.reloadData()
    selectionVeiw.removeFromSuperview()
    }
    
    
    @IBAction func fruitsOnlySelection(_ sender: Any) {
        food.removeAll()
        for i in 0..<masterFood.count{
            if(masterFood[i].type == .fruit){
                food.append(masterFood[i])
            }
        }
        tb.reloadData()
        selectionVeiw.removeFromSuperview()
    }
    
    @IBAction func dessertsOnlySelection(_ sender: Any) {
        food.removeAll()
        for i in 0..<masterFood.count{
            if(masterFood[i].type == .dessert){
                food.append(masterFood[i])
            }
        }
        tb.reloadData()
        selectionVeiw.removeFromSuperview()
    }
    
    
    
    
  
  public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if(indexPath.row == 0) {
        //selectionVeiw.layer.cornerRadius = 20
        let centerO = (tableView.cellForRow(at: indexPath)?.center)!
        selectionVeiw.center = CGPoint(x: centerO.x - CGFloat(85), y: centerO.y + CGFloat(190))
        view.addSubview(selectionVeiw)
        
    }else{
        let data = food[indexPath.row-1]
    
        expandedImage.image = data.image
        expandedLabel.text = data.name
        expandedView.center = view.center
    
        expandedView.transform = CGAffineTransform(scaleX: 0.8, y: 1.2)
    
        view.addSubview(expandedView)

       // UIView.animate(withDuration: 0.3, animations: {self.dimView.alpha = 0.8})
       // UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5,  initialSpringVelocity: 0, options: [], animations: {
          //  self.expandedView.transform = .identity
      //  })
    }
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
    food.append(ModelData(name: "Banana", image: UIImage(named: "banana")!, foodType: .fruit))
    food.append(ModelData(name: "Apple", image: UIImage(named: "apple")!, foodType: .fruit))
    food.append(ModelData(name: "Orange", image: UIImage(named: "orange")!, foodType: .fruit))
    food.append(ModelData(name: "Chocolate", image: UIImage(named: "chocolate")!, foodType: .dessert))
    food.append(ModelData(name: "Cake", image: UIImage(named: "cake")!, foodType: .dessert))
    food.append(ModelData(name: "Strawberry", image: UIImage(named: "strawberry")!, foodType: .fruit))
    masterFood = food
    expandedButton.layer.cornerRadius = expandedButton.frame.width/2
    expandedView.layer.cornerRadius = 16
    
  }

  
  
}

