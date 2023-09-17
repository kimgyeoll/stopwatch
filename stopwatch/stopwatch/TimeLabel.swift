//
//  TimeLabel.swift
//  stopwatch
//
//  Created by kimgyeoll on 2023/09/17.
//

import UIKit

class TimeLabel: UILabel{
    // Mark: Privatemethod
    ///스톱워치 시간표시
    func displayCurrentTime(seconds: Float) {
        let sec = Int(seconds)
        let milliseconds = String(format: "%.2f", seconds).components(separatedBy: ".")[1]
        self.text = String(format: "%02d:%02d.%@", sec / 60, sec % 60, milliseconds)
        
        let textLength = self.text?.count ?? 0
        let attributedString = NSMutableAttributedString(string: self.text ?? "")
        let font = UIFont.monospacedDigitSystemFont(ofSize: 110, weight: .thin)
//        attributedString.addAttributes([.font: font], range: NSRange(location: textLength - 2 , length: 2))
//        attributedString.addAttributes([.foregroundColor: UIColor.gray], range: NSRange(location: 0 , length: 7))
        
        self.attributedText = attributedString
    }

}
