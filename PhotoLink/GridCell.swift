//
//  CollectionViewCell.swift
//  PhotoLink
//
//  Created by Taichi Tsuchida on 2016/09/19.
//  Copyright © 2016年 Taichi Tsuchida. All rights reserved.
//

import UIKit

class GridCell: UICollectionViewCell {
    
    @IBOutlet var photo:UIImageView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
    }
    
}
