//
//  AlbumViewController.swift
//  SpotifySearch
//
//  Created by Jason Gresh on 10/25/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var album: Album?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let validAlbum = album {
            self.title = validAlbum.name
        }
        getImage()
    }
    
    func getImage() {
        let session = URLSession.shared
        
        guard let validAlbum = album else {
            return
        }
        
        session.downloadTask(with: validAlbum.images[0].url) { (location, response, error) -> Void in
            if error != nil {
                print("Error encountered!: \(error!)")
            }
            if let validData = try? Data(contentsOf: location!) {
                DispatchQueue.main.async {
                    let img = UIImage(data: validData)
                    self.imageView.image = img
                    
                }
            }
            }.resume()
    }

}
