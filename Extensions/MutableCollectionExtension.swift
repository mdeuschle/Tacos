//
//  MutableCollectionExtension.swift
//  Tacos
//
//  Created by Matt Deuschle on 11/18/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffle() {
        if count < 2 { return }
        for i in startIndex..<endIndex {
            let j = Int(arc4random_uniform(UInt32(endIndex - 1)))
            guard i != j else { continue }
            self.swapAt(i, j)
        }
    }
}



