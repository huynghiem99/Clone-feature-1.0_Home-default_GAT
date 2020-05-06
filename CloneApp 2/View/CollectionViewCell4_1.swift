//
//  CollectionViewCell4_1.swift
//  CloneApp 2
//
//  Created by macOS on 5/5/20.
//  Copyright © 2020 macOS. All rights reserved.
//

import UIKit

class CollectionViewCell4_1: UICollectionViewCell {

    // Outlet
    @IBOutlet weak var imgAva:UIImageView!
    @IBOutlet weak var nameUserlbl:UILabel!
    @IBOutlet weak var timePostlbl:UILabel!
    @IBOutlet weak var titlePostlbl:UILabel!
    @IBOutlet weak var contentPostTf:UITextView!
    @IBOutlet weak var hastaglbl:UILabel!
    @IBOutlet weak var nameBooklbl:UILabel!
    @IBOutlet weak var countLikelbl:UILabel!
    @IBOutlet weak var numComtlbl:UILabel!
    @IBOutlet weak var numSharelbl:UILabel!
    @IBOutlet weak var outletLike: UIButton!
    @IBOutlet weak var viewAction: UIView!
    @IBOutlet weak var avaContentPost:UIImageView!
    @IBOutlet weak var lblLove:UILabel!
    @IBOutlet weak var lblAuthor:UILabel!
    
    //var
    var post:Post! {
            didSet{
                imgAva.image = UIImage.init(named: post.avaImage)
                nameUserlbl.text = post.nameUser
                timePostlbl.text = post.timePost
                titlePostlbl.text = post.title
                contentPostTf.text = post.content
                hastaglbl.text = post.hastag
    //            nameBooklbl.text = post.nameBook
                
                let text = String(format: "%@ by %@", post.nameBook, post.author)
                let attributedString = NSMutableAttributedString(string: text, attributes: [
                  .font: UIFont.systemFont(ofSize: 12.0, weight: .semibold),
                  .foregroundColor: #colorLiteral(red: 0.5647058824, green: 0.5647058824, blue: 0.5647058824, alpha: 1)
                ])
                attributedString.addAttributes([.foregroundColor: #colorLiteral(red: 0.3529411765, green: 0.6431372549, blue: 0.8, alpha: 1)], range: (text as NSString).range(of: post.nameBook))
                attributedString.addAttributes([.foregroundColor: #colorLiteral(red: 0.3529411765, green: 0.6431372549, blue: 0.8, alpha: 1)], range: (text as NSString).range(of: post.author))
                nameBooklbl.attributedText = attributedString
                countLikelbl.text = post.countLike
                numComtlbl.text = post.numComt
                numSharelbl.text = post.numShare
                avaContentPost.image = UIImage.init(named: post.avaContent)
                lblAuthor.text = post.author
                
            }
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        let viw1 = Bundle.main.loadNibNamed("TableViewCell3_1", owner: self, options: [:])?.first as! TableViewCell3
//        self.addSubview(viw1)
//        UINib(nibName: "TableViewCell3_1", bundle: nil).instantiate(withOwner: self, options: [:]).first as! TableViewCell3
        imgAva.layer.cornerRadius = imgAva.bounds.width / 2
        
        outletLike.imageView?.image = UIImage.init(named: "heart")
        
        avaContentPost.layer.cornerRadius = 8
        avaContentPost.clipsToBounds = true
        
        
            }

}
