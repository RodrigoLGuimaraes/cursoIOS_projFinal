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
        if(selected){
            //Animacao de selecionado
//            if(animated){
                UIView.animate(withDuration: 0.5, animations: {
                    self.imagemBG.alpha = 0.4
                })
//            }
//            else
//            {
//                self.imagemBG.alpha = 0.4
//            }
        }
        else
        {
            //Voltar pro estado inicial
//            if(animated){
                UIView.animate(withDuration: 0.5, animations: {
                    self.imagemBG.alpha = 1.0
                })
//            }
//            else
//            {
//                self.imagemBG.alpha = 1.0
//            }
        }
    }

}
