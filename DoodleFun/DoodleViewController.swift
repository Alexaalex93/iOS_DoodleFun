//
//  DoodleViewController.swift
//  DoodleFun
//
//  Created by Pablo Mateo Fernández on 02/02/2017.
//  Copyright © 2017 355 Berry Street S.L. All rights reserved.
//

import UIKit

class DoodleViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    var doodleImages = ["DoodleIcons-1","DoodleIcons-2","DoodleIcons-3","DoodleIcons-4","DoodleIcons-5","DoodleIcons-6","DoodleIcons-7","DoodleIcons-8","DoodleIcons-9","DoodleIcons-10","DoodleIcons-11","DoodleIcons-12","DoodleIcons-13","DoodleIcons-14","DoodleIcons-15","DoodleIcons-16","DoodleIcons-17","DoodleIcons-18","DoodleIcons-19","DoodleIcons-20",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Trait collections
        print("-----------------")
        print(traitCollection)
        //Con esto te dice la clase horizontal y vertical que tiene
        print("-----------------")
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var collectionView: UICollectionView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return doodleImages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DoodleCollectionViewCell
        cell.imageCell.image = UIImage(named: doodleImages[indexPath.row])
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let sideSize = (traitCollection.horizontalSizeClass == .compact && traitCollection.verticalSizeClass == .regular) ? 80.0 : 128.0
        
        return CGSize(width: sideSize, height: sideSize)
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
