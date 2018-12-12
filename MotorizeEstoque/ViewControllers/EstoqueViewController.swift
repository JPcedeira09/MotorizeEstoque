//
//  EstoqueViewController.swift
//  MotorizeEstoque
//
//  Created by Joao Paulo on 08/12/18.
//  Copyright © 2018 Joao Paulo. All rights reserved.
//

import UIKit

class EstoqueViewController: UIViewController {

    @IBOutlet weak var titulo: UILabel!
    
    @IBAction func buttonDissmiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.dataSource = self
        self.table.delegate = self
        
        self.table.register(UINib(nibName: "EstoqueCarroTableViewCell", bundle: nil), forCellReuseIdentifier: "EstoqueCarroTableViewCell")
    }
    
}

extension EstoqueViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    //segueEstoque
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EstoqueCarroTableViewCell", for: indexPath) as! EstoqueCarroTableViewCell
        
        cell.ano_versao.setTitle("2015/2016", for: .normal)
        cell.nome_versao.text = "CHEVROLET CAMARO 6.2 SS COUPÉ"
        cell.cor_carro.setTitle("Azul", for: .normal)
        cell.status.setTitle("Disponivel", for: .normal)
        cell.kilometragem.setTitle("20.000 km", for: .normal)
        cell.fotoCarro.image = #imageLiteral(resourceName: "camaro")

        return cell
    }

}
