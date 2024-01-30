//
//  ViewController.swift
//  ProductDescription
//
//  Created by Фараби Иса on 30.01.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var screenWidth: CGFloat = 0
    
    let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "backButtonBlack"), for: .normal)
        
        return button
    }()
    
    @objc func backButtonPressed() {
        print("Back Button pressed")
    }
    
    let productView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.backgroundColor = UIColor(hexString: "#F5F5F5")
        iv.image = UIImage(named: "kurt")
        
        return iv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Kurt Shoro light 30 g"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray3
        label.textAlignment = .center
        label.text = "405₸/pc"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        return label
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 10
        
        return sv
    }()
    
    let description1: UILabel = {
        let label = UILabel()
        label.text = "sour"
        label.textAlignment = .center
        label.backgroundColor = UIColor(hexString: "#F5F5F5")
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        
        return label
    }()
    
    let description2: UILabel = {
        let label = UILabel()
        label.text = "milk"
        label.textAlignment = .center
        label.backgroundColor = UIColor(hexString: "#F5F5F5")
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        
        return label
    }()
    
    let description3: UILabel = {
        let label = UILabel()
        label.text = "desc"
        label.textAlignment = .center
        label.backgroundColor = UIColor(hexString: "#F5F5F5")
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        
        return label
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "#F5F5F5")
        
        return view
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        let attributedTitle = NSMutableAttributedString(string: "Description\n \n", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.black])
        attributedTitle.append(NSAttributedString(string: """
        Qurt(Құрт) is a traditional Kazakh dairy product made from fermented milk, usually from sheep, goat, or cow milk. It is a type of dried or dehydrated curd that is formed into small, round balls. The process of making qurt involves separating the whey from the milk, and then the remaining curd is formed into small pieces and air-dried.
        """, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.lightGray]))
        label.attributedText = attributedTitle
        label.textAlignment = .justified
        return label
    }()
    
    let greenView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = UIColor(hexString: "#53C957")
        
        return iv
    }()
    
    let price2Label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.text = "405₸/pc"
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.tintColor = .white
        
        return button
    }()
    
    @objc func addButtonPressed() {
        print("Add to cart button pressed")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenWidth = UIScreen.main.bounds.width
        
        setupViews()
        setupConstraints()
        addTargets()
    }

    func setupViews() {
        view.backgroundColor = .white
        stackView.addArrangedSubview(description1)
        stackView.addArrangedSubview(description2)
        stackView.addArrangedSubview(description3)
        [productView, backButton, titleLabel, priceLabel, stackView, lineView, descriptionLabel, greenView, price2Label, addButton].forEach {
            view.addSubview($0)
        }
    }
    
    func setupConstraints() {
        backButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.height.equalTo(20)
            make.width.equalTo(34)
            make.leading.equalToSuperview().offset(10)
        }
        
        productView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.width.height.equalTo(screenWidth)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(productView.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(priceLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(32)
        }
        
        lineView.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(2)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(lineView).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        greenView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
        
        price2Label.snp.makeConstraints { make in
            make.top.equalTo(greenView.snp.top).offset(10)
            make.centerX.equalToSuperview()
        }
        
        addButton.snp.makeConstraints { make in
            make.leading.equalTo(price2Label.snp.trailing).offset(10)
            make.top.equalTo(greenView.snp.top).offset(6)
            make.width.height.equalTo(35)
        }
    }
    
    func addTargets() {
        backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        addButton.addTarget(self, action: #selector(addButtonPressed), for: .touchUpInside)
    }
    
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

