//
//  HomeView.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/12.
//

import UIKit
import SnapKit

class HomePageView: UIView {

    let tableView:UITableView = {
       let tableView = UITableView()
        tableView.register(homePageTableViewCell.self, forCellReuseIdentifier: homePageTableViewCell.reuseIdentifier)
        tableView.allowsSelection = true
        tableView.estimatedRowHeight = 200
        tableView.separatorStyle = .singleLine
        return tableView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tableView)
        autoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func autoLayout(){
        tableView.snp.makeConstraints { mask in
            mask.edges.equalToSuperview()
        }
        
    }
    
}
