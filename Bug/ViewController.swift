//
//  ViewController.swift
//  Bug
//
//  Created by Mark on 26/12/2014.
//  Copyright (c) 2014 marklarah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var notificationView = NotificationViewController(nibName: "NotificationViewController", bundle: NSBundle.mainBundle())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(notificationView.view)
        notificationView.view.frame = CGRectMake(0, 0, self.view.bounds.width, 64)
        notificationView.view.alpha = 0.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNotification(sender: AnyObject) {
        UIView.animateWithDuration(0.8, animations: {
            self.notificationView.view.alpha = 1.0
        }, completion: { finished in
            UIView.animateWithDuration(0.8, delay: 5.0, options: .CurveLinear, animations: {
                // UNCOMMENT BELOW LINE TO SEE BUG!
                // self.notificationView.view.alpha = 0.0
            }, completion: nil)
        })
    }

}

