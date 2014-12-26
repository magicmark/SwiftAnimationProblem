//
//  NotificationViewController.swift
//  Bug
//
//  Created by Mark on 26/12/2014.
//  Copyright (c) 2014 marklarah. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    var tap = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tap = UITapGestureRecognizer(target: self, action: "tapped")
        self.view.addGestureRecognizer(tap)
        tap.numberOfTouchesRequired = 1
        tap.numberOfTapsRequired = 1
        tap.cancelsTouchesInView = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tapped () {
        println("Ok, you've tapped me!")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
