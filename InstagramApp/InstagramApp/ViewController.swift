//
//  ViewController.swift
//  InstagramApp
//
//  Created by Sainath Bamen on 12/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var imagesTV:[String] = ["csm","men1","men2","men3","nature","nature2", "beach","csm","men1","men2","men3","nature","nature2", "beach","csm","men1","men2","men3","nature","nature2", "beach"]
    var profile:[String] = ["csm","men1","men2","men3","nature","nature2", "beach","csm","men1","men2","men3","nature","nature2", "beach","csm","men1","men2","men3","nature","nature2", "beach"]
    
    var profileName:[String] = ["Sainath bamen","Kriyansh bamen","Prashant shinde","Ravish kumar","Dipesh mane","James bond","Sharad patil","Sainath bamen","Kriyansh bamen","Prashant shinde","Ravish kumar","Dipesh mane","James bond","Sharad patil","Sainath bamen","Kriyansh bamen","Prashant shinde","Ravish kumar","Dipesh mane","James bond","Sharad patil"]
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var btn: UIButton!
    
    var imagesCV:[String] = ["koala","csm","men1","men2","nature","koala","csm","men1","men2","nature","koala","csm","men1","men2","nature","koala","csm","men1","men2","nature","koala","csm","men1","men2","nature","koala","csm","men1","men2","nature"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesCV.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImg.image = UIImage(named: imagesCV[indexPath.row])
        cell.layer.cornerRadius = cell.frame.height/2
        cell.contentView.layer.borderWidth = -50
        cell.layer.borderColor = UIColor.systemRed.cgColor
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: (collectionView.frame.size.width - 10) / 5, height: (collectionView.frame.size.width - 10) / 5)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesTV.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! MyTableViewCell
        cell.myTVImg.image = UIImage(named: imagesTV[indexPath.row])
//        cell.profileImg.image = UIImage(named: profile[indexPath.row])
    
        cell.profileImg.image = UIImage(named: profile[indexPath.row])
        cell.profileImg.layer.cornerRadius = (cell.profileImg.frame.size.width ) / 2
        cell.profileImg.clipsToBounds = true
        cell.myLbl.text = profileName[indexPath.row]

        return cell
    }
    
    
}


    
    
    

