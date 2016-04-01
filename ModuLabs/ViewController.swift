//
//  ViewController.swift
//  ModuLabs
//
//  Created by Kim, Min Ho on 2016. 4. 1..
//  Copyright © 2016년 Void Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    
    //    var holderView = HolderView(frame: CGRectZero)
    
    // MARK: - Main Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        addHolderView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Helper Methods
    
    func addHolderView() {
        //        holderView.frame = view.frame
        //        holderView.frame = CGRect(x: view.bounds.width / 2 - boxSize / 2, y: view.bounds.height / 2 - boxSize / 2, width: boxSize, height: boxSize)
        
        let holderView = HolderView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        //        holderView.parentFrame = view.frame
        
        view.addSubview(holderView)
        
        holderView.start()
    }
    
}

