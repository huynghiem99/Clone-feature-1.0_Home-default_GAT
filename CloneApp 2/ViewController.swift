//
//  ViewController.swift
//  CloneApp 2
//
//  Created by macOS on 5/4/20.
//  Copyright © 2020 macOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable:UITableView!
    
    var arrG:[Group] = []
    var arrP:[Poster] = []
    var arrPo:[Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.dataSource = self
        myTable.delegate = self
        
        arrG = [Group.init(imgH: "gr1"),
                Group.init(imgH: "gr2")]
        
        arrP = [Poster.init(img: "sach1", nameBook: "Bố con cá gai", author: "John Haris"),
                Poster.init(img: "sach2", nameBook: "Sự im lặng của bầy cừu", author: "Milman"),
                Poster.init(img: "sach3", nameBook: "Sự thinh lặng", author: "Boeis"),
        Poster.init(img: "sach1", nameBook: "Bố con cá gai", author: "John Haris"),
        Poster.init(img: "sach2", nameBook: "Sự im lặng của bầy cừu", author: "Milman"),
        Poster.init(img: "sach3", nameBook: "Sự thinh lặng", author: "Boeis")]
        
        arrPo = [Post.init(avaImage: "cauthu1", nameUser: "Ronaldo", timePost: "12 hour ago", title: "Ai cũng cần có trong đời những tháng ngày lặng lẽ", content: "Sed ut perspiciatis unde omnis iste natus error sit oke afge fcsf ", hastag: "#Sport", nameBook: "Footballer" , countLike: "23", numComt: "100 Comment", numShare: "300 share", avaContent: "cauthu1", author: "Ogsy"),
        Post.init(avaImage: "cauthu2", nameUser: "Messi", timePost: "10 hour ago", title: "Ai cũng cần có trong đời những tháng ngày lặng lẽ", content: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium", hastag: "#Sport", nameBook: "Footballer", countLike: "23", numComt: "70 Comment", numShare: "90 share", avaContent: "cauthu2", author: "Alex"),
        Post.init(avaImage: "cauthu3", nameUser: "Neymar", timePost: "8 hour ago", title: "Ai cũng cần có trong đời những tháng ngày lặng lẽ", content: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium", hastag: "#Sport", nameBook: "Football", countLike: "23", numComt: "120 Comment", numShare: "50 share", avaContent: "cauthu3", author: "Kingdy")]
        
        
        myTable.register(UINib(nibName: "TableViewCell1", bundle: nil), forCellReuseIdentifier: "TableViewCell1")
        myTable.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "TableViewCell2")
        myTable.register(UINib(nibName: "TableViewCell3", bundle: nil), forCellReuseIdentifier: "TableViewCell3")
        myTable.register(UINib(nibName: "TableViewCell4", bundle: nil), forCellReuseIdentifier: "TableViewCell4")
    }


}

extension ViewController:UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        if section == 1{
            return 1
        }
        if section == 2{
            return 1
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1") as! TableViewCell1
            cell.arrGroup = arrG
            return cell
        }
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell2") as! TableViewCell2
            cell .arrPoster = arrP
            return cell
        }
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell3") as! TableViewCell3
            cell .arrPost = arrPo
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell4") as! TableViewCell4
            cell.arrPost = arrPo
            return cell
        }
    }
}

extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.section == 0){
            return 150
        }
        if(indexPath.section == 1){
            return 250
        }
            if(indexPath.section == 2){
                return 900
            }
        else{ return 400}
    }
}
