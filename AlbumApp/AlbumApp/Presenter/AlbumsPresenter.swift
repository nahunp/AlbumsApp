//
//  AlbumsPresenter.swift
//  AlbumApp
//
//  Created by CincinnatiAi Dallas on 5/9/25.
//

import Foundation

protocol AlbumsViewProtocol: AnyObject {
        func reloadData(Albums: [Album])
}

class AlbumsPresenter {
    weak var view: AlbumsViewProtocol?
    init(view: AlbumsViewProtocol){
        self.view = view
        loadAlbums()
    }
    
    func loadAlbums() {
        var request = URLRequest(url: URL(string: "https://jsonplaceholder.typicode.com/photos")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            return
          }
        }
        task.resume()
    }
}
