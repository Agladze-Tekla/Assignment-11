//
//  HomePageVC.swift
//  Assignment11
//
//  Created by Tekla on 10/27/23.
//

import UIKit

protocol HomeViewDelegate: AnyObject {
    func didTapEnableButton(color: UIColor)
}

class HomePageVC: UIViewController, HomeViewDelegate {
    
    func didTapEnableButton(color: UIColor) {
        pushPaletteButton.backgroundColor = color
        presentPaletteButton.backgroundColor = color
    }
    
    
    private let buttonsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()

    private let presentPaletteButton: UIButton = {
       
        let button = UIButton(type: .system)
        button.setTitle("Present Color Palette Page", for: .normal)
        button.backgroundColor = .systemPink
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let pushPaletteButton: UIButton = {
       
        let button = UIButton(type: .system)
        button.setTitle("Push Color Palette Page", for: .normal)
        button.backgroundColor = .systemPink
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        view.addSubview(buttonsView)
        buttonsView.addSubview(presentPaletteButton)
        buttonsView.addSubview(pushPaletteButton)
        setUpAutoLayout()
            }

    //MARK: - Setup UI
    private func setUpAutoLayout() {
        //MARK: - buttonsView Constraints
        buttonsView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        buttonsView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        buttonsView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        buttonsView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //MARK: - presentPaletteButton Constraints
        presentPaletteButton.leftAnchor.constraint(equalTo: buttonsView.leftAnchor, constant: 20).isActive = true
        presentPaletteButton.rightAnchor.constraint(equalTo: buttonsView.rightAnchor, constant: -20).isActive = true
        presentPaletteButton.topAnchor.constraint(equalTo: buttonsView.topAnchor, constant: 40).isActive = true
        presentPaletteButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        setUpPresentPaletteButton()
        
        //MARK: - pushPaletteButton Constraints
        pushPaletteButton.topAnchor.constraint(equalTo: presentPaletteButton.bottomAnchor, constant: 40).isActive = true
        pushPaletteButton.leftAnchor.constraint(equalTo: buttonsView.leftAnchor, constant: 20).isActive = true
        pushPaletteButton.rightAnchor.constraint(equalTo: buttonsView.rightAnchor, constant: -20).isActive = true
        pushPaletteButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        setUpPushPaletteButton()
    }
    
    private func setUpPushPaletteButton() {
        let anotherColorPalette = ColorPaletteVC()
        anotherColorPalette.delegate = self
        self.navigationController?.pushViewController(anotherColorPalette, animated: true)
    }
    
    private func setUpPresentPaletteButton() {
        let anotherColorPalette = ColorPaletteVC()
        anotherColorPalette.delegate = self
        self.presentPaletteButton.addAction(UIAction(handler: { [weak self] action in
            self?.navigateToColorPalette()
        }), for: .touchUpInside)
    }
    
    
    
    //MARK: - Navigation
    private func navigateToColorPalette() {
        let colorPalette = ColorPaletteVC()
        self.present(colorPalette, animated: true)
    }

}
