//
//  TacoCell.swift
//  Tacos
//
//  Created by Matt Deuschle on 11/12/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell {

    @IBOutlet weak var tacoImageView: UIImageView!
    @IBOutlet weak var tacoNameLabel: UILabel!

    var taco: Taco!

    func config(taco: Taco) {
        tacoImageView.image = UIImage(named: taco.protein.rawValue)
        tacoNameLabel.text = taco.name
    }
}
