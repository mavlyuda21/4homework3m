//
//  CustomCell.swift
//  4homework3m
//
//  Created by mavluda on 17/3/23.
//

import UIKit

class CustomCell: UITableViewCell {

    
    @IBOutlet weak var imageSet: UIImageView!
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    
    
    func setupCell(_ text1: String,_ text2: String, _ image: String){
        self.imageSet.image = UIImage(named: image)
        self.topLabel.text = text1
        self.bottomLabel.text = text2 + " items"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageSet.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
