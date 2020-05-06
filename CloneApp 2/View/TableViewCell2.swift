//
//  TableViewCell2.swift
//  CloneApp 2
//
//  Created by macOS on 5/5/20.
//  Copyright © 2020 macOS. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell {
    // outlet
    @IBOutlet weak var clv:UICollectionView!
    
    //var
    var arrPoster:[Poster]!{
        didSet{
            clv.reloadData()
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
       clv.dataSource = self
        clv.delegate = self
        
        //register
        self.clv.register(UINib(nibName: "CollectionViewCell2_1", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell2_1")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}


extension TableViewCell2:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPoster.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item1 = arrPoster[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell2_1", for: indexPath) as! CollectionViewCell2_1
        cell.poster = item1
        return cell
    }
    
    
}

extension TableViewCell2:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let heightItem = collectionView.bounds.height
        let widthItem = heightItem * 3/5
        return CGSize(width: widthItem, height: heightItem)

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
