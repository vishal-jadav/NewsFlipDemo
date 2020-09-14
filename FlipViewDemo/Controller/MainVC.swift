//
//  ViewController.swift
//  FlipView Demo
//
//  Created by Vishal Jadav on 15/06/20.
//  Copyright © 2020 Vishal Jadav. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //MARK:- Class Variable
    //------------------------------------------------------
    
    private var flipViewController = MPFlipViewController()
    private var arrContentData = [ContentData]()
    private var selectedControllerIndex = 0
    private var isNext = false
    
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
        self.fillData()
        self.addFlipViewController()
    }
    
    func fillData()
    {
        self.arrContentData.append(ContentData.init(title: "Title: 1", descr: "Desc: 1", dataDescr: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium ", color:  UIColor.init(named: "Color1")))
        self.arrContentData.append(ContentData.init(title: "Title: 2", descr: "Desc: 2", dataDescr: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium ", color:  UIColor.init(named: "Color2")))
        self.arrContentData.append(ContentData.init(title: "Title: 3", descr: "Desc: 3", dataDescr: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium ", color:  UIColor.init(named: "Color3")))
        self.arrContentData.append(ContentData.init(title: "Title: 4", descr: "Desc: 4", dataDescr: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium ", color:  UIColor.init(named: "Color4")))
        self.arrContentData.append(ContentData.init(title: "Title: 5", descr: "Desc: 5", dataDescr: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium ", color:  UIColor.init(named: "Color1")))
        self.arrContentData.append(ContentData.init(title: "Title: 6", descr: "Desc: 6", dataDescr: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium ", color:  UIColor.init(named: "Color2")))
        self.arrContentData.append(ContentData.init(title: "Title: 7", descr: "Desc: 7", dataDescr: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium ", color:  UIColor.init(named: "Color3")))
        self.arrContentData.append(ContentData.init(title: "Title: 8", descr: "Desc: 8", dataDescr: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat Lorem ipsum dolor sit er elit lamet, consectetaur cillium ", color:  UIColor.init(named: "Color4")))
    }
    
    func addFlipViewController() {
        self.flipViewController = MPFlipViewController.init(orientation: MPFlipViewControllerOrientationVertical)
        self.flipViewController.delegate = self
        self.flipViewController.dataSource = self
        self.flipViewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.flipViewController.view.frame = self.view.bounds
        self.addChild(self.flipViewController)
        self.view.addSubview(self.flipViewController.view)
        self.flipViewController.didMove(toParent: self)
        self.flipViewController.setViewController(self.getContentView(), direction: MPFlipViewControllerDirectionForward, animated: false, completion: nil)
    }
    
    func getContentView() -> UIViewController {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContentVC") as! ContentVC
        vc.strTitle = self.arrContentData[self.selectedControllerIndex].title
        vc.strDesc = self.arrContentData[self.selectedControllerIndex].descr
        vc.dataDesc = self.arrContentData[self.selectedControllerIndex].dataDescr
        vc.coverbgColor = self.arrContentData[self.selectedControllerIndex].color
        return vc
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

// MARK:- MPFlipViewController DataSource,Delegate Methods

extension MainVC: MPFlipViewControllerDelegate,MPFlipViewControllerDataSource{
    
    func flipViewController(_ flipViewController: MPFlipViewController!, viewControllerBefore
        viewController: UIViewController!) -> UIViewController! {
        
        if(self.selectedControllerIndex == 0) {
            return nil
        }
        self.isNext = false
        self.selectedControllerIndex -= 1
        return self.getContentView()
        
    }
    
    func flipViewController(_ flipViewController: MPFlipViewController!, viewControllerAfter viewController: UIViewController!) -> UIViewController! {
        
        if(self.selectedControllerIndex == self.arrContentData.count - 1) {
            return nil
        }
        self.isNext = true
        self.selectedControllerIndex += 1
        return self.getContentView()
        
    }
    
    func flipViewController(_ flipViewController: MPFlipViewController!, didFinishAnimating finished: Bool, previousViewController: UIViewController!, transitionCompleted completed: Bool) {
        
        if !completed{
            print(self.view.subviews.count)
            guard (self.selectedControllerIndex != self.arrContentData.count - 1) && (self.selectedControllerIndex != 0) else {
                return
            }
            self.selectedControllerIndex = self.isNext ? self.selectedControllerIndex - 1 : self.selectedControllerIndex + 1
        }
        
    }
    
}
