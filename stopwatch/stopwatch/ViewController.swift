//
//  ViewController.swift
//  stopwatch
//
//  Created by kimgyeoll on 2023/09/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    var timer: Timer?
    var currentTime: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func startAction() {
        if timer?.isValid == true {
            timer?.invalidate()
        } else {
            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { [weak self] timer in self?.currentTime += 0.01
                print(self?.currentTime ?? 0)
                self?.displayCurrentTime(seconds: self?.currentTime ?? 0)
            }
        }
    }
    
    @IBAction func resetAction() {
        }
    
    func displayCurrentTime(seconds:Float) {
        let sec = Int(seconds)
        let milliseconds = String(format: "%.2f", seconds).components(separatedBy: ".")[1]
        timeLabel.text = String(format: "%02d:%02d.%@", sec / 60, sec % 60, milliseconds)
//        timeLabel.text = "\(Int(seconds) / 60):\(Int(seconds) % 60)"
    }
}

