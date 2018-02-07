//
//  ViewController.swift
//  ScrollViewExp
//
//  Created by Jing Wang on 2/7/18.
//  Copyright © 2018 Jing Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myScrolView: UIScrollView!
    
    let myScrollViewContainer = UIView()
    let redView = UIView()
    let greenView = UIView()
    let blueView = UIView()
    
    
    var subviewSize = CGSize()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        
        
//        myScrolView.translatesAutoresizingMaskIntoConstraints = true
//        myScrolView.autoresizingMask = [UIViewAutoresizing.flexibleLeftMargin, UIViewAutoresizing.flexibleRightMargin, UIViewAutoresizing.flexibleTopMargin, UIViewAutoresizing.flexibleBottomMargin]
        myScrolView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        
        myScrollViewContainer.frame.origin = myScrolView.frame.origin
        myScrollViewContainer.layer.backgroundColor = UIColor.yellow.cgColor
        
        myScrollViewContainer.frame.size = CGSize(width: myScrolView.frame.width, height: myScrolView.frame.height*2)
        print("myScrolView.frame = \(myScrolView.frame)") //DEBUG
        print("myScrolView.bounds = \(myScrolView.bounds)") //DEBUG
        
        subviewSize = CGSize(width: self.myScrolView.bounds.width*0.3, height: self.myScrolView.bounds.width*0.1)
        
        redView.layer.backgroundColor = UIColor.red.cgColor
        redView.frame = CGRect(origin: CGPoint(x: self.myScrollViewContainer.bounds.midX, y: self.myScrollViewContainer.bounds.midY - self.myScrollViewContainer.bounds.width), size: subviewSize)
        
        
        greenView.layer.backgroundColor = UIColor.green.cgColor
        greenView.frame = CGRect(origin: CGPoint(x: self.myScrollViewContainer.bounds.midX, y: self.myScrollViewContainer.bounds.midY - 100), size: subviewSize)
        
        
        blueView.layer.backgroundColor = UIColor.blue.cgColor
        blueView.frame = CGRect(origin: CGPoint(x: self.myScrollViewContainer.bounds.midX, y: self.myScrollViewContainer.bounds.midY + self.myScrollViewContainer.bounds.width), size: subviewSize)
        
//        self.myScrollViewContainer.addSubview(redView)
//        self.myScrollViewContainer.addSubview(greenView)
//        self.myScrollViewContainer.addSubview(blueView)
//        self.myScrolView.addSubview(myScrollViewContainer)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.myScrollViewContainer.addSubview(greenView)
        self.myScrollViewContainer.addSubview(greenView)
        self.myScrollViewContainer.addSubview(blueView)
        self.myScrolView.addSubview(myScrollViewContainer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

