//
//  DetailViewController.swift
//  CollectionViewApp
//
//  Created by Yevhen Shevchenko on 11.12.2020.
//

import UIKit

class DetailViewController: UIViewController {
    
    var image: UIImage?

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func shareAction() {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        present(shareController, animated: true, completion: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("успешно")
            }
        }
    }
}
