//
//  AppTableViewCell.swift
//  appSuggest
//
//  Created by Rodrigo Guimaraes on 2017-10-27.
//  Copyright © 2017 RodrigoLG. All rights reserved.
//

import UIKit

class AppTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var preco: UILabel!
    @IBOutlet weak var imagemBG: UIImageView!
    @IBOutlet weak var stackEstrelas: UIStackView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
