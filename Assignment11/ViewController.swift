//
//  ViewController.swift
//  Assignment11
//
//  Created by Tekla on 10/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    let signInButton: UIButton = {
       
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.backgroundColor = .systemPink
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .purple
        signInButton.frame = CGRect(x: 150, y: 100, width: 140, height: 45)
        view.addSubview(signInButton)
        
        signInButton.addAction(UIAction(handler: { [weak self] action in
            self?.navigateToHomePage()
        }), for: .touchUpInside)
        
    }
    
    func navigateToHomePage() {
        
        let homePage = HomePageVC()
        self.present(homePage, animated: true)
    }
}

