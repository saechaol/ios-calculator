//
//  AboutPageViewController.swift
//  Calculator
//
//  Created by Lucas Saechao on 10/27/20.
//

import UIKit
import SafariServices

class AboutPageViewController : UIViewController {
    
    @IBAction func dismissView(_sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func launchPage(_sender: UIButton) {
        if let url = URL(string: "https://www.github.com/saechaol") {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            
            let viewController = SFSafariViewController(url: url, configuration: config)
            viewController.modalPresentationStyle = .overFullScreen
            viewController.modalPresentationCapturesStatusBarAppearance = true
            present(viewController, animated: true)
        }
    }
}
