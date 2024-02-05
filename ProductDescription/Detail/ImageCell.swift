//
//  ImageCell.swift
//  ProductDescription
//
//  Created by Фараби Иса on 05.02.2024.
//

import Foundation
import UIKit
import SnapKit

class ImageCell: UITableViewCell {
    
    static let reuseIdentifier = "ImageCell"
    var screenWidth: CGFloat = 0
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        screenWidth = UIScreen.main.bounds.width
        contentView.addSubview(productImageView)
        productImageView.snp.makeConstraints { make in
            make.height.width.equalTo(screenWidth)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(imageName: String) {
        productImageView.image = UIImage(named: imageName)
    }
}
