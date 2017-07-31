//
//  ViewController.swift
//  Fb_Messanger
//
//  Created by Walkwel on 12/07/17.
//  Copyright © 2017 Walkwel. All rights reserved.
//

import UIKit

import FBSDKMessengerShareKit
class ViewController: UIViewController {
    @IBOutlet weak var USER1: UIButton!
    @IBOutlet weak var USER2: UIButton!
    @IBOutlet weak var USER3: UIButton!
    @IBOutlet weak var USER4: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var buttonWidth: CGFloat = 50
        var button: UIButton? = FBSDKMessengerShareButton.circularButton(with: FBSDKMessengerShareButtonStyle(rawValue: 2)!, width: buttonWidth)
       
        button?.addTarget(self, action: #selector(self._shareButtonPressed), for: .touchUpInside)
        self.USER1.addSubview(button!)
        
        var buttonWidth2: CGFloat = 50
        var button2: UIButton? = FBSDKMessengerShareButton.circularButton(with: FBSDKMessengerShareButtonStyle(rawValue: 2)!, width: buttonWidth2)
        
        button2?.addTarget(self, action: #selector(self._shareButtonPressed2), for: .touchUpInside)
        self.USER2.addSubview(button2!)
        
        var buttonWidth3: CGFloat = 50
        var button3: UIButton? = FBSDKMessengerShareButton.circularButton(with: FBSDKMessengerShareButtonStyle(rawValue: 2)!, width: buttonWidth3)
        
        button3?.addTarget(self, action: #selector(self._shareButtonPressed3), for: .touchUpInside)
        self.USER3.addSubview(button3!)
      
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    func _shareButtonPressed() -> Void {
        print("messenger tapped")
        let urlWhats: String = "fb-messenger://user-thread/1923514524600114/"
        let facebookURL = URL(string: urlWhats.addingPercentEscapes(using: String.Encoding.utf8)!)
        
        if UIApplication.shared.canOpenURL(facebookURL!) {
            UIApplication.shared.openURL(facebookURL!)
        }
        else
        {
            // Cannot open facebook
            let alert = UIAlertController(title: "Vivek Thakur", message: "Fb-Messenger is not installed. \n Press Ok to Download and Install ", preferredStyle: .alert)
            let actionOk = UIAlertAction(title: "OK", style: .default, handler: {(_ action: UIAlertAction) -> Void in
//                let iTunesLink: String = "https://itunes.apple.com/in/app/messenger/id454638411?mt=8"
//                UIApplication.shared.openURL(URL(string: iTunesLink)!)
            })
            //You can use a block here to handle a press on this button
            alert.addAction(actionOk)
            self.present(alert, animated: true, completion: {
                print("Nothing")
            })
    }
    }
    
    func _shareButtonPressed2() -> Void {
        print("messenger tapped")
        let urlWhats: String = "fb-messenger://user-thread/1923514524600114/"
        let facebookURL = URL(string: urlWhats.addingPercentEscapes(using: String.Encoding.utf8)!)
        
        if UIApplication.shared.canOpenURL(facebookURL!) {
            UIApplication.shared.openURL(facebookURL!)
        }
        else
        {
            // Cannot open facebook
            let alert = UIAlertController(title: "Arjun", message: "Fb-Messenger is not installed. \n Press Ok to Download and Install ", preferredStyle: .alert)
            let actionOk = UIAlertAction(title: "OK", style: .default, handler: {(_ action: UIAlertAction) -> Void in
//                let iTunesLink: String = "https://itunes.apple.com/in/app/messenger/id454638411?mt=8"
//                UIApplication.shared.openURL(URL(string: iTunesLink)!)
            })
            //You can use a block here to handle a press on this button
            alert.addAction(actionOk)
            self.present(alert, animated: true, completion: {
                print("Nothing")
            })
        }
    }
    
    func _shareButtonPressed3() -> Void {
        print("messenger tapped")
        let urlWhats: String = "fb-messenger://user-thread/1923514524600114/"
        let facebookURL = URL(string: urlWhats.addingPercentEscapes(using: String.Encoding.utf8)!)
        
        if UIApplication.shared.canOpenURL(facebookURL!) {
            UIApplication.shared.openURL(facebookURL!)
        }
        else
        {
            // Cannot open facebook
            let alert = UIAlertController(title: "Abhishek", message: "Fb-Messenger is not installed. \n Press Ok to Download and Install ", preferredStyle: .alert)
            let actionOk = UIAlertAction(title: "OK", style: .default, handler: {(_ action: UIAlertAction) -> Void in
//                let iTunesLink: String = "https://itunes.apple.com/in/app/messenger/id454638411?mt=8"
//                UIApplication.shared.openURL(URL(string: iTunesLink)!)
            })
            //You can use a block here to handle a press on this button
            alert.addAction(actionOk)
            self.present(alert, animated: true, completion: {
                print("Nothing")
            })
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

