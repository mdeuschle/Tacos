//
//  Shakeable.swift
//  Tacos
//
//  Created by Matt Deuschle on 11/18/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

protocol Shakeable {}

extension Shakeable where Self: UIView {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: center.x - 4, y: center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: center.x + 4, y: center.y))
        layer.add(animation, forKey: "position")
    }
}


