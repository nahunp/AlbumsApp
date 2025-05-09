//
//  BookPresenter.swift
//  AlbumApp
//
//  Created by CincinnatiAi Dallas on 5/9/25.
//

import Foundation

protocol BooksViewProtocol: AnyObject {
        func reloadData(Books: [Book])
}

class BookPresenter {
    weak var view: BooksViewProtocol?
    var books: [Book] = []
    
    init(view: BooksViewProtocol) {
        self.view = view
        loadBooks()
    }
    
    func loadBooks() {
        books = [
            Book(title: "The Alchemist", author: "Paulo Coelho"),
            Book(title: "To Kill a Mockingbird", author: "Harper Lee"),
            Book(title: "1984", author: "George Orwell"),
            Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald"),
            Book(title: "Brave New World", author: "Aldous Huxley"),
        ]
        view?.reloadData(Books: books)
    }
}
