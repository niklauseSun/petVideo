//
//  VideoCollectionViewCell.swift
//  petVideo
//
//  Created by yujian on 2018/11/12.
//  Copyright © 2018 yujian. All rights reserved.
//

import UIKit

class VideoCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var preImageView: UIImageView!
    
    @IBAction func clickPreImageView(_ sender: UIButton) {
    }
    
    @IBOutlet weak var headImageView: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var detailText: UILabel!
    
}
