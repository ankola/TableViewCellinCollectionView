//
//  ViewController.swift
//  TableInCollection
//
//  Created by agile on 5/29/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arr = ["1231646514561564561231985123348941231469532494610162691561616","2","3","4","5","6","7","8","9","10"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : TableViewCell = (tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell)!
        cell.objCollectionView.reloadData()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

extension ViewController : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CollectionViewCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell)!
        cell.lbl.text = arr[indexPath.row]
        return cell
    }
}
