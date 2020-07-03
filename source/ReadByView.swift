//
//  ReadByView.swift
//  ReadByViewApp
//
//  Created by Mohamed Korany Ali on 7/3/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import UIKit

public class ReadByView: UIView {

    @IBOutlet weak var readByLabel: UILabel!
    @IBOutlet weak var imagesCollectionView: UICollectionView!
    @IBOutlet var contentView: UIView!
   
    private let nibName = "ReadByView"
    public var numberOfPicturesThatAppear = 0
    public var readByLabelText = "Read By"{
        didSet {
            readByLabel.text = readByLabelText
        }
    }
    public var photots = [UIImage](){
        didSet {
            imagesCollectionView.reloadData()
        }
    }
    //    var screenSize: CGRect!
    //    var screenWidth: CGFloat!
    //    var screenHeight: CGFloat!
     
       public override init(frame: CGRect) {
            super.init(frame: frame)
            commonInit()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            commonInit()
        }
        
        private func commonInit() {
            let bundle = Bundle(for: type(of: self))
            bundle.loadNibNamed(nibName, owner: self, options: nil)
            addSubview(contentView)
            contentView.frame = bounds
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            //            contentView.backgroundColor = .red
            initCollectionView()
        }
        
        
    }

