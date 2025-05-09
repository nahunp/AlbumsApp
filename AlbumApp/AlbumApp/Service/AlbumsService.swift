//
//  AlbumsService.swift
//  AlbumApp
//
//  Created by CincinnatiAi Dallas on 5/9/25.
//

import Foundation

protocol AlbumsService {
    func fetchAlbums () async throws -> [Album]
}

struct AlbumsServiceImpl: AlbumsService {
    
    private let session: URLSession = URLSession.shared
    private let decoder: JSONDecoder = JSONDecoder()
  
    func fetchAlbums() async throws -> [Album] {
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/albums")else {
//            return []
//        }
//        do {
//           let rawResponse = try await session.data(from: url)
//           let(data,codeResponse) = rawResponse
//           let albumsResponse = try decoder.decode(AlbumResponse.self, from: data)
//           return albumsResponse.results
//       }catch {
           return []
//       }
//
       }

    }

