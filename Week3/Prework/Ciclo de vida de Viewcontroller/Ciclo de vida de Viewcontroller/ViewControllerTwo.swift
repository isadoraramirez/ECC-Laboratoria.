//
//  ViewControllerTwo.swift
//  Ciclo de vida de Viewcontroller
//
//  Created by Apple Device 23 on 10/11/19.
//  Copyright © 2019 Apple Device 23. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

        
        @IBOutlet weak var helloLabel: UILabel!
        @IBOutlet weak var welcomeLabel: UILabel!
        //life cycle
        //1
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
           
            
        }
        //2
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
        }
        //3
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
        }
        //4
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
        }
        //5
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }
        
        
}


