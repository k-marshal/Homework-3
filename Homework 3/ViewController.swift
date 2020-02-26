//
//  ViewController.swift
//  Homework 3
//
//  Created by Kai Marshall on 2/14/20.
//  Copyright © 2020 Kai Marshall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bunnyView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    
    
    
    
    @IBAction func hopButton(_ sender: Any) {
        if (bunnyView.isAnimating)
        {
            bunnyView.stopAnimating()
           }else
        {
            bunnyView.startAnimating()
        }
        
    }
    
    @IBAction func bunnySpeed(_ sender: Any) {
        bunnyView.animationDuration=TimeInterval(4.0-speedSlider.value)
        bunnyView.startAnimating()
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let hopAnimation: [UIImage] = [
            UIImage(named: "frame-1")!,
            UIImage(named: "frame-2")!,
            UIImage(named: "frame-3")!,
            UIImage(named: "frame-4")!,
            UIImage(named: "frame-5")!,
            UIImage(named: "frame-6")!,
            UIImage(named: "frame-7")!,
            UIImage(named: "frame-8")!,
            UIImage(named: "frame-9")!,
            UIImage(named: "frame-10")!,
            UIImage(named: "frame-11")!,
            UIImage(named: "frame-12")!,
            UIImage(named: "frame-13")!,
            UIImage(named: "frame-14")!,
            UIImage(named: "frame-15")!,
            UIImage(named: "frame-16")!,
            UIImage(named: "frame-17")!,
            UIImage(named: "frame-18")!,
            UIImage(named: "frame-19")!,
            UIImage(named: "frame-20")!,
             ]
    
        bunnyView.animationImages = hopAnimation
        bunnyView.animationDuration=1.0
    }


}

