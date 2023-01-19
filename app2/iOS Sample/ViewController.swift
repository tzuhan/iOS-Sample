//
//  ViewController.swift
//  iOS Sample
//
//  Created by Akos Birmacher on 2018. 07. 20..
//  Copyright © 2018. Bitfall. All rights reserved.
//

import UIKit
import Crashlytics

class ViewController: UIViewController {
    var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextView = UITextView(
          frame: CGRect(x: 0, y: 0, width: 250, height: 200))
        myTextView.text = "Home View screen text 2"
        myTextView.backgroundColor = UIColor.darkGray
        myTextView.textColor = UIColor.white
        let fullScreenSize = UIScreen.main.bounds.size

        myTextView.center = CGPoint(
          x: fullScreenSize.width * 0.5,
          y: fullScreenSize.height * 0.3)
        
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        button.setTitle("Crash", for: [])
        button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
        view.addSubview(myTextView)
    }
    
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        Crashlytics.sharedInstance().crash()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

