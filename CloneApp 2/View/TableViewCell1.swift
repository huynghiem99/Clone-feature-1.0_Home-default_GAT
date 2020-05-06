//
//  TableViewCell1.swift
//  CloneApp 2
//
//  Created by macOS on 5/4/20.
//  Copyright © 2020 macOS. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet weak var clv:UICollectionView!
    
    var arrGroup:[Group]!{
        didSet{
            self.clv.reloadData()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clv.dataSource = self
        clv.delegate = self
        
        //register
        self.clv.register(UINib(nibName: "CollectionViewCell1", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell1")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension TableViewCell1:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrGroup.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item1 = arrGroup[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell1", for: indexPath) as! CollectionViewCell1
        cell.group = item1
        return cell

    }
    
    
}

extension TableViewCell1:UICollectionViewDelegateFlowLayout{
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
