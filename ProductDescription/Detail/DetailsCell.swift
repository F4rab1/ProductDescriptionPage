//
//  DetailsCell.swift
//  ProductDescription
//
//  Created by Фараби Иса on 05.02.2024.
//

import Foundation
import UIKit
import SnapKit

class DetailsCell: UITableViewCell {
    
    static let reuseIdentifier = "DetailsCell"
    var screenWidth: CGFloat = 0
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.numberOfLines = 0
        
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray3
        label.font = UIFont.boldSystemFont(ofSize: 16)
        
        return label
    }()
    
    private let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillProportionally
        sv.spacing = 15
        
        return sv
    }()
    
    private let label1: UILabel = {
        let label = UILabel()
        label.text = "sour"
        label.textAlignment = .center
        label.backgroundColor = UIColor(hexString: "#F5F5F5")
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        
        return label
    }()
    
    private let label2: UILabel = {
        let label = UILabel()
        label.text = "milk"
        label.textAlignment = .center
        label.backgroundColor = UIColor(hexString: "#F5F5F5")
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        
        return label
    }()
    
    private let label3: UILabel = {
        let label = UILabel()
        label.text = "Kazakh delicacy"
        label.textAlignment = .center
        label.backgroundColor = UIColor(hexString: "#F5F5F5")
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        
        return label
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "#F5F5F5")
        
        return view
    }()
    
    private let brandLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "KazBeef")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    private let brandLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)

        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Description:"

        return label
    }()

    private let descriptionText: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray3
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.textAlignment = .justified

        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        screenWidth = UIScreen.main.bounds.width
        
        setupUI()
        setupConstraints()
        
    }
    
    private func setupUI() {
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        [nameLabel, priceLabel, stackView, lineView, brandLogo, brandLabel, descriptionLabel, descriptionText].forEach {
            contentView.addSubview($0)
        }
    }
    
    private func setupConstraints() {
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.safeAreaLayoutGuide.snp.top).offset(screenWidth - 40)
            make.centerX.equalToSuperview()
        }
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
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
        
        brandLogo.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(20)
            make.leading.equalToSuperview().inset(20)
            make.height.width.equalTo(30)
        }
        
        brandLabel.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(20)
            make.leading.equalTo(brandLogo.snp.trailing).offset(7)
            make.trailing.equalToSuperview()
            make.height.width.equalTo(30)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(brandLogo.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        descriptionText.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(name: String, price: String, brand: String, description: String) {
        nameLabel.text = name
        priceLabel.text = price
        brandLabel.text = brand
        descriptionText.text = description
    }
}
