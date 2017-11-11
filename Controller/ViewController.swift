//
//  ViewController.swift
//  Tacos
//
//  Created by Matt Deuschle on 11/11/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.addShadow()
    }
}

