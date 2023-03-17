//
//  DetailViewController.swift
//  4homework3m
//
//  Created by mavluda on 17/3/23.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var detailImage: UIImageView!
    
    var imageText = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var nameText = ""
    
    @IBOutlet weak var costLabel: UILabel!
    
    var costText = ""
    
    @IBOutlet weak var roomTypeLabel: UILabel!
    
    var roomTypeText = ""
    
    @IBOutlet weak var colorLabel: UILabel!
    
    var colorText = ""
    
    @IBOutlet weak var materialLabel: UILabel!
    
    var materialText = ""
    
    @IBOutlet weak var dimansionsLabel: UILabel!
    
    var dimensionsText = ""
    
    @IBOutlet weak var weightLabel: UILabel!
    
    var weightText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillController(image: imageText, name: nameText, cost: costText, roomType: roomTypeText, color: colorText, material: materialText, dimensions: dimensionsText, weight: weightText)
        
    }
    
    func fillController(image: String,name: String, cost: String, roomType: String, color: String, material: String, dimensions: String, weight: String){
        detailImage.image = UIImage(named: image)
        nameLabel.text = name
        costLabel.text = cost
        roomTypeLabel.text = roomType
        colorLabel.text = color
        materialLabel.text = material
        dimansionsLabel.text = dimensions
        weightLabel.text = weight
    }
    
    @IBAction func closeTapped(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
}
