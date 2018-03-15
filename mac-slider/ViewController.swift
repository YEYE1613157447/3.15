//
//  ViewController.swift
//  mac-slider
//
//  Created by gdcp on 2018/3/15.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let slider = UISlider()
//        
//        slider.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
//        slider.isContinuous = true
//        slider.minimumValue = 0
//        slider.maximumValue = 10
//        slider.minimumTrackTintColor = UIColor.red
//        slider.maximumTrackTintColor = UIColor.green
//        slider.thumbTintColor = UIColor.black
//        slider.addTarget(self, action: #selector(change(slider:)), for: .valueChanged)
//        self.view.addSubview(slider)
//        let indicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
//        
//        indicator.center = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2)
//        indicator.color = UIColor.black
//        self.view.addSubview(indicator)
//        indicator.startAnimating()
        
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
        progressView.progressTintColor = UIColor.red
        progressView.trackTintColor = UIColor.blue
        progressView.progress = 0.6
        self.view.addSubview(progressView)
        
        let step = UIStepper()
        step.frame = CGRect(x: 200, y: 500, width: 200, height: 30)
        step.maximumValue = 10
        step.minimumValue = 0
        step.autorepeat = true
        step.isContinuous = true
        step.stepValue = 2
        step.tintColor = UIColor.blue
        
        step.addTarget(self, action: #selector(changevlue(step:)), for: .valueChanged)
        
        self.view.addSubview(step)
    
        
    }
    
    func changevlue(step:UIStepper)
    {
        print(step.value)
    }
    
    func change(slider:UISlider){
        print(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

