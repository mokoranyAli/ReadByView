//
//  ReadByView + Collection delegates.swift
//  ReadByViewApp
//
//  Created by Mohamed Korany Ali on 7/3/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import Foundation
import UIKit


extension ReadByView: UICollectionViewDataSource  , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    
    
     func initCollectionView() {
        let nib = UINib(nibName: ReadByCollectionViewCell.identifier, bundle: nil)
            imagesCollectionView.register(nib, forCellWithReuseIdentifier: ReadByCollectionViewCell.identifier)
            imagesCollectionView.dataSource = self
            imagesCollectionView.delegate = self
    //        screenSize = UIScreen.main.bounds
    //        screenWidth = screenSize.width
    //        screenHeight = screenSize.height
            // Do any additional setup after loading the view, typically from a nib.
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            // layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
            //                   layout.itemSize = CGSize(width: screenWidth/3, height: screenWidth/3)
            layout.minimumInteritemSpacing = -35
            layout.minimumLineSpacing = 0
            imagesCollectionView!.collectionViewLayout = layout
        }
    
    
    //MARK:- delegates
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        photots.count
    }

    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReadByCollectionViewCell.identifier , for: indexPath) as? ReadByCollectionViewCell else {
            fatalError("can't dequeue CustomCell")
        }
        print(indexPath.item)
        if indexPath.item  < numberOfPicturesThatAppear {
            cell.imageCell.image = photots[indexPath.row]
            //print("Image User\(indexPath.item + 1)")
        }
        
        else if indexPath.item == numberOfPicturesThatAppear  {
            let numberOfImagesOutOfRange = photots.count - numberOfPicturesThatAppear
            cell.imageCell.image = imageWith(name: "+\(String(numberOfImagesOutOfRange))")
            print("Image Text")
            
        }
        else {
            cell.isHidden = true
        }
       
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        //  let top = max((collectionView.frame.height - collectionView.contentSize.height) / 5, 0
        return UIEdgeInsets(top: -3, left: -7, bottom: 0, right: 0)
    }
    
    
    func imageWith(name: String?) -> UIImage? {
         let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
         let nameLabel = UILabel(frame: frame)
         nameLabel.textAlignment = .center
         nameLabel.backgroundColor = .lightGray
         nameLabel.textColor = .black
         nameLabel.font = UIFont.boldSystemFont(ofSize: 40)
         nameLabel.text = name
         UIGraphicsBeginImageContext(frame.size)
          if let currentContext = UIGraphicsGetCurrentContext() {
             nameLabel.layer.render(in: currentContext)
             let nameImage = UIGraphicsGetImageFromCurrentImageContext()
             return nameImage
          }
          return nil
    }
}




