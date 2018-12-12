//
//  CadastroViewController.swift
//  MotorizeEstoque
//
//  Created by Joao Paulo on 12/12/18.
//  Copyright © 2018 Joao Paulo. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.table.dataSource = self
        self.table.delegate = self
        
        self.table.register(UINib(nibName: "InfoFuncionarioTableViewCell", bundle: nil), forCellReuseIdentifier: "InfoFuncionarioTableViewCell")
        self.table.register(UINib(nibName: "InfoPessoaisTableViewCell", bundle: nil), forCellReuseIdentifier: "InfoPessoaisTableViewCell")
        self.table.register(UINib(nibName: "EnderecoLojaTableViewCell", bundle: nil), forCellReuseIdentifier: "EnderecoLojaTableViewCell")
       self.table.register(UINib(nibName: "CadastrarBtnTableViewCell", bundle: nil), forCellReuseIdentifier: "CadastrarBtnTableViewCell")
       self.table.register(UINib(nibName: "TipoPessoaTableViewCell", bundle: nil), forCellReuseIdentifier: "TipoPessoaTableViewCell")
        
    }
    
}

extension CadastroViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = table.dequeueReusableCell(withIdentifier: "TipoPessoaTableViewCell") as! TipoPessoaTableViewCell
            return cell
        }else if indexPath.row == 1{
            let cell = table.dequeueReusableCell(withIdentifier: "InfoPessoaisTableViewCell") as! InfoPessoaisTableViewCell
            return cell
        }else if indexPath.row == 2{
            let cell = table.dequeueReusableCell(withIdentifier: "InfoFuncionarioTableViewCell") as! InfoFuncionarioTableViewCell
            return cell
        }else if indexPath.row == 3{
            let cell = table.dequeueReusableCell(withIdentifier: "CadastrarBtnTableViewCell") as! CadastrarBtnTableViewCell
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
