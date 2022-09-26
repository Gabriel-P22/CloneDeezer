//
//  SearchViewController.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation
import UIKit

class SearchViewController: UIViewController {
    
    let searchView = SearchView()
    let viewModel = AppContainer.shared.resolve(SearchViewModelProtocol.self)
    var artists: [ArtistsModel] = []
    
    override func viewDidLoad() {
        view = searchView
        searchView.searchBar.searchResultsUpdater = self
        navigationItem.searchController = searchView.searchBar
        searchView.resultsTableView.delegate = self
        searchView.resultsTableView.dataSource = self
        searchView.resultsTableView.reloadData()
    }
    
    func search(music: String) {
        if let viewModel = viewModel {
            viewModel.searchViewModelUseCase(music: music) { searchModel in
                
            }
        }
    }
    
    func getIndex(music: String) {
        viewModel?.searchItens(music: music, completion: { artists in
            self.artists = artists
        })
    }
    
    func getText(text: String) {
        getIndex(music: text)
        search(music: text)
        searchView.resultsTableView.reloadData()
    }
    
}

extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchView.searchBar.searchBar.text else { return }
        getText(text: text)
    }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchCell.identifier) as? SearchCell else { return UITableViewCell() }
    
        cell.musicName.text = artists[indexPath.row].title ?? ""
        if let img = artists[indexPath.row].album?.cover_small, let safeUrl = URL(string: img)  {
            viewModel?.getImage(url: safeUrl) { data in
                DispatchQueue.main.async {
                    cell.albumImage.image = UIImage(data: data)
                }
            }
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
}

class User {
    var favoritesSongs: Array? = []
}
