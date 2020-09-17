//
//  ViewController.swift
//  MobileAPP_Projct_team6
//
//  Created by Bomi on 02/06/2020.
//  Copyright © 2020 bomi. All rights reserved.
//

import UIKit

/*
    Start View
*/
class TitleViewController: UIViewController {
    
    //finger image
    @IBOutlet weak var finger: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //animation of finger
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.bringSubviewToFront(self.finger)
        UIImageView.animate(withDuration: 1, delay: 0, options: [.repeat,.autoreverse], animations:{
            self.finger.center.y += 20
        })
    }

    
}

