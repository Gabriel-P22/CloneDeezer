//
//  SearchView.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation
import UIKit

class SearchView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }
    
    lazy var searchBar = UISearchController()
    
    lazy var resultsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config() {
        backgroundColor = .white
        addSubview(resultsTableView)
        resultsTableView.register(SearchCell.self, forCellReuseIdentifier: SearchCell.identifier)
        searchBar.searchBar.tintColor = .systemPink
        
        configureConstraints()
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
            resultsTableView.topAnchor.constraint(equalTo: topAnchor),
            resultsTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            resultsTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            resultsTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
}
