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
private let profileCellIdentifier = "profileCellID"


class ProfileVC: UICollectionViewController {
    
    var image: [UIImage] = [#imageLiteral(resourceName: "doberman-2441118__480"),#imageLiteral(resourceName: "hundeportrait-3061800__480"),#imageLiteral(resourceName: "doberman-4017250__480"),#imageLiteral(resourceName: "dog-1098749__480"),#imageLiteral(resourceName: "doberman-2736406__480"),#imageLiteral(resourceName: "luna-1283356__480"),#imageLiteral(resourceName: "doberman-2441214__480"),#imageLiteral(resourceName: "doberman-893937__480"),#imageLiteral(resourceName: "doberman-dog-1438132__480"),#imageLiteral(resourceName: "doberman-1177935__480"),#imageLiteral(resourceName: "doberman-893931__480"),#imageLiteral(resourceName: "devil-1193290__480"),#imageLiteral(resourceName: "luna-was-1045295__480"),#imageLiteral(resourceName: "dog-1576497__480"),#imageLiteral(resourceName: "doberman-3038668__480")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.collectionView!.register(ProfileHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: profileHeaderIdentifier)
        self.collectionView.register(ProfileCell.self, forCellWithReuseIdentifier: profileCellIdentifier)
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.backgroundColor = UIColor.white
    }
}

//MARK:- UICollectionViewDelegate/DataSource
extension ProfileVC {
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: profileHeaderIdentifier, for: indexPath) as! ProfileHeader
        return header
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: profileCellIdentifier, for: indexPath) as! ProfileCell
        cell.image = image[indexPath.row]
        return cell
        
    }
}

//MARK:- UICollectionViewDelegateFlowLayout
extension ProfileVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //2 is for the pixels
        let width = (view.frame.width - 2) / 3
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        1
    }
}

