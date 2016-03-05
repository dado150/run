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
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        
      
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func tapStarted(sender: UITapGestureRecognizer) {
        
//        swipeStarted = sender.locationInView(self.view).x
    }
    
    
//    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
//        super.touchesMoved(touches, withEvent: event)
//        
//        if (touches.count > 0) {
//            var touch = touches.first as! UITouch
//            var position = touch.locationInView(view)
//            println(position.x)
//            println(position.y)
//        }
//    }
    
 

    @IBAction func SwipeToStart(sender: UIPanGestureRecognizer) {
        

        if sender.state == UIGestureRecognizerState.Began{
            swipeStarted = sender.locationInView(self.view).x
            
        }
         else if sender.state == UIGestureRecognizerState.Changed{
            
            
            swipeGoing = sender.locationInView(self.view).x
            
            difference = swipeGoing - swipeStarted
            
//            print("Differeza" , difference)
            
            bike.frame.origin.x =  bike.frame.origin.x + difference
            
//            print("posizione" , bike.layer.position.x + (difference))
        
        }
        
        if sender.state == UIGestureRecognizerState.Ended{
            
//            if bike.layer.position.x < 376 {
//                
//                UIView.animateWithDuration(2, animations: { () -> Void in
//                     self.bike.layer.position.x = self.view.frame.width / 2
//                })
//                
//            }
        }
        
        
        

    }

}

