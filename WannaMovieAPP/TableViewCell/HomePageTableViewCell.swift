//
//  homePageTableViewCell.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/17.
//

import UIKit

class HomePageTableViewCell: UITableViewCell {

    static let reuseIdentifier = "homaPageCell"
    
    let collectionView:UICollectionView = {
       let collectionView = UICollectionView
        
        return
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        autoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func autoLayout(){
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
