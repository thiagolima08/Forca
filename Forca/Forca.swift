//
//  Forca.swift
//  Forca
//
//  Created by Thiago da Silva Lima on 29/04/21.
//

import Foundation

class Forca: NSObject {
    var palavra : String = "carro"
    var tentativa : Int = 0
    var str:[String] = []
    
    override init() {
    }
    
    func run(letra: String) -> String {
        let letra = letra.lowercased()
        let erros: [String] = ["cabeça", "tronco", "mão direita", "mão esquerda", "braço direito", "braço esquerdo", "pé direito", "pé esquerdo", "perna direita", "perna esquerda"]
        if(!(str.count==self.palavra.count)){
            for _ in 0...self.palavra.count-1{
                str.append("_")
            }
        }
        while tentativa < erros.capacity-1 {
            let contem: Bool = self.palavra.contains(letra)
            if contem == false {
                tentativa+=1
                return erros[tentativa-1]
            }
            else{
                let indice = indice(letra: letra)
                for i in indice{
                    str[i]=letra
                }
                print("Palavra: \(str.joined())")
                if self.palavra == self.str.joined() {
                    return "Acertou a palavra: \(self.palavra) -> Parabéns!"
                }
                return "Acertou a letra: \(letra)"
            }
        }
        return "perna esquerda -> Fim de jogo"
    }
    
    func indice(letra: String)->[Int]{
        var array: [Int] = []
        for(i,v) in self.palavra.enumerated(){
            if(Character(letra) == v){
                array.append(i)
            }
        }
        return array
    }
    
}

