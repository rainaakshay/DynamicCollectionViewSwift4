//
//  ViewController.swift
//  Dynamic Collection View
//
//  Created by apple on 28/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var collection: UICollectionView!
    
    var imageArr : [UIImage] = [#imageLiteral(resourceName: "12"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "11"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "1")]
    var width = CGFloat()
    var w = [CGFloat]()
     var h = [CGFloat]()
    var y = 0
    var z = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let flo = UICollectionViewFlowLayout()
        width = collection.frame.width - 20
        flo.estimatedItemSize = CGSize(width: width, height: 200)
        collection.dataSource = self
        collection.delegate = self
        
       
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageDisplayView.image = imageArr[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        
        
        let cellSize = CGSize(width: min(self.view.frame.width,imageArr[indexPath.row].size.width) - 20, height: imageArr[indexPath.row].size.height)
     
        
        
        return cellSize
    }
   
}
