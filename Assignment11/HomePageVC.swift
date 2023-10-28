//
//  HomePageVC.swift
//  Assignment11
//
//  Created by Tekla on 10/27/23.
//

import UIKit

class HomePageVC: UIViewController {

    let presentPaletteButton: UIButton = {
       
        let button = UIButton()
        button.setTitle("Color Palette Page", for: .normal)
        button.backgroundColor = .purple
        
        return button
    }()
    
    let pushPaletteButton: UIButton = {
       
        let button = UIButton()
        button.setTitle("Color Palette Page", for: .normal)
        button.backgroundColor = .purple
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setUpPushPaletteButton()
        setUpPresentPaletteButton()
            }

    //MARK: - Setup UI
    func setUpPushPaletteButton() {
        
        pushPaletteButton.frame = CGRect(x: 270, y: 0, width: 200, height: 45)
        view.addSubview(pushPaletteButton)
        
        let anotherColorPalette = ColorPaletteVC()
        
        self.navigationController?.pushViewController(anotherColorPalette, animated: true)
    }
    
    func setUpPresentPaletteButton() {
        presentPaletteButton.frame = CGRect(x: 150, y: 100, width: 200, height: 45)
        view.addSubview(presentPaletteButton)
        
        presentPaletteButton.addAction(UIAction(handler: { [weak self] action in
            self?.navigateToColorPalette()
        }), for: .touchUpInside)
    }
    
    //MARK: - Navigation
    func navigateToColorPalette() {
        
        let colorPalette = ColorPaletteVC()
        self.present(colorPalette, animated: true)
    }

}
