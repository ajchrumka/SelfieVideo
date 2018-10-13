//
//  WordBox.swift
//  HybridCameraCopy
//
//  Created by USER on 03/10/2018.
//  Copyright © 2018 eon. All rights reserved.
//
import Foundation
import UIKit

class WordBox:UILabel{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.textColor = .black
        self.numberOfLines = 2
        self.layer.cornerRadius = frame.width/2
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
