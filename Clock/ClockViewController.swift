//
//  ViewController.swift
//  Clock
//
//  Created by flatironstudent on 5/21/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ClockViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    let clock = Clock()
    var timer: NSTimer?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self)
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateTimeLabel", userInfo: nil, repeats: true)
    }
    
    func updateTimeLabel() {
        let formatter = NSDateFormatter()
        formatter.timeStyle = .MediumStyle
        timeLabel.text = formatter.stringFromDate(clock.getCurrentTime())
    }
}

