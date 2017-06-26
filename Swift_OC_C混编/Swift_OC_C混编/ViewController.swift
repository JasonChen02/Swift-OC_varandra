//
//  ViewController.swift
//  Swift_OC_C混编
//
//  Created by Jason on 17/6/26.
//  Copyright © 2017年 ucanmobile. All rights reserved.
//

import UIKit
func oc_u_swift(){}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.swift_OC();
        
    }

    
    //Swift 调用OC 
    func swift_OC(){
        
       let oc = OCClass()
       let i = oc.ocFunc()
        
    }
    
    
    
    func oc_u_swift(){
        
        let oc = OCClass()
        oc.oc_use_swift()
        
    }
    


}

