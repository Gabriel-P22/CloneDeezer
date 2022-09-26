//
//  AppContainer.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import Swinject

class AppContainer {
    public static let shared: Container = {
        let container = Container()
        container.register(LoginViewModelProtocol.self) { _ in LoginViewModel()}
        
        container.register(SearchViewModelUseCaseProcol.self) { r in
            SearchViewModelUseCase(networlRepository: r.resolve(NetworkRepositoryProtocol.self)!)
        }
        
        container.register(SearchViewModelProtocol.self) { r in SearchViewModel(searchViewModelUseCase: r.resolve(SearchViewModelUseCaseProcol.self)!)}
        
        container.register(NetworkRepositoryProtocol.self) { _ in
            NetworkRepository()
        }
        return container
    }()
}
