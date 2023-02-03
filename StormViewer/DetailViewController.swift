//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Gagan on 2023-02-03.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        //        if let selectedImage {
        //            imageView.image = UIImage(named: selectedImage)
        //        }
        //
        //        if selectedImage != nil {
        //            imageView.image = UIImage(named: selectedImage!)
        //        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
}
