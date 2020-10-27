//
//  ViewController.swift
//  Floatingpanel-practice
//
//  Created by 졔님 on 2020/10/26.
//

import UIKit
import FloatingPanel

class MainVC: UIViewController, FloatingPanelControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fcp = FloatingPanelController()
        fcp.delegate = self
        
        guard let contentViewcontroller = storyboard?.instantiateViewController(identifier: "FPC_content") as? ContentVC else {
            return
        }
        
        fcp.set(contentViewController: contentViewcontroller)
        fcp.addPanel(toParent: self)
        
        //fcp_content
    }
    


}

