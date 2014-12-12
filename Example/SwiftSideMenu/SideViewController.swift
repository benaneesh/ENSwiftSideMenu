//
//  SideViewController.swift
//  SwiftSideMenu
//
//  Created by Ben Aneesh on 2014-12-12.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

import UIKit

class SideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToController2(sender: AnyObject) {
        goToControllerNamed("ViewController1")
        
    }

    @IBAction func goToController3(sender: AnyObject) {
        goToControllerNamed("ViewController3")
    }
    
    @IBAction func goToController4(sender: AnyObject) {
        goToControllerNamed("ViewController4")
    }
    
    
    func goToControllerNamed(name: String) {
        println("Pushing to view: \(name)")
        
        //Present new view controller
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var destViewController : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier(name) as UIViewController
        sideMenuController()?.setContentViewController(destViewController)
    }
    
    
}
