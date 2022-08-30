//
//  TotalBillView.swift
//  TotalBillApp
//
//  Created by Nikolai Maksimov on 30.08.2022.
//

import UIKit

class TotalBillView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Bill"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let someTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.font = UIFont(name: "Avenir Next Bold", size: 48)
        textField.textAlignment = .center
        textField.keyboardType = .numberPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(someTextField)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            someTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            someTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            someTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            someTextField.heightAnchor.constraint(equalToConstant: 100)
            
        ])
    }
    
}