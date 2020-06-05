//
//  ViewController.swift
//  Photo Gallery
//
//  Created by Amith Kumar Narayan on 03/06/2020.
//  Copyright © 2020 Narayan inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(container)
        
        container.customAcnhor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, height: 300)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        container.setGradientBackground(colourArray: cellRandomBackgroundColors())
    }

    
//    MARK: - Properties
    lazy var container : UIView = {
        var view = UIView()
        view.addSubview(profileImage)
        profileImage.customAcnhor(width: 100, height: 100)
        profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        profileImage.layer.cornerRadius = 100/2
//        profileImage.layer
        return view
    }()
    
    lazy var profileImage : UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.image = #imageLiteral(resourceName: "dog3")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 3
        
        return imageView
    }()
    
    
    func cellRandomBackgroundColors() -> [CGColor] {
        //Colors
        let red = [#colorLiteral(red: 0.9654200673, green: 0.1590853035, blue: 0.2688751221, alpha: 1),#colorLiteral(red: 0.7559037805, green: 0.1139892414, blue: 0.1577021778, alpha: 1),#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)]
        let orangeRed = [#colorLiteral(red: 0.9338900447, green: 0.4315618277, blue: 0.2564975619, alpha: 1),#colorLiteral(red: 0.8518816233, green: 0.1738803983, blue: 0.01849062555, alpha: 1),#colorLiteral(red: 1, green: 0.3819050789, blue: 0.615752399, alpha: 1)]
        let orange = [#colorLiteral(red: 0.9953531623, green: 0.54947716, blue: 0.1281470656, alpha: 1),#colorLiteral(red: 0.9409626126, green: 0.7209432721, blue: 0.1315650344, alpha: 1),#colorLiteral(red: 0.9856137633, green: 0.192576021, blue: 0, alpha: 1)]
        let yellow = [#colorLiteral(red: 0.9409626126, green: 0.7209432721, blue: 0.1315650344, alpha: 1),#colorLiteral(red: 0.8931249976, green: 0.5340107679, blue: 0.08877573162, alpha: 1),#colorLiteral(red: 0.9193291068, green: 0.8463580608, blue: 0, alpha: 1)]
        let green = [#colorLiteral(red: 0.3796315193, green: 0.7958304286, blue: 0.2592983842, alpha: 1),#colorLiteral(red: 0.2060100436, green: 0.6006633639, blue: 0.09944178909, alpha: 1),#colorLiteral(red: 0.5247433782, green: 0.6087039709, blue: 0, alpha: 1)]
        let greenBlue = [#colorLiteral(red: 0.2761503458, green: 0.824685812, blue: 0.7065336704, alpha: 1),#colorLiteral(red: 0, green: 0.6422213912, blue: 0.568986237, alpha: 1),#colorLiteral(red: 0.3727427721, green: 0.6998551488, blue: 0.9271011949, alpha: 1)]
        let kindaBlue = [#colorLiteral(red: 0.2494148612, green: 0.8105323911, blue: 0.8425348401, alpha: 1),#colorLiteral(red: 0, green: 0.6073564887, blue: 0.7661359906, alpha: 1),#colorLiteral(red: 0.6729902029, green: 0.54033494, blue: 0.9319015145, alpha: 1)]
        let skyBlue = [#colorLiteral(red: 0.3045541644, green: 0.6749247313, blue: 0.9517192245, alpha: 1),#colorLiteral(red: 0.008423916064, green: 0.4699558616, blue: 0.882807076, alpha: 1),#colorLiteral(red: 0.5231154561, green: 0.6565612555, blue: 0.9282792211, alpha: 1)]
        let blue = [#colorLiteral(red: 0.1774400771, green: 0.466574192, blue: 0.8732826114, alpha: 1),#colorLiteral(red: 0.00491155684, green: 0.287129879, blue: 0.7411141396, alpha: 1),#colorLiteral(red: 0, green: 0.6619550586, blue: 0.9309253097, alpha: 1)]
        let bluePurple = [#colorLiteral(red: 0.4613699913, green: 0.3118675947, blue: 0.8906354308, alpha: 1),#colorLiteral(red: 0.3018293083, green: 0.1458326578, blue: 0.7334778905, alpha: 1),#colorLiteral(red: 0.3130511642, green: 0.3403920531, blue: 0.9409156442, alpha: 1)]
        let purple = [#colorLiteral(red: 0.7080290914, green: 0.3073516488, blue: 0.8653779626, alpha: 1),#colorLiteral(red: 0.5031493902, green: 0.1100070402, blue: 0.6790940762, alpha: 1),#colorLiteral(red: 0.5782987475, green: 0.1121675149, blue: 0.9421408772, alpha: 1)]
        let pink = [#colorLiteral(red: 0.9495453238, green: 0.4185881019, blue: 0.6859942079, alpha: 1),#colorLiteral(red: 0.8123683333, green: 0.1657164991, blue: 0.5003474355, alpha: 1),#colorLiteral(red: 0.9916955829, green: 0, blue: 0.8994982839, alpha: 1)]

        let colorsTable: [Int: [UIColor]] = [0: red,
                                             1: orangeRed,
                                             2: orange,
                                             3: yellow,
                                             4: green,
                                             5: greenBlue,
                                             6: kindaBlue,
                                             7: skyBlue,
                                             8: blue,
                                             9: bluePurple,
                                             10: bluePurple,
                                             11: purple,
                                             12: pink]

        var cgColourArray : [CGColor] = []
        let randomColors = colorsTable.values.randomElement()
        if let colDect = randomColors {
            for value in colDect {
                cgColourArray.append(value.cgColor)
            }
        }

        return cgColourArray
    }
    
    
//    MARK: - Lifecycle
    
    

}

