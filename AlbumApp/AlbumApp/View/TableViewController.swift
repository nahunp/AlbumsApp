import Foundation
import UIKit

class TableViewController: UITableViewController {

    private var albumsPresenter : AlbumsPresenter?
    private var albums : [Album] = []
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        albumsPresenter = AlbumsPresenter(view: self)
        albumsPresenter?.loadAlbums()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        let album = albums[indexPath.row]
        cell.textLabel?.text = album.title
        return cell
    }
}

extension TableViewController: AlbumsViewProtocol {
    func reloadData(Albums: [Album]){
        albums = Albums
        tableView.reloadData()
    }
}
