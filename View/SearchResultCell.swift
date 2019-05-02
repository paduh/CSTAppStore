//
//  SearchResultCell.swift
//  CSTAppStore
//
//  Created by Perfect Aduh on 19/04/2019.
//  Copyright © 2019 Covenant Sqaure Tech. All rights reserved.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    var appIconImgView: UIImageView = {
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
        btn.backgroundColor = UIColor(white: 0.95, alpha: 1)
        btn.widthAnchor.constraint(equalToConstant: 80).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 32).isActive = true
        return btn
    }()
    
    lazy var screenShot1ImageView = self.createScreenShotImageView()
    lazy var screenShot2ImageView = self.createScreenShotImageView()
    lazy var screenShot3ImageView = self.createScreenShotImageView()

    fileprivate func createScreenShotImageView() -> UIImageView {
        let iv = UIImageView()
        iv.backgroundColor = .blue
        return iv
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        let infoStackView = UIStackView(arrangedSubviews: [
                appIconImgView,
                VerticalStackView(arrangedSubviews: [
                    nameLbl,
                    categoryLbl,
                    ratingsLbl
                    ]),
                getBtn
            ])
        infoStackView.spacing = 12
        infoStackView.alignment = .center
        
        let screenhotStackView = UIStackView(arrangedSubviews: [
            screenShot1ImageView,
            screenShot2ImageView,
            screenShot3ImageView
            ])
        screenhotStackView.spacing = 12
        screenhotStackView.distribution = .fillEqually
        
        let overallStackView = VerticalStackView(arrangedSubviews: [
                infoStackView,
                screenhotStackView
            ], spacing: 16)
        
        addSubview(overallStackView)
        overallStackView.fillSuperview(padding: UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
