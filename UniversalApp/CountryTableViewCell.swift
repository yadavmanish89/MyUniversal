//
//  CountryTableViewCell.swift
//  UniversalApp
//
//  Created by Yadav, Manish on 12/7/16.
//  Copyright © 2016 Yadav, Manish. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet weak var countryLabelDummy: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
