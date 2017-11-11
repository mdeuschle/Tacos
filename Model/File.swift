//
//  File.swift
//  Tacos
//
//  Created by Matt Deuschle on 11/11/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

enum Shell: Int {
    case corn = 1
    case flour = 2
}

enum Protein: String {
    case beef = "Beef"
    case chicken = "Chicken"
    case fish = "Fish"
}

enum Style: Int {
    case plain = 1
    case loaded = 2
}

struct Taco {
    private var _shell: Shell
    private var _protein: Protein
    private var _style: Style
    private var _id: Int
    private var _name: String

    var shell: Shell { return _shell }
    var protein: Protein { return _protein }
    var style: Style { return _style }
    var id: Int { return _id }
    var name: String { return _name }

    init(shell: Int, protein: Int, style: Int, id: Int, name: String) {
        switch shell {
        case 2:
            _shell = Shell.flour
        default:
            _shell = Shell.corn
        }
        switch protein {
        case 1:
            _protein = Protein.beef
        case 2:
            _protein = Protein.chicken
        default:
            _protein = Protein.fish
        }
        switch style {
        case 1:
            _style = Style.loaded
        default:
            _style = Style.plain
        }
        _id = id
        _name = name
    }
}










