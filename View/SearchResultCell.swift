//
//  SearchResultCell.swift
//  CSTAppStore
//
//  Created by Perfect Aduh on 19/04/2019.
//  Copyright © 2019 Covenant Sqaure Tech. All rights reserved.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    var imgView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.widthAnchor.constraint(equalToConstant: 64).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 64).isActive = true
        iv.layer.cornerRadius = 12
        return iv
    }()
    
    var nameLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "App Name"
        lbl.backgroundColor = UIColor.blue
        return lbl
    }()
    
    var categoryLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Photos and Video"
        return lbl
    }()
    
    var ratingsLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "1.92M"
        return lbl
    }()
    
    var getBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("GET", for: .normal)
        btn.setTitleColor(.blue, for: .normal)
        btn.titleLabel?.font = .boldSystemFont(ofSize: 14)
        btn.layer.cornerRadius = 16
        btn.backgroundColor = UIColor.darkGray
        btn.widthAnchor.constraint(equalToConstant: 80).isActive = true
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
        
        let lblStackView = UIStackView(arrangedSubviews: [
                nameLbl,
                categoryLbl,
                ratingsLbl
            ])
        lblStackView.axis = .vertical
        
        let stackView = UIStackView(arrangedSubviews: [
                imgView,
                lblStackView,
                getBtn
            ])
        stackView.spacing = 12
        stackView.alignment = .center
        
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
