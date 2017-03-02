//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Aristotle on 2017-03-01.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

class SearchSettingsViewController: UIViewController {

    @IBOutlet weak var numberOfStarsLabel: UILabel!
    
    @IBOutlet weak var numberOfStarsSlider: UISlider!
    
    var settings: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onSlider(_ sender: AnyObject) {
        numberOfStarsLabel.text = String(Int(numberOfStarsSlider.value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

weak var delegate: SettingsPresentingViewControllerDelegate?

