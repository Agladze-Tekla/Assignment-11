//
//  ColorPaletteVC.swift
//  Assignment11
//
//  Created by Tekla on 10/27/23.
//

import UIKit

class ColorPaletteVC: UIViewController {
    let buttonBackgroundLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Change Home Buttons Background Colors"
        label.backgroundColor = .purple
        
        return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        setUpButtonBackgroung()
    }
    
    //MARK: - SetUp UI
    func setUpButtonBackgroung() {
        buttonBackgroundLabel.frame = CGRect(x: 150, y: 100, width: 220, height: 40)
        view.addSubview(buttonBackgroundLabel)
    }


}
