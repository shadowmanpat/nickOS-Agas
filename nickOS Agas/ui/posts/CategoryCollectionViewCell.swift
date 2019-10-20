//
//  CategoryCollectionViewCell.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/20/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var title: UILabel!
    
    func setLabel(forTitlte title: String){
        self.title.text = title
//         self.title.invalidateIntrinsicContentSize()
//        self.invalidateIntrinsicContentSize()
       
    }
}
