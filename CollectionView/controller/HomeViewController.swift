//
//  HomeViewController.swift
//  CollectionView
//
//  Created by Boburmirzo on 2/9/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AppViews()
        // Do any additional setup after loading the view.
    }
    
    func AppViews() {
        navigationSettings()
    }
    
    func navigationSettings() {
        title="Instagram"
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
