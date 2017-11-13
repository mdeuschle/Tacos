//
//  NibLoadableView.swift
//  Tacos
//
//  Created by Matt Deuschle on 11/12/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}



