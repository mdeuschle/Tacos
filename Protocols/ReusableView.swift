//
//  ReusableView.swift
//  Tacos
//
//  Created by Matt Deuschle on 11/12/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}




