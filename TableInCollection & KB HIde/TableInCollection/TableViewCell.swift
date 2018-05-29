
//
//  TableViewCell.swift
//  TableInCollection
//
//  Created by agile on 5/29/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var objCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
