import Foundation
import UIKit

class TableViewController: UITableViewController {

    private var presenter : BookPresenter?
    private var albumsPresenter : AlbumsPresenter?
    private var books : [Book] = []
    private var albums : [Album] = []
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        //presenter = BookPresenter(view: self)
        albumsPresenter = AlbumsPresenter(view: self)
        //presenter?.loadBooks()
        albumsPresenter?.loadAlbums()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return books.count
        return albums.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        //let book = books[indexPath.row]
        let album = albums[indexPath.row]
        //cell.textLabel?.text = book.title
        cell.textLabel?.text = album.title
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        
//        let detailVC = BookDetailViewController()
//        detailVC.book = books[indexPath.row]
//        navigationController?.pushViewController(detailVC, animated: true)
//    }
    
}
//extension TableViewController: BooksViewProtocol {
//    func reloadData(Books: [Book]){
//        books = Books
//        tableView.reloadData()
//    }
//}

extension TableViewController: AlbumsViewProtocol {
    func reloadData(Albums: [Album]){
        albums = Albums
        tableView.reloadData()
    }
}
