//
//  ViewController.swift
//  swipe
//
//  Created by DAdo150 on 3/5/16.
//  Copyright © 2016 DAdo150. All rights reserved.
//

import UIKit
import Gifu

class ViewController: UIViewController {
    
    var swipeStarted:CGFloat = 0.0
    var swipeGoing:CGFloat = 0.0
    var difference:CGFloat = 0.0
    
    @IBOutlet weak var bike: AnimatableImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
         bike.animateWithImage(named: "sarms_comp-1-1.gif")
        
        var rain = String(UnicodeScalar(0x1F6C0))
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func SwipeToStart(sender: UIPanGestureRecognizer) {
        
        if sender.state == UIGestureRecognizerState.Began{
            swipeStarted = sender.locationInView(self.view).x
            
        }
            
         else if sender.state == UIGestureRecognizerState.Changed{
            
            swipeGoing = sender.locationInView(self.view).x
            
            difference = view.frame.size.width / 2 + (swipeGoing - swipeStarted)
            
            bike.layer.position.x = difference
            
            print( bike.layer.position.x)
            
        }
        
        if sender.state == UIGestureRecognizerState.Ended{
            
            if bike.layer.position.x < 303 {
                
                UIView.animateWithDuration(2, animations: { () -> Void in
                     self.bike.layer.position.x = self.view.frame.width / 2
                })
                
            } else{
                

                UIView.animateWithDuration(2, animations: { () -> Void in
                     self.bike.layer.position.x = 800
                    }, completion: { (Bool) -> Void in
                    self.performSegueWithIdentifier("detail", sender: sender)
                })

            
            }
        }
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}

