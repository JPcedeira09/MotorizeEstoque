//
//  EstoqueCarroTableViewCell.swift
//  MotorizeEstoque
//
//  Created by Joao Paulo on 08/12/18.
//  Copyright © 2018 Joao Paulo. All rights reserved.
//

import UIKit

class EstoqueCarroTableViewCell: UITableViewCell {

    @IBOutlet weak var nome_versao: UILabel!
    @IBOutlet weak var valor: UILabel!
    @IBOutlet weak var kilometragem: UIButton!
    @IBOutlet weak var status: UIButton!
    @IBOutlet weak var cor_carro: UIButton!
    @IBOutlet weak var ano_versao: UIButton!
    @IBOutlet weak var fotoCarro: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
