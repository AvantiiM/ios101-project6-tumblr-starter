//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Avanti Manjunath on 10/25/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var captionText: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        captionText.text = post.caption.trimHTMLTags()
        
        if let photoURL = post.photos.first?.originalSize.url {
            Nuke.loadImage(with: photoURL, into: posterImageView)
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
