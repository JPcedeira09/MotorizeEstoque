//
//  Acesso.swift
//  MotorizeEstoque
//
//  Created by Joao Paulo on 11/12/18.
//  Copyright © 2018 Joao Paulo. All rights reserved.
//

import Foundation


class Acesso {
    
    var id_acesso:Int
    
    var email:String
    
    var usuario:String
    
    var senha:String
    
    var logavel:Bool

    init(id_acesso:Int,email:String,usuario:String,senha:String,logavel:Bool){
    self.id_acesso = id_acesso
    self.email = email
    self.usuario = usuario
    self.senha = senha
    self.logavel = logavel
    }
    
    func toDict (_ acesso : Acesso) -> [String:Any]{
        return ["id_acesso":acesso.id_acesso,
                "email":acesso.email,
                "usuario":acesso.usuario,
                "senha":acesso.senha,
                "logavel":acesso.logavel]
    }
    
    init( acessoJSON : [String : Any]) {
        self.id_acesso = acessoJSON["id_acesso"] as? Int ?? 0
        self.email = acessoJSON["id_acesso"] as? String ?? ""
        self.usuario = acessoJSON["usuario"] as? String ?? ""
        self.senha = acessoJSON["senha"] as? String ?? ""
        self.logavel = acessoJSON["logavel"] as? Bool ?? false
    }
}
