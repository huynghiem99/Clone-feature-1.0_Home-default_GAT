//
//  TableViewCell4.swift
//  CloneApp 2
//
//  Created by macOS on 5/5/20.
//  Copyright © 2020 macOS. All rights reserved.
//

import UIKit

class TableViewCell4: UITableViewCell {

    
    //outlet
    @IBOutlet weak var clv:UICollectionView!
    
    //var
    var arrPost:[Post]!{
        didSet{
            clv.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        clv.dataSource = self
        clv.delegate = self
        
        //register
        self.clv.register(UINib(nibName: "CollectionViewCell4_1", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell4_1")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}

extension TableViewCell4:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPost.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item1 = arrPost[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell4_1", for: indexPath) as! CollectionViewCell4_1
        cell.post = item1
        return cell
    }
    
    
}

extension TableViewCell4:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let heightItem = collectionView.bounds.height
        let widthItem = heightItem * 5/4
        return CGSize(width: widthItem, height: heightItem)

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

