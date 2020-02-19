//
//  NewMenuTableViewController.swift
//  Menu
//
//  Created by Lucifer on 2/18/20.
//  Copyright © 2020 Lucifer. All rights reserved.
//

import UIKit

class NewMenuTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        dismiss(animated: true, completion: nil)
    }


    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let alertController = UIAlertController(title: "Photo Source", message: nil, preferredStyle: .actionSheet)
            let cameraAction = UIAlertAction(title: "Camera", style: .default) { (action) in
                self.chooseImagePickerAction(source: .camera)
            }
            let photoLibAction = UIAlertAction(title: "Photo", style: .default) { (action) in
                self.chooseImagePickerAction(source: .photoLibrary)
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alertController.addAction(cameraAction)
            alertController.addAction(photoLibAction)
            alertController.addAction(cancelAction)
            self.present(alertController, animated: true, completion: nil)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func chooseImagePickerAction(source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            self.present(imagePicker, animated: true, completion: nil)
        }
    }

}
