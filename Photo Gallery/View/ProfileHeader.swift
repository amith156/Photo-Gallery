//
//  ProfileHeader.swift
//  Photo Gallery
//
//  Created by Amith Kumar Narayan on 07/06/2020.
//  Copyright © 2020 Narayan inc. All rights reserved.
//

import UIKit
import Lottie

class ProfileHeader: UICollectionReusableView {
    
    private var messageAnimationView: AnimationView?
    private var personAnimationView: AnimationView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        viewContainer()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("-----> error in profile header coder!")
    }
    
    
    func viewContainer() {
        addSubview(profileImage)
        profileImage.customAcnhor(width: 120, height: 120)
        profileImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        profileImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileImage.layer.cornerRadius = 120/2

        addSubview(nameLable)
        nameLable.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameLable.customAcnhor(top: profileImage.bottomAnchor, paddingTop: 12)
        
        addSubview(emailLable)
        emailLable.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        emailLable.customAcnhor(top: nameLable.bottomAnchor, paddingTop: 1)
        
        setGradientBackground(colourArray: cellRandomBackgroundColors())
        
        messageButtonAnimation()
        personButtonAnimation()
        
        
    }
    
    
    //MARK: - message button
    func messageButtonAnimation() {
        
        messageAnimationView = .init(name: "email1")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(playMessageAnimation))
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        
        messageAnimationView?.animationSpeed = 1.8
        messageAnimationView?.isUserInteractionEnabled = true
        messageAnimationView?.addGestureRecognizer(tap)
        messageAnimationView?.bringSubviewToFront(profileImage)
        addSubview(messageAnimationView!)
        messageAnimationView?.customAcnhor(top: topAnchor, left: leftAnchor, paddingTop: 50, paddingLeft: 10, width: 65, height: 65)
    }
    
    @objc func playMessageAnimation() {
        messageAnimationView?.play()
    }
    
    
    // MARK: - person button
    func personButtonAnimation() {
        
        personAnimationView = .init(name: "person")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(playAddPersonAnimation))
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        
        personAnimationView?.animationSpeed = 1.2
        personAnimationView?.isUserInteractionEnabled = true
        personAnimationView?.addGestureRecognizer(tap)
        personAnimationView?.bringSubviewToFront(profileImage)
        addSubview(personAnimationView!)
        personAnimationView?.customAcnhor(top: topAnchor, right: rightAnchor, paddingTop: 50, paddingRight: 10, width: 75, height: 75)
    }
    
    @objc func playAddPersonAnimation() {
        personAnimationView?.play()
    }
    
    
    lazy var profileImage : UIImageView = {
           var imageView = UIImageView()
           imageView.backgroundColor = .white
           imageView.image = #imageLiteral(resourceName: "doberman-893937__480")
           imageView.clipsToBounds = true
           imageView.contentMode = .scaleAspectFill
           imageView.layer.borderColor = UIColor.white.cgColor
           imageView.layer.borderWidth = 3
           
           return imageView
       }()
    
    lazy var nameLable : UILabel = {
        var name = UILabel()
        name.textAlignment = .center
        name.font = UIFont.boldSystemFont(ofSize: 26)
        name.text = "Zeenu"
        name.textColor = .white
        return name
    }()
    
    lazy var emailLable : UILabel = {
        var email = UILabel()
        email.textAlignment = .center
        email.font = UIFont.systemFont(ofSize: 18)
        email.text = "Zeenu@gmail.com"
        email.textColor = .white
        return email
    }()
}
