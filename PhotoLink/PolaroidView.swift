//
//  PolaroidView.swift
//  PhotoLink
//
//  Created by Taichi Tsuchida on 2016/09/22.
//  Copyright © 2016年 Taichi Tsuchida. All rights reserved.
//

import UIKit

class PolaroidView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    

    @IBOutlet weak var polaroidImage: UIImageView!
    @IBOutlet weak var memoLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    
    func setView (imageName: String, linkText: String, memoText: String) {
        
    }
    
}
