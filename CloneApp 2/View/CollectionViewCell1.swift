//
//  CollectionViewCell1.swift
//  CloneApp 2
//
//  Created by macOS on 5/4/20.
//  Copyright © 2020 macOS. All rights reserved.
//

import UIKit

class CollectionViewCell1: UICollectionViewCell {

    //outlet
    @IBOutlet weak var img:UIImageView!
    
    
    var group:Group!{
        didSet{
            img.image = UIImage.init(named: group.imgH)
        }
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
