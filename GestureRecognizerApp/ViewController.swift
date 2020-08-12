//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Bahriye Begum Ultan Gungor on 12.08.2020.
//  Copyright © 2020 Bahriye Begum Ultan Gungor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var isJames = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        
        if isJames == true {
            isJames = false
            imageView.image = UIImage (named: "hetfield")
            myLabel.text = "Hetfield"
        } else{
            isJames = true
            imageView.image = UIImage (named: "james")
            myLabel.text = "James"
        }
    }
}







