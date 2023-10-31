//
//  ColorPaletteVC.swift
//  Assignment11
//
//  Created by Tekla on 10/27/23.
//

import UIKit


class ColorPaletteVC: UIViewController {
    
    
    weak var delegate: HomeViewDelegate?
    
    @objc private func didTapButton(color: UIColor ) {
        butRed.addAction(UIAction(handler: { [weak self] action in
            self?.delegate?.didTapEnableButton(color: .red)
        }), for: .touchUpInside)
        butRed.addAction(UIAction(handler: { [weak self] action in
            self?.navigateToHomePage()
        }), for: .touchUpInside)
    }
    
    private func navigateToHomePage() {
        let homePage = HomePageVC()
        self.present(homePage, animated: true)
    }
    
    private let colorView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    //MARK: - "Button" color palette stackViews
    private let buttonColorStack1: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false

        return stack
    }()
    
    private let buttonColorStack2: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false

        return stack
    }()
    
    //MARK: - "Backgorund" color palette stackViews
    private let backgroundColorStack1: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false

        return stack
    }()
    
    private let backgroundColorStack2: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false

        return stack
    }()
    
    //MARK: - Labels
    private let buttonColorLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .purple
        label.text = "Change Home Buttons Background Colors"
        label.font = .systemFont(ofSize: 20)
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .center
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let backgroundColorLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .purple
        label.text = "Change Home Background Color"
        label.font = .systemFont(ofSize: 20)
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .center
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
   
    //MARK: - "Button" color palette buttons
    private let butRed: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.setTitle("Red", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let butOrange: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .orange
        button.setTitle("Orange", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let butYellow: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        button.setTitle("Yellow", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let butGreen: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .green
        button.setTitle("Green", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let butBlue: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.setTitle("Blue", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let butIndigo: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemIndigo
        button.setTitle("Indigo", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //MARK: - "Background" color palette buttons
    private let bacRed: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.setTitle("Red", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let bacOrange: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .orange
        button.setTitle("Orange", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let bacYellow: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        button.setTitle("Yellow", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let bacGreen: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .green
        button.setTitle("Green", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let bacBlue: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.setTitle("Blue", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let bacIndigo: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemIndigo
        button.setTitle("Indigo", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(colorView)
        colorView.addSubview(buttonColorLabel)
        colorView.addSubview(backgroundColorLabel)
        colorView.addSubview(buttonColorStack1)
        colorView.addSubview(buttonColorStack2)
        colorView.addSubview(backgroundColorStack1)
        colorView.addSubview(backgroundColorStack2)
    
        buttonColorStack1.addArrangedSubview(butRed)
        buttonColorStack1.addArrangedSubview(butOrange)
        buttonColorStack1.addArrangedSubview(butYellow)
        buttonColorStack2.addArrangedSubview(butGreen)
        buttonColorStack2.addArrangedSubview(butBlue)
        buttonColorStack2.addArrangedSubview(butIndigo)
        backgroundColorStack1.addArrangedSubview(bacRed)
        backgroundColorStack1.addArrangedSubview(bacOrange)
        backgroundColorStack1.addArrangedSubview(bacYellow)
        backgroundColorStack2.addArrangedSubview(bacGreen)
        backgroundColorStack2.addArrangedSubview(bacBlue)
        backgroundColorStack2.addArrangedSubview(bacIndigo)
 
        setUpAutoLayout()
        
        butRed.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        butOrange.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        butYellow.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        butGreen.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        butBlue.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        butIndigo.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
     
        bacRed.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        bacOrange.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        bacYellow.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        bacGreen.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        bacBlue.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        bacIndigo.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        

        
        
        /*
        butRed.addTarget(self, action: #selector(didTapButton(color: .red)), for: .touchUpInside)
        butOrange.addTarget(self, action: #selector(didTapButton(color: .orange)), for: .touchUpInside)
        butYellow.addTarget(self, action: #selector(didTapButton(color: .yellow)), for: .touchUpInside)
        butGreen.addTarget(self, action: #selector(didTapButton(color: .green)), for: .touchUpInside)
        butBlue.addTarget(self, action: #selector(didTapButton(color: .green)), for: .touchUpInside)
        butIndigo.addTarget(self, action: #selector(didTapButton(color: .systemIndigo)), for: .touchUpInside)
     
        
        bacRed.addTarget(self, action: #selector(didTapButton(color: .red)), for: .touchUpInside)
        bacOrange.addTarget(self, action: #selector(didTapButton(color: .orange)), for: .touchUpInside)
        bacYellow.addTarget(self, action: #selector(didTapButton(color: .yellow)), for: .touchUpInside)
        bacGreen.addTarget(self, action: #selector(didTapButton(color: .green)), for: .touchUpInside)
        bacBlue.addTarget(self, action: #selector(didTapButton(color: .blue)), for: .touchUpInside)
        bacIndigo.addTarget(self, action: #selector(didTapButton(color: .systemIndigo)), for: .touchUpInside)
        */

        
        
        
        
    }
    
   
    //MARK: - SetUp AutoLayout
    private func setUpAutoLayout() {
        
        //MARK: - colorView Constraints
        colorView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        colorView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        colorView.heightAnchor.constraint(equalToConstant: view.frame.height*2/3).isActive = true
        colorView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //MARK: - buttonColorLabel Constraints
        buttonColorLabel.leftAnchor.constraint(equalTo: colorView.leftAnchor, constant: 20).isActive = true
        buttonColorLabel.rightAnchor.constraint(equalTo: colorView.rightAnchor, constant: -20).isActive = true
        buttonColorLabel.topAnchor.constraint(equalTo: colorView.topAnchor, constant: 20).isActive = true
        
        //MARK: - "Button" color stackViews Constraints
        buttonColorStack1.leftAnchor.constraint(equalTo: colorView.leftAnchor, constant: 20).isActive = true
        buttonColorStack1.rightAnchor.constraint(equalTo: colorView.rightAnchor, constant: -20).isActive = true
        buttonColorStack1.topAnchor.constraint(equalTo: buttonColorLabel.bottomAnchor, constant: 20).isActive = true
        buttonColorStack1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        buttonColorStack2.leftAnchor.constraint(equalTo: colorView.leftAnchor, constant: 20).isActive = true
        buttonColorStack2.rightAnchor.constraint(equalTo: colorView.rightAnchor, constant: -20).isActive = true
        buttonColorStack2.topAnchor.constraint(equalTo: buttonColorStack1.bottomAnchor, constant: 10).isActive = true
        buttonColorStack2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //MARK: - backgroundColorLabel Constraints
        backgroundColorLabel.leftAnchor.constraint(equalTo: colorView.leftAnchor, constant: 20).isActive = true
        backgroundColorLabel.rightAnchor.constraint(equalTo: colorView.rightAnchor, constant: -20).isActive = true
        backgroundColorLabel.topAnchor.constraint(equalTo: buttonColorStack2.bottomAnchor, constant: 60).isActive = true
        
        //MARK: - "Background" color stackViews Constraints
        backgroundColorStack1.leftAnchor.constraint(equalTo: colorView.leftAnchor, constant: 20).isActive = true
        backgroundColorStack1.rightAnchor.constraint(equalTo: colorView.rightAnchor, constant: -20).isActive = true
        backgroundColorStack1.topAnchor.constraint(equalTo: backgroundColorLabel.bottomAnchor, constant: 20).isActive = true
        backgroundColorStack1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        backgroundColorStack2.leftAnchor.constraint(equalTo: colorView.leftAnchor, constant: 20).isActive = true
        backgroundColorStack2.rightAnchor.constraint(equalTo: colorView.rightAnchor, constant: -20).isActive = true
        backgroundColorStack2.topAnchor.constraint(equalTo: backgroundColorStack1.bottomAnchor, constant: 10).isActive = true
        backgroundColorStack2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    
}




