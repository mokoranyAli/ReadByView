//
//  ViewController.swift
//  ReadByView
//
//  Created by mokoranyAli on 07/03/2020.
//  Copyright (c) 2020 mokoranyAli. All rights reserved.
//

import UIKit
import ReadByView

class ViewController: UIViewController {
    
    @IBOutlet weak var myOwnReadByView: ReadByView!
    let screenSize: CGRect = UIScreen.main.bounds
    
    let photots =
        [UIImage(named: "me")
            ,UIImage(named: "me1")
            ,UIImage(named: "me2")
            ,UIImage(named: "me3")
            ,UIImage(named: "me4")
            ,UIImage(named: "me5")
            ,UIImage(named: "me6")
            ,UIImage(named: "me7")
            ,UIImage(named: "me8")
            ,UIImage(named: "me9")
            ,UIImage(named: "me10")
            ,UIImage(named: "me11")
            ,UIImage(named: "me12")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let readByViewProgrammatically = ReadByView(frame: CGRect(x: 50, y: 50, width: self.screenSize.width, height: 50))
        readByViewProgrammatically.photots = photots as! [UIImage]
        readByViewProgrammatically.numberOfPicturesThatAppear = 3
        
        myOwnReadByView.readByLabelText = "this is me"
        myOwnReadByView.numberOfPicturesThatAppear = 8
        myOwnReadByView.photots = photots as! [UIImage]
    }
}
