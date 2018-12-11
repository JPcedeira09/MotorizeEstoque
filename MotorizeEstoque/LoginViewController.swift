//
//  LoginViewController.swift
//  MotorizeEstoque
//
//  Created by Joao Paulo on 11/12/18.
//  Copyright © 2018 Joao Paulo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var acesso : Acesso?
    
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBAction func acessar(_ sender: UIButton) {
        login(email: email.text!, senha: senha.text!) 
        if(acesso?.logavel == true){
            print("logando...")
        }else{
            print("nao logavel...")
        }
    }
    @IBAction func registrar(_ sender: UIButton) {
        print("tentando registrar...")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    func login (email : String  , senha: String){
        let configuracao = URLSessionConfiguration.default // Padrao de configuração.
        let sessao = URLSession(configuration: configuracao)
        let url = URL(string: "http://localhost:8100/api/acesso/login/"+email+"/"+senha)
        
        print(url!)
        let task = sessao.dataTask(with: url!, completionHandler: {
            (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            } else {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]{
                        let dicionario = Acesso(acessoJSON: json)
                        print(json)
                        self.acesso = dicionario
                    }
                } catch {
                    print("error in JSONSerialization")
                }
            }
        })
        task.resume()
    }

}
