//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Vebby Clarissa on 15/05/19.
//  Copyright © 2019 Vebby Clarissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!
    
    var learnerInstance : LearnerModel? //create copy of LearnerModel
    var facilitatorInstance : FacilitatorModel?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "Vebby Clarissa", ageLearner: 18, genderLearner: "Female", imageProfileLearner: "imageProfile_189")
        facilitatorInstance = FacilitatorModel(facilName: "Rara", facilAge: 20, facilGender: "Female", facilImageProfile: "", facilPerk: "Unlimited Starbuck on Friday")
        
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI () {
        if let instance = facilitatorInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
        
    }

    @IBAction func growUpButtonPressed(_ sender: Any) {
//        if let instance = learnerInstance {
//            instance.increaseAge()
//            instance.coachMentee()
//            updateUI()
//        }
        if let instance = facilitatorInstance {
            instance.increaseAge()
            instance.coachMentee()
            updateUI()
        }
    }
    
}

