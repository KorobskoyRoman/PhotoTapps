//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Roman Korobskoy on 08.10.2021.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    //добавляем действие для кнопки сохранения
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Success!")
            }
        }
        
        present(shareController, animated: true, completion: nil)
        
    }
    

}
