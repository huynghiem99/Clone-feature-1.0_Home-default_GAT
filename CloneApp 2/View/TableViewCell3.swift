//
//  TableViewCell3.swift
//  CloneApp 2
//
//  Created by macOS on 5/5/20.
//  Copyright © 2020 macOS. All rights reserved.
//

import UIKit

class TableViewCell3: UITableViewCell {

    //outlet
    @IBOutlet weak var tbv:UITableView!
    
    //var
    var arrPost:[Post]!{
        didSet{
            tbv.reloadData()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tbv.register(UINib(nibName: "TableViewCell3_1", bundle: nil), forCellReuseIdentifier: "TableViewCell3_1")
        
        tbv.delegate = self
        tbv.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


extension TableViewCell3:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell3_1") as! TableViewCell3_1
        let item:Post = arrPost[indexPath.row]
        cell.post = item
        return cell
    }
    
    
}

extension TableViewCell3:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
