//
//  Home.swift
//  ShotsApp
//
//  Created by Meng To on 2014-07-29.
//  Copyright (c) 2014 Meng To. All rights reserved.
//

import UIKit

class Home: UIViewController {

    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backgroundMaskView: UIView!
    @IBOutlet weak var dialogView: UIView!
    @IBOutlet weak var popoverView: UIView!
    @IBOutlet weak var shareView: UIView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var favoritesLabel: UILabel!
    
    @IBAction func likeButtonDidPress(sender: AnyObject) {
        
    }
    @IBAction func shareButtonDidPress(sender: AnyObject) {
        shareView.hidden = false
        shareView.alpha = 0
        
        UIView.animateWithDuration(0.5, animations: {
                self.shareView.alpha = 1
            })
    }
    @IBAction func userButtonDidPress(sender: AnyObject) {
        popoverView.hidden = false
    }
    @IBAction func imageButtonDidPress(sender: AnyObject) {
        
        UIView.animateWithDuration(0.7, animations: {
            
            self.dialogView.frame = CGRectMake(0, 0, 320, 568)
            self.dialogView.layer.cornerRadius = 0
            self.imageButton.frame = CGRectMake(0, 0, 320, 240)
            self.likeButton.alpha = 0
            self.shareButton.alpha = 0
            self.userButton.alpha = 0
            self.headerView.alpha = 0
            
            }, completion: { finished in
                self.performSegueWithIdentifier("homeToDetail", sender: self)
            })
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        insertBlurView(backgroundMaskView, UIBlurEffectStyle.Dark)
        insertBlurView(headerView, UIBlurEffectStyle.Dark)

        // Do any additional setup after loading the view.
    }

}
