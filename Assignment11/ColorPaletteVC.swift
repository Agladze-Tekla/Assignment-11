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
    
    let backgroundLabel: UILabel = {
        let label = UILabel()
        label.text = "Change Home Background Color"
        label.backgroundColor = .systemPink
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        setUpButtonBackground()
        setUpBacgroundLabel()
        createColors()
        
    }
    
    //MARK: - SetUp UI
    func setUpButtonBackground() {
        buttonBackgroundLabel.frame = CGRect(x: 50, y: 100, width: 220, height: 40)
        view.addSubview(buttonBackgroundLabel)
    }

    func setUpBacgroundLabel() {
        backgroundLabel.frame = CGRect(x: 50, y: 200, width: 220, height: 40)
        view.addSubview(backgroundLabel)
    }

    func createColors() {
        let red = UIButton()
        red.setTitle("Red", for: .normal)
        red.backgroundColor = UIColor.red
        
        let orange = UIButton()
        orange.setTitle("Orange", for: .normal)
        orange.backgroundColor = UIColor.orange
        
        let yellow = UIButton()
        yellow.setTitle("Yellow", for: .normal)
        yellow.backgroundColor = UIColor.yellow
        
        let green = UIButton()
        green.setTitle("Green", for: .normal)
        green.backgroundColor = UIColor.green
        
        let blue = UIButton()
        blue.setTitle("Blue", for: .normal)
        blue.backgroundColor = UIColor.blue
        
        let purple = UIButton()
        purple.setTitle("Purple", for: .normal)
        purple.backgroundColor = UIColor.purple
    
    
    func setUpButtonStackColors() {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.equalCentering
        stackView.alignment = UIStackView.Alignment.center
       stackView.frame = CGRect(x: 50, y: 150, width: 240, height: 50)
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(red)
        stackView.addArrangedSubview(orange)
        stackView.addArrangedSubview(yellow)
        stackView.addArrangedSubview(green)
        stackView.addArrangedSubview(blue)
        stackView.addArrangedSubview(purple)
    }
        func setUpBackgroundColors() {
            let stackView = UIStackView()
            stackView.axis = NSLayoutConstraint.Axis.vertical
            stackView.distribution = UIStackView.Distribution.equalCentering
            stackView.alignment = UIStackView.Alignment.center
            stackView.frame = CGRect(x: 50, y: 250, width: 240, height: 50)
            view.addSubview(stackView)
            
            stackView.addArrangedSubview(red)
            stackView.addArrangedSubview(orange)
            stackView.addArrangedSubview(yellow)
            stackView.addArrangedSubview(green)
            stackView.addArrangedSubview(blue)
            stackView.addArrangedSubview(purple)
            
        }
        
    }
}
