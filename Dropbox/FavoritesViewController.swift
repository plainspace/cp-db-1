//
//  FavoritesViewController.swift
//  Dropbox
//
//  Created by Jared on 2/6/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    var favState :Bool = false
    
    @IBOutlet weak var FavoritesContainer: UIView!
    
    @IBOutlet weak var FavoritesImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        favState = NSUserDefaults.standardUserDefaults().boolForKey("favorited")
        if (favState == true){
            FavoritesImage.image = UIImage(named: "existing_favorites")
            FavoritesImage.image = UIImage(named: "existing_favorites")
        } else{
            FavoritesImage.image = UIImage(named: "empty_favorites")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
