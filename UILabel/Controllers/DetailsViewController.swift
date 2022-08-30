//
//  DetailsViewController.swift
//  UILabel
//
//  Created by Anıl Öncül on 28.08.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var secilenKarakterIsmi = ""
    var secilenKarakterGorselIsmi = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: secilenKarakterGorselIsmi)
        label.text = secilenKarakterIsmi
        

        // Do any additional setup after loading the view.
    }
    
   
    
}
