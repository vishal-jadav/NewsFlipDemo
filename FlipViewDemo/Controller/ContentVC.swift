//
//  FirstViewController.swift
//  FlipViewDemo
//
//  Created by Vishal Jadav on 16/06/20.
//  Copyright © 2020 Vishal Jadav. All rights reserved.
//

import UIKit

class ContentVC: UIViewController {
    
    //MARK:- Outlet
    //------------------------------------------------------
    
    @IBOutlet weak var imgCover: UIImageView!
    @IBOutlet weak var txtTitle: UILabel!
    @IBOutlet weak var txtDescription: UILabel!
    @IBOutlet weak var tvInfo: UITextView!
    
    //MARK:- Class Variable
    //------------------------------------------------------
    
    var strTitle = "Title"
    var strDesc = "Description"
    var dataDesc = "Data Description"
    var coverbgColor : UIColor?
    
    //MARK:- Memory Management Method
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        debugPrint(self.classForCoder , " deinit")
    }
    
    //MARK:- Custom Method
    
    func setUpView() {
        self.setData()
    }
    
    func setData() {
        self.txtTitle.text = self.strTitle
        self.txtDescription.text =  self.strDesc
        self.tvInfo.text = self.dataDesc
        self.imgCover.backgroundColor = self.coverbgColor ?? UIColor.black
    }
    
    //MARK:- Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
}
