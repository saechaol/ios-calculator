//
//  AboutPageViewController.swift
//  Calculator
//
//  Created by Lucas Saechao on 10/27/20.
//

import UIKit
import SafariServices

class AboutPageViewController : UIViewController {
    var style: UIStatusBarStyle = .default
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if self.style == .lightContent {
            self.style = .default
        }
        return self.style
    }
    
    @IBAction func dismissView(_sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        changeStatusBar()
    }
    
    @IBAction func launchPage(_sender: UIButton) {
        if let url = URL(string: "https://www.github.com/saechaol") {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            
            let viewController = SFSafariViewController(url: url, configuration: config)
            viewController.modalPresentationStyle = .overFullScreen
            present(viewController, animated: true)
            changeStatusBar()
        }
    }
    
    private func changeStatusBar() {
        if self.style == .lightContent {
            self.style = .default
        } else {
            self.style = .lightContent
        }
        setNeedsStatusBarAppearanceUpdate()
    }
}
