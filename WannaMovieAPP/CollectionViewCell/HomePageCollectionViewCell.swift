//
//  HomePageCollectionViewCell.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/12.
//

import UIKit

class HomePageCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "homePageCell"
    
    private let imageView:UIImageView = {
       let imageView = UIImageView()
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        autoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func autoLayout(){
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
    
    public func configuration(){
        
        
    }
    
}
