//
//  CustomTab.swift
//  Test
//
//  Created by ratul sharker on 4/14/18.
//  Copyright © 2018 ratul sharker. All rights reserved.
//

import UIKit

class CustomTab : UITabBarController {
    var timer : Timer?
    var counter : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true, block: { (timer) in
            if self.counter % 2 == 0 {
                self.selectedIndex = 1
            } else {
                self.selectedIndex = 0
            }
            
            self.counter += 1
        })
        
    }
}

