//
//  ProfileViewController.swift
//  Collection
//
//  Created by Вадим Амбарцумян on 06.06.2023.
//

import UIKit
import Kingfisher

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemRed
        collectionView()
    }
    
    func collectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 300, height: 100)
        
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collectionView.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: "ImageCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
    }

    

}
extension ProfileViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        
            let imageUrl = URL(string: "https://source.unsplash.com/random")!
            cell.imageView.kf.setImage(with: imageUrl)
            
            return cell
        }

    }


extension ProfileViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected item at index \(indexPath.row)")
    }
}
