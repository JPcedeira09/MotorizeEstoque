//
//  HomeViewController.swift
//  MotorizeEstoque
//
//  Created by Joao Paulo on 08/12/18.
//  Copyright © 2018 Joao Paulo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    @IBOutlet weak var labelNomeLoja: UILabel!
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.dataSource = self
        self.table.delegate = self
        
        self.table.register(UINib(nibName: "EstoqueTableViewCell", bundle: nil), forCellReuseIdentifier: "EstoqueTableViewCell")
        self.table.register(UINib(nibName: "NomeLojaTableViewCell", bundle: nil), forCellReuseIdentifier: "NomeLojaTableViewCell")
    }

}


extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    //segueEstoque
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 1 {
            let cell = table.dequeueReusableCell(withIdentifier: "NomeLojaTableViewCell") as! NomeLojaTableViewCell
            return cell
           
        }else if indexPath.row == 0{
            let cell = table.dequeueReusableCell(withIdentifier: "EstoqueTableViewCell") as! EstoqueTableViewCell
            return cell
        }else{
            let cell = table.dequeueReusableCell(withIdentifier: "EstoqueTableViewCell") as! EstoqueTableViewCell
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            print("Tela ESTOQUE")
            performSegue(withIdentifier: "segueEstoque", sender: self)
        case 1:
            print("")
            
        default:
            print("DEU RUIM")
        }
        
    }
}
