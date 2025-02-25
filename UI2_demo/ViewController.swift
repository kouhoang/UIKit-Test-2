//
//  ViewController.swift
//  UI2_demo
//
//  Created by admin on 20/2/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cloudXEmoji: UIImageView!
    @IBOutlet weak var mainSignInView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var emailTitleView: UILabel!
    @IBOutlet weak var passwordTitleView: UILabel!
    @IBOutlet weak var signInTitleLable: UIView!
    @IBOutlet weak var sunCloudImage: UIImageView!
    @IBOutlet weak var titleSignIn: UILabel!
    
    var signInTitleOriginalY: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mainSignInView.layer.cornerRadius = 8
        
        signInButton.layer.cornerRadius = 8
        signInButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)

        
        let emojiImage = UIImage(named: "Iconsmind-Outline-Cloud-Remove.512.png")?.withRenderingMode(.alwaysTemplate)
        cloudXEmoji.image = emojiImage
        cloudXEmoji.tintColor = UIColor(red: 252/255, green: 85/255, blue: 92/255, alpha: 1.0)
        
        signInTitleLable.layer.cornerRadius = 8
        
        mainSignInView.alpha = 0
        signInTitleOriginalY = signInTitleLable.frame.origin.y
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(animatedSignIn))
        signInTitleLable.isUserInteractionEnabled = true
        signInTitleLable.addGestureRecognizer(tapGesture)
    }
    
    @objc func animatedSignIn() {
        UIView.animate(withDuration: 0.5, animations: {
            
            self.signInTitleLable.frame.origin.y = 250
            self.signInTitleLable.frame.size.height = 60
            
            self.sunCloudImage.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
            self.sunCloudImage.frame.origin.y = 9
            
            self.titleSignIn.frame.origin.y = 16
            self.titleSignIn.frame.origin.x = 70
            
            self.signInTitleLable.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            
            self.mainSignInView.alpha = 1
        })
    }
}

