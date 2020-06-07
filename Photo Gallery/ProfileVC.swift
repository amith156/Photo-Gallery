//
//  ViewController.swift
//  Photo Gallery
//
//  Created by Amith Kumar Narayan on 03/06/2020.
//  Copyright © 2020 Narayan inc. All rights reserved.
//

import UIKit
import Lottie

private let profileHeaderIdentifier = "profileHeaderID"

class ProfileVC: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.collectionView!.register(ProfileHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: profileHeaderIdentifier)
        collectionView.contentInsetAdjustmentBehavior = .never
    }
}

extension ProfileVC {
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: profileHeaderIdentifier, for: indexPath)
        return header
    }
    
}

extension ProfileVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
}

