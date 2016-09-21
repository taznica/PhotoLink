//
//  GridCell.swift
//  PhotoLink
//
//  Created by Taichi Tsuchida on 2016/09/21.
//  Copyright © 2016年 Taichi Tsuchida. All rights reserved.
//

import UIKit

class GridCell: UICollectionViewCell {
    
    @IBOutlet weak var gridImage: UIImageView!
    
    func setCell(imageName: String) {
        gridImage.image = UIImage(named: imageName)
    }
}
