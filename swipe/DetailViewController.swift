//
//  DetailViewController.swift
//  swipe
//
//  Created by DAdo150 on 3/6/16.
//  Copyright © 2016 DAdo150. All rights reserved.
//

import UIKit
import Gifu
import Spring

class DetailViewController: UIViewController {

    @IBOutlet weak var bgView: SpringImageView!

    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var emojLabel: SpringLabel!
    @IBOutlet weak var bikeView: SpringView!
    
    @IBOutlet weak var bike: AnimatableImageView!
    
    @IBOutlet weak var currentWeather: SpringLabel!
    @IBOutlet weak var takeYorBikeLabel: SpringLabel!
    
    @IBOutlet weak var tempretaureNumber: SpringLabel!
    @IBOutlet weak var temperatureLabel: SpringLabel!
    
    @IBOutlet weak var windNumber: SpringLabel!
    @IBOutlet weak var windLabel: SpringLabel!
    
    @IBOutlet weak var visibilityNumber: SpringLabel!
    @IBOutlet weak var visibilityLabel: SpringLabel!
    
    @IBOutlet weak var humidityNumber: SpringLabel!
    @IBOutlet weak var humidityLabel: SpringLabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var infoBlock:[SpringLabel] = [tempretaureNumber, temperatureLabel, windNumber, windLabel, visibilityNumber, visibilityLabel, humidityNumber, humidityLabel] as NSArray as! [SpringLabel]
        
        bike.animateWithImage(named: "sarms_comp-1-1.gif")        
        
        let width = UIScreen.mainScreen().bounds.size.width
        let height = UIScreen.mainScreen().bounds.size.height
        
        let imageViewBackground = UIImageView(frame: CGRectMake(0, 0, width, height))
        bgView.image = UIImage(named: "bg_rain.jpg")
        
        
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "rain_bg_2.jpg")
        backgroundImage.contentMode = UIViewContentMode.ScaleAspectFill
        self.infoView.insertSubview(backgroundImage, atIndex: 0)
        
//        emoji
        let c = String(UnicodeScalar(0x2614))
        emojLabel.text = c
        
        
//        colors
        let colorHeadline:UIColor = UIColor(red: 130/255, green: 210/255, blue: 240/255, alpha: 1)
        let colorInfos:UIColor = UIColor(red: 234/255, green: 159/255, blue: 29/255, alpha: 1)

//        text Weather
        currentWeather.textColor = colorHeadline
        takeYorBikeLabel.textColor = colorHeadline
        
        for var i = 0; i < infoBlock.count; i++ {
            infoBlock[i].textColor = colorInfos
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        //        Emoj Animation
        emojLabel.opacity = 0
        emojLabel.delay = 1
        emojLabel.duration = 2
        emojLabel.y = -20
        emojLabel.animate()
        
        currentWeather.opacity = 0
        currentWeather.delay = 1.2
        currentWeather.duration = 2
        currentWeather.y = -20
        currentWeather.animate()
        
        takeYorBikeLabel.opacity = 0
        takeYorBikeLabel.delay = 1.4
        takeYorBikeLabel.duration = 2
        takeYorBikeLabel.y = -20
        takeYorBikeLabel.animate()
        
        
//        bike Animation
        bikeView.animation = "slideRight"
        bikeView.duration = 3
        bikeView.animate()
        
//        bgView.opacity = 0
//        bgView.delay = 0
//        bgView.duration = 2
//        bgView.x = 20
//        bgView.animate()
        
        tempretaureNumber.opacity = 0
        tempretaureNumber.delay = 1.8
        tempretaureNumber.duration = 2
        tempretaureNumber.x = -20
        tempretaureNumber.animate()
        
        temperatureLabel.opacity = 0
        temperatureLabel.delay = 1.8
        temperatureLabel.duration = 2
        temperatureLabel.x = -20
        temperatureLabel.animate()
        
        windNumber.opacity = 0
        windNumber.delay = 1.9
        windNumber.duration = 2
        windNumber.x = +20
        windNumber.animate()
        
        windLabel.opacity = 0
        windLabel.delay = 1.9
        windLabel.duration = 2
        windLabel.x = +20
        windLabel.animate()
        
        visibilityNumber.opacity = 0
        visibilityNumber.delay = 2
        visibilityNumber.duration = 2
        visibilityNumber.x = -20
        visibilityNumber.animate()
        
        visibilityLabel.opacity = 0
        visibilityLabel.delay = 2
        visibilityLabel.duration = 2
        visibilityLabel.x = -20
        visibilityLabel.animate()
        
        humidityLabel.opacity = 0
        humidityLabel.delay = 2.1
        humidityLabel.duration = 2
        humidityLabel.x = +20
        humidityLabel.animate()
        
        humidityNumber.opacity = 0
        humidityNumber.delay = 2.1
        humidityNumber.duration = 2
        humidityNumber.x = +20
        humidityNumber.animate()
        
       
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }



}
