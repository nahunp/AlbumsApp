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
        //fetchAlbums()
    }
    
    func loadAlbums() {
        var request = URLRequest(url: URL(string: "https://jsonplaceholder.typicode.com/photos")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
          print(String(data: data, encoding: .utf8)!)
        }
        task.resume()
    }
//    func fetchAlbums() async throws -> [Album] {
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/albums")else {
//            return []
//        }
//        do {
//           let rawResponse = try await session.data(from: url)
//           let(data,codeResponse) = rawResponse
//           let albumsResponse = try decoder.decode(AlbumResponse.self, from: data)
//           return albumsResponse.results
//       }catch {
//           return []
//       }
//       }
    //        albums = [
    //            Album(albumId: 1,id: 1,title: "title",url: "url", thumbnailUrl: "thumbnailUrl" ),
    //            Album(albumId: 2,id: 2,title: "title",url: "url", thumbnailUrl: "thumbnailUrl" ),
    //            Album(albumId: 3,id: 3,title: "title",url: "url", thumbnailUrl: "thumbnailUrl" ),
    //        ]
    //        view?.reloadData(Albums: albums)
}
