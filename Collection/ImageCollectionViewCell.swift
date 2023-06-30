//
//  ImageCollectionViewCell.swift
//  Collection
//
//  Created by Вадим Амбарцумян on 13.06.2023.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView
     
     override init(frame: CGRect) {
         self.imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
         super.init(frame: frame)
         contentView.addSubview(imageView)
         self.imageView.center.x = contentView.frame.width / 2
     }
     
     required init?(coder: NSCoder) {
         self.imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
         super.init(coder: coder)
         contentView.addSubview(imageView)
         self.imageView.center.x = contentView.frame.width / 2
     }
 }
