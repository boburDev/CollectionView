//
//  CollectionSViewController.swift
//  CollectionView
//
//  Created by Boburmirzo on 2/10/21.
//

import UIKit

class CollectionSViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet var collectionView: UICollectionView!
    
    let numberOfColumn:CGFloat = 2
    var items:Array<Item> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppViews()
    }

    // MARK: - Method
    func AppViews() {
        navigationSettings()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.collectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        
        if let floatLaout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfColumn - 15
            floatLaout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
        
        items.append(Item(title: "PDP", image: "ic_online"))
        items.append(Item(title: "PDP", image: "ic_online"))
        items.append(Item(title: "PDP", image: "ic_online"))
        items.append(Item(title: "PDP", image: "ic_online"))
        items.append(Item(title: "PDP", image: "ic_online"))
        items.append(Item(title: "PDP", image: "ic_online"))
        items.append(Item(title: "PDP", image: "ic_online"))
        items.append(Item(title: "PDP", image: "ic_online"))
        items.append(Item(title: "PDP", image: "ic_online"))
        items.append(Item(title: "PDP", image: "ic_online"))
        
    }
    
    func navigationSettings() {
        
        let scroll = UIImage(named: "ic_scroll")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: scroll, style: .plain, target: self, action: #selector(rightTapped))
        title="Collection View"
    }
    
    func callScrollController() {
        let vc:ScrollSViewController = ScrollSViewController(nibName: "ScrollSViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    // MARK: - Action
    
    @objc func rightTapped(){
        callScrollController()
    }
    
    
    // MARK: - Collaction View
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let item = [indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ItemCollectionViewCell
        
        return cell
    }

}
