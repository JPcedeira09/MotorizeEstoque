//
//  EnderecoLojaTableViewCell.swift
//  MotorizeEstoque
//
//  Created by Joao Paulo on 12/12/18.
//  Copyright © 2018 Joao Paulo. All rights reserved.
//

import UIKit

class EnderecoLojaTableViewCell: UITableViewCell {

    @IBOutlet weak var cep: UITextField!
    @IBOutlet weak var rua: UITextField!
    @IBOutlet weak var numero: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
