//
//  main.swift
//  Forca
//
//  Created by Thiago da Silva Lima on 29/04/21.
//

import Foundation

print("Digite uma letra:")
var forca: Forca = Forca();
while let line = readLine() {
    print("Digite uma letra:")
    print(forca.run(letra:line))
}


