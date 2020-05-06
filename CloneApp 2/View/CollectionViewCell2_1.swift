//
//  CollectionViewCell2_1.swift
//  CloneApp 2
//
//  Created by macOS on 5/5/20.
//  Copyright © 2020 macOS. All rights reserved.
//

import UIKit

class CollectionViewCell2_1: UICollectionViewCell {

    //outlet
    
    @IBOutlet weak var img:UIImageView!
    @IBOutlet weak var lblName:UILabel!
    @IBOutlet weak var lblAuthor:UILabel!
    
    var poster:Poster!{
        didSet {
            img.image = UIImage.init(named: poster.img)
            lblName.text = poster.nameBook
            lblAuthor.text = poster.author
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

}
