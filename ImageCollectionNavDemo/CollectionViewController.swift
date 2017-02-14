//
//  CollectionViewController.swift
//  ImageCollectionNavDemo
//
//  Created by Chris Chadillon on 2017-02-14.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    let theIconList = ["backpack.png","bomb.png","book.png","briefcase.png","bubble-chat.png","bubble-heart.png","camera-photo.png","camera-polaroid.png","camera-video.png","cassette-player.png","charlie-chaplin.png","chef-hat.png","clock.png","coffee-machine.png","cog.png","computer-imac.png","computer-network.png","computer-pc.png","computer-screen-1.png","computer-screen-2.png","contact-book.png","content-download.png","cooking-pot.png","crop.png","crown.png","designer-cup.png","diving-gear.png","drink-cocktail.png","drink-coffee.png","e-mail.png","envelope.png","eyedropper.png","fork-knife.png","forklift.png","fountain-pen-head-1.png","fountain-pen-head-2.png","gauge.png","globe.png","grid.png","griller.png","handbag.png","headphone.png","heart.png","home.png","hotdog.png","icecream.png","image.png","iphone.png","ipod.png","layers-image.png","layers.png","link.png","location-pin.png","location-user.png","lock-locked.png","lock-unlocked.png","magic-wand.png","magnet.png","microphone.png","monocle.png","mp3-player.png","music-note.png","notebook-1.png","notebook-2.png","paint-brush.png","paint-bucket.png","paint-palette.png","paint-roller.png","pen-fountain.png","pen-point-tip.png","pencil-ruler.png","picture-frame.png","quill-ink.png","refresh.png","remote-control-hand.png","remote-control-screen.png","script.png","server.png","settings.png","shield-cross.png","shopping-cart-add.png","shopping-cart-remove.png","skull.png","smart-device.png","smiley.png","sneakers.png","sofa.png","stamp.png","sub-woofer.png","syringe.png","target.png","teapot.png","trash-can.png","umbrella.png","user-chat.png","user.png","vector.png","windows.png","wrenches.png","write.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        // self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.theIconList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
    
        cell.theImageView.image = UIImage(named: self.theIconList[indexPath.row])
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
