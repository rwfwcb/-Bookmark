import UIKit

class NYTBestSellerCV: UICollectionViewCell {
    

    var nytBestSellerBookModel: NYTBestSellerModel!

    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    func configureCellForBookObj(nytBestSellerBookModel: NYTBestSellerModel) {
        
        self.nytBestSellerBookModel = nytBestSellerBookModel
        
        // Set the bookname based off the data received from the NYTBestSellerModel
        myLabel.text = self.nytBestSellerBookModel.bookTitle
        
        // Image is a url need to conver to UIImage
        let imageUrlString = self.nytBestSellerBookModel.bookImage
        
        // Convert to URL
        let imageUrl = URL(string: imageUrlString)
        
        // Get the Data from the ImageURL
        let imageData = try! Data(contentsOf: imageUrl!)
        
        // Create a image from the imageData
        let image = UIImage(data: imageData)
        
        // Display the image in the UImageView
        bookImage.image = image
    }
}
