//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Айдар Рахматуллин on 04.12.2020.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet var photoImageView: UIImageView!
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = {_, bool, _, _ in
            if bool {
                print("Success")
            }
        }
        // Need to add "Privacy - Photo Library Additions Usage Description" key into info.plist with message
        present(shareController, animated: true, completion: nil)
    }
    

}
