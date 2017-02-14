//
//  ViewController.swift
//  ImageCollectionNavDemo
//
//  Created by Chris Chadillon on 2017-02-14.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UpdateImageProtocol {

    @IBOutlet var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.theImageView.backgroundColor = UIColor.lightGray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func UpdateImage(theImageName:String) {
        self.theImageView.backgroundColor = UIColor.white
        self.theImageView.image = UIImage(named: theImageName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let theCollectionVC = segue.destination as! CollectionViewController
        theCollectionVC.theUpdatableObject = self
    }
}

