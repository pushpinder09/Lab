
import UIKit

class FurnitureDetailViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var furniture: Furniture?
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var choosePhotoButton: UIButton!
    @IBOutlet var furnitureTitleLabel: UILabel!
    @IBOutlet var furnitureDescriptionLabel: UILabel!
    
    init?(coder: NSCoder, furniture: Furniture?) {
        self.furniture = furniture
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
            guard let furniture = furniture else { return }
            if let imageData = furniture.imageData,
                let image = UIImage(data: imageData) {
                photoImageView.image = image
            } else {
                photoImageView.image = nil
            }
            
            furnitureTitleLabel.text = furniture.name
            furnitureDescriptionLabel.text = furniture.description
        }
    
    @IBAction func choosePhotoButtonTapped(_ sender: Any) {
        let imagePicker = UIImagePickerController()
               imagePicker.delegate = self
               
               let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
               let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel)
               
               if UIImagePickerController.isSourceTypeAvailable(.camera){
                   let cameraAction = UIAlertAction(title: "Camera", style: .default, handler : {action in imagePicker.sourceType = .camera; self.present(imagePicker, animated: true, completion: nil)})
                   alertController.addAction(cameraAction)
               }
               if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                   let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler : {action in  imagePicker.sourceType = .photoLibrary; self.present(imagePicker, animated: true, completion: nil)})
                   alertController.addAction(photoLibraryAction)
               }
               
               alertController.addAction(cancelAction)
               
               present(alertController, animated: true, completion: nil)
           }
           
           func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
               if let image = info[.originalImage] as? UIImage {
                   photoImageView.image = image
                   if let imageData = image.jpegData(compressionQuality: 0.9) {
                       furniture?.imageData = imageData
                   }
               }
               
               picker.dismiss(animated: true, completion: nil)
               updateView()
           }
           
           func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
               picker.dismiss(animated: true, completion: nil)
           }
           
    

func actionButtonTapped(_ sender: Any) {
            
         
    var itemsToShare: [Any] = []
            
            if let imageData = furniture?.imageData {
                if let image = UIImage(data: imageData) {
                    itemsToShare.append(image)
                }
            }
            
            if let description = furniture?.description {
                itemsToShare.append(description)
            }
            
            let activityViewController = UIActivityViewController(activityItems: itemsToShare, applicationActivities: nil)
            
            present(activityViewController, animated: true, completion: nil)
        }
    
}
