//
//  ObservationEventTableViewCell.swift
//  Field Survey
//
//  Created by Eric Rachell on 4/6/18.
//  Copyright © 2018 Eric Rachell. All rights reserved.
//

import UIKit

class ObservationEventTableViewCell: UITableViewCell {

    @IBOutlet weak var observationIconImageView: UIImageView!
    
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
