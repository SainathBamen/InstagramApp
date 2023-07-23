//
//  MyTableViewCell.swift
//  InstagramApp
//
//  Created by Sainath Bamen on 13/04/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var myBtn: UIButton!
    
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var myLbl: UILabel!
    @IBOutlet weak var myTVImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
//        myBtn.layer.cornerRadius = 50
//        profileImg.layer.cornerRadius = profileImg.bounds.height / 2
//               profileImg.layer.masksToBounds = true
        profileImg.layer.cornerRadius = profileImg.frame.size.width / 2
        profileImg.clipsToBounds = true
    }

   

}
