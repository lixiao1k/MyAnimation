//
//  ViewController.swift
//  MyAnimation
//
//  Created by Shelton Lee on 2017/9/26.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchBtn: UIButton!
    @IBOutlet weak var img: UIImageView!
    
    @IBAction func `switch`(_ sender: UIButton) {
        print("Hello");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addAnimation();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addAnimation() {
        var imgArray:[UIImage]! = [];
        for i in 0 ..< 58 {
            let name:String! = "loading_page_"+String(format: "%05d", i);
            let image: UIImage! = UIImage(named: name);
            imgArray.append(image);
        }
        img.animationImages = imgArray;
        img.animationRepeatCount = 0;
        img.animationDuration = 3;
        startAnimation();
    }
    func startAnimation() {
        img.startAnimating();
    }
    
    func stopAnimation(){
        img.stopAnimating();
    }
    func open() {
    }


}

