//
//  AddToCartCell.swift
//  ProductDescription
//
//  Created by Фараби Иса on 05.02.2024.
//

//import Foundation
//import UIKit
//
//class AddToCartCell: UITableViewCell {
//
//    static let reuseIdentifier = "AddToCartCell"
//    var number = 0
//
//    let addToCartButton: UIButton = {
//        let button = UIButton()
//        button.setTitle("Add to Cart", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = UIColor(hexString: "#53C957")
//        button.contentVerticalAlignment = .top
//
//        return button
//    }()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        contentView.addSubview(addToCartButton)
//
//        addToCartButton.snp.makeConstraints { make in
//            make.bottom.leading.trailing.equalToSuperview()
//            make.height.equalTo(100)
//        }
//
//        addToCartButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    @objc private func buttonTapped() {
//        print("Add to cart pressed!")
//    }
//}
