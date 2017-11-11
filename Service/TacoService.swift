//
//  TacoService.swift
//  Tacos
//
//  Created by Matt Deuschle on 11/11/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func tacoDataDownloaded()
}

class TacoService {
    static let instance = TacoService()
    var tacos = [Taco]()
    weak var delegate: DataServiceDelegate?
    func downloadTacos() {
        // Beef Tacos
        tacos.append(Taco(shell: 1, protein: 1, style: 1, id: 1, name: "Corn Beef Plain"))
        tacos.append(Taco(shell: 2, protein: 1, style: 1, id: 2, name: "Flour Beef Plain"))
        tacos.append(Taco(shell: 1, protein: 1, style: 2, id: 3, name: "Corn Beef Loaded"))
        tacos.append(Taco(shell: 2, protein: 1, style: 2, id: 4, name: "Flour Beef Loaded"))

        // Chicken Tacos
        tacos.append(Taco(shell: 1, protein: 2, style: 1, id: 5, name: "Corn Chicken Plain"))
        tacos.append(Taco(shell: 2, protein: 2, style: 1, id: 6, name: "Flour Chicken Plain"))
        tacos.append(Taco(shell: 1, protein: 2, style: 2, id: 7, name: "Corn Chicken Loaded"))
        tacos.append(Taco(shell: 2, protein: 2, style: 2, id: 8, name: "Flour Chicken Loaded"))

        // Chicken Tacos
        tacos.append(Taco(shell: 1, protein: 3, style: 1, id: 9, name: "Corn Fish Plain"))
        tacos.append(Taco(shell: 2, protein: 3, style: 1, id: 10, name: "Flour Fish Plain"))
        tacos.append(Taco(shell: 1, protein: 3, style: 2, id: 11, name: "Corn Fish Loaded"))
        tacos.append(Taco(shell: 2, protein: 3, style: 2, id: 12, name: "Flour Fish Loaded"))
        delegate?.tacoDataDownloaded()
    }
}





