//
//  ProfileCell.swift
//  Photo Gallery
//
//  Created by Amith Kumar Narayan on 11/06/2020.
//  Copyright © 2020 Narayan inc. All rights reserved.
//

import Foundation
import UIKit

class ProfileCell : UICollectionViewCell {
    
    var image : UIImage? {
        didSet {
            guard var image = image else {return}
            imageCell.image = image
        }
    }
    
    
    lazy var imageCell : UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.image = #imageLiteral(resourceName: "doberman-dog-1438132__480")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageCell)
        imageCell.customAcnhor(top: topAnchor, bottom: bottomAnchor, left: leftAnchor, right: rightAnchor)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
