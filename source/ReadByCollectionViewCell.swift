//
//  ReadByCollectionViewCell.swift
//  ReadByViewApp
//
//  Created by Mohamed Korany Ali on 7/3/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import UIKit

public class ReadByCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageCell: ReadByCircularImageView!
    static let identifier = "\(ReadByCollectionViewCell.self)"
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
