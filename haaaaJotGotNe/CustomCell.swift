//
//  CustomCell.swift
//  haaaaJotGotNe
//
//  Created by 이용수 on 2023/03/22.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var imageView_custom: UIImageView!
    @IBOutlet weak var label_custom: UILabel!
    @IBOutlet weak var button_custom: UIButton!
    
    @IBAction func btnAction(_ sender: Any) {
        print("title: \(label_custom.text)")
        
        if label_custom.text!.contains("pencil") {
            button_custom.setImage( UIImage(named: "search"), for: .normal)
        } else if label_custom.text!.contains("doc") {
            button_custom.setImage( UIImage(named: "user"), for: .normal)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
