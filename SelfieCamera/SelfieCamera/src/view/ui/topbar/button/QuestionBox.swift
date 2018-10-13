//
//  QuestionBox.swift
//  HybridCameraCopy
//
//  Created by USER on 03/10/2018.
//  Copyright © 2018 eon. All rights reserved.
//

import Foundation
import UIKit

//make question box
//right
//green / red with text
class QuestionBox:SquareBox{
    override init(frame: CGRect) {
        let rect = QuestionBox.rect
        super.init(frame: rect)
        backgroundColor = .white
        print(questionIndex)
        var text: String
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    static var rect:CGRect {
        let boxWidth:CGFloat = 500
        let boxHeight:CGFloat = 50
        let topLeft:CGPoint = {
            let margin:CGFloat = 40
            return CGPoint.init(x: margin, y: margin)
        }()
        let rect = CGRect(x:topLeft.x, y:topLeft.y + 100, width:boxWidth, height:boxHeight)
        return rect
    }
// this is part of my attempt to get the question to move on
    func updateText (newText: String) {
        text = newText
    }
}
