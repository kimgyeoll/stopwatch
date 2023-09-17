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
        
        timeLabel.font = UIFont.monospacedSystemFont(ofSize: 100, weight: .thin)
        //offsize150 over시, millisecond 출력안됨
    }
    
    
    @IBAction func startAction() {
        if timer?.isValid == true {
            timer?.invalidate()
            toggleStartButton(isStart: true)
        } else {
            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { [weak self] timer in self?.currentTime += 0.01
                print(self?.currentTime ?? 0)
                self?.displayCurrentTime(seconds: self?.currentTime ?? 0)
            }
            toggleStartButton(isStart: false)
        }
    }
    
    @IBAction func resetAction() {
        toggleResetButton(isStart: false)
        toggleStartButton(isStart: true)
        
        timer?.invalidate()
        timeLabel.text = "00:00:00"
        currentTime = 0
        }
    
    func displayCurrentTime(seconds: Float) {
        let sec = Int(seconds)
        let milliseconds = String(format: "%.2f", seconds).components(separatedBy: ".")[1]
        timeLabel.text = String(format: "%02d:%02d.%@", sec / 60, sec % 60, milliseconds)
        
        let textLength = timeLabel.text?.count ?? 0
        let attributedString = NSMutableAttributedString(string: timeLabel.text ?? "")
        let font = UIFont.monospacedDigitSystemFont(ofSize: 110, weight: .thin)
//        attributedString.addAttributes([.font: font], range: NSRange(location: textLength - 2 , length: 2))
//        attributedString.addAttributes([.foregroundColor: UIColor.gray], range: NSRange(location: 0 , length: 7))
        
        timeLabel.attributedText = attributedString
    }

    
    
   
    func toggleStartButton(isStart:Bool) {
        toggleResetButton(isStart: true)
        
        if isStart {
            startButton.setTitle("시작", for: .normal)
            startButton.setTitleColor(.green, for: .normal)
            startButton.backgroundColor = UIColor(red: 0, green: 0.9, blue: 0, alpha: 0.15)
        }else{
            startButton.setTitle("중단", for: .normal)
            startButton.setTitleColor(.red, for: .normal)
            startButton.backgroundColor = UIColor(red: 0.9, green: 0, blue: 0, alpha: 0.15)
        }
    }
    
    func toggleResetButton(isStart:Bool) {
        resetButton.setTitle("재설정", for: .normal)
        if isStart {
            resetButton.setTitleColor(.white, for: .normal)
        }else{
            resetButton.setTitleColor(.darkGray, for: .normal)
        }
    }
}

