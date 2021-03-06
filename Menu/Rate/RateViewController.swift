//
//  RateViewController.swift
//  Menu
//
//  Created by Lucifer on 2/12/20.
//  Copyright © 2020 Lucifer. All rights reserved.
//

import UIKit



class RateViewController: UIViewController {
    
    var restRating: String?

    @IBOutlet weak var ratingStackView: UIStackView!
    @IBOutlet weak var badButton: UIButton!
    @IBOutlet weak var goodButton: UIButton!
    @IBOutlet weak var brilliantButton: UIButton!
    
    @IBAction func rateRestaurant(sender: UIButton) {
        switch sender.tag {
        case 0: restRating = "bad.jpg"
        case 1: restRating = "good.jpg"
        case 2: restRating = "brilliant.jpg"
        default: break
        }
        performSegue(withIdentifier: "unwindSegueToDVC", sender: sender)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animationWillDidAppear()
    }
    
    private func animationWillDidAppear() {
        //        UIView.animate(withDuration: 0.4) {
        //            self.ratingStackView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        //        }
        
        let buttonArray = [badButton, goodButton, brilliantButton]
        for (index, button) in buttonArray.enumerated() {
            let delay = Double(index) * 0.2
            UIView.animate(withDuration: 0.6, delay: delay, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                button?.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        animationViewDidLoad()
        blurEffect()
        
    }
    
    private func animationViewDidLoad() {
        //       ratingStackView.transform = CGAffineTransform(scaleX: 0, y: 0)
        
        badButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        goodButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        brilliantButton.transform = CGAffineTransform(scaleX: 0, y: 0)
    }
    
    private func blurEffect() {
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.bounds
        blurEffectView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.view.insertSubview(blurEffectView, at: 1)
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
