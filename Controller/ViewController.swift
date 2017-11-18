//
//  ViewController.swift
//  Tacos
//
//  Created by Matt Deuschle on 11/11/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataServiceDelegate {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!

    var tacoService: TacoService = TacoService.instance

    override func viewDidLoad() {
        super.viewDidLoad()
        tacoService.delegate = self
        tacoService.downloadTacos()
        tacoService.tacos.shuffle()
        collectionView.delegate = self
        collectionView.dataSource = self
        headerView.addShadow()
        /*
         let nib = UINib(nibName: "TacoCell", bundle: nil)
         collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
         */
        collectionView.register(TacoCell.self)
    }

    func tacoDataDownloaded() {
        print("Tacos Downloaded!")
        // add reload if from web
//        collectionView.reloadData()
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tacoService.tacos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        /*
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell else {
            return TacoCell()
        }
        let taco = tacoService.tacos[indexPath.row]
        cell.config(taco: taco)
        return cell
         */
        let cell = collectionView.dequeResuableCell(for: indexPath) as TacoCell
        cell.config(taco: tacoService.tacos[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 134, height: 134)
    }
}







