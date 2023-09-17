//
//  RoundButton.swift
//  stopwatch
//
//  Created by kimgyeoll on 2023/09/17.
//

import Foundation
import UIKit

class RoundButton : UIButton {
    
    @IBInspectable //스토리보드에서 설정가능
//    @IBDesignable // 실시간변경 가능
    var cornerRadius : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
