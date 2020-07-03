//
//  ReadByCircularImageView.swift
//  ReadByViewApp
//
//  Created by Mohamed Korany Ali on 7/3/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import Foundation
import UIKit
class ReadByCircularImageView: UIImageView {
    
    
    override func awakeFromNib() {
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        self.contentMode = .scaleAspectFill
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
    }
}
