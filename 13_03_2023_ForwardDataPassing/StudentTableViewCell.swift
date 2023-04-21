//
//  StudentTableViewCell.swift
//  13_03_2023_ForwardDataPassing
//
//  Created by Vishal Jagtap on 20/04/23.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var studentFirstNameLabel: UILabel!
    @IBOutlet weak var studentRollNumberLabel: UILabel!
    @IBOutlet weak var studentCityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
