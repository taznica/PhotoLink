//
//  ListCell.swift
//  PhotoLink
//
//  Created by Taichi Tsuchida on 2016/09/21.
//  Copyright © 2016年 Taichi Tsuchida. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

