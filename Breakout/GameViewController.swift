//
//  GameViewController.swift
//  Breakout
//
//  Created by etudiant on 10/04/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet var balle: UIImageView!
    @IBOutlet var paddle: UIImageView!
    @IBOutlet var brique1: UIImageView!
    @IBOutlet var brique2: UIImageView!
    @IBOutlet var brique3: UIImageView!
    @IBOutlet var brique4: UIImageView!
    @IBOutlet var brique5: UIImageView!
    @IBOutlet var brique6: UIImageView!
    @IBOutlet var brique7: UIImageView!
    @IBOutlet var brique8: UIImageView!
    @IBOutlet var brique9: UIImageView!
    @IBOutlet var brique10: UIImageView!
    @IBOutlet var brique11: UIImageView!
    @IBOutlet var brique12: UIImageView!
    @IBOutlet var brique13: UIImageView!
    @IBOutlet var brique14: UIImageView!
    @IBOutlet var brique15: UIImageView!
    @IBOutlet var brique16: UIImageView!
    @IBOutlet var brique17: UIImageView!
    @IBOutlet var brique18: UIImageView!
    @IBOutlet var Vie: UILabel!
    @IBOutlet var Score: UILabel!
    @IBOutlet var WinLose: UILabel!
    @IBOutlet var Menu: UIButton!
    @IBOutlet var PlayerName: UITextField!
    @IBOutlet var Valider: UIButton!
    
    var vitesseBalle: CGPoint!
    var timer: Timer!
    var lives: Int! = 3
    var score: Int! = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vitesseBalle = CGPoint(x:2,y:2)
        timer = Timer.scheduledTimer(timeInterval:0.005, target:self, selector:#selector(self.boucleJeu), userInfo:nil ,repeats:true)
        lives = 3
        score = 0
        Valider.isHidden = true
        PlayerName.placeholder = "Entrez votre nom"
        PlayerName.isHidden = true
        Vie.text = "Vie : "+String(lives)
        Score.text = "Score : "+String(score)
        Menu.isHidden = true
        WinLose.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func boucleJeu() {
        balle.center = CGPoint(x:balle.center.x + vitesseBalle.x, y:balle.center.y + vitesseBalle.y)
        
        if(balle.center.x > self.view.bounds.size.width || balle.center.x < 0 ){
            vitesseBalle.x = -vitesseBalle.x
            
        }
        if(balle.center.y > self.view.bounds.size.height || balle.center.y < 0 ){
            vitesseBalle.y = -vitesseBalle.y
            
        }
        //Collision avec la raquette
        if (balle.frame.intersects(paddle.frame)){
            
                vitesseBalle.y = -vitesseBalle.y
            
        }
        //Collision avec les briques
        if ((balle.frame.intersects(brique1.frame)) && (brique1.isHidden == false)){
            brique1.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique2.frame)) && (brique2.isHidden == false)){
            brique2.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique3.frame)) && (brique3.isHidden == false)){
            brique3.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique4.frame)) && (brique4.isHidden == false)){
            brique4.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique5.frame)) && (brique5.isHidden == false)){
            brique5.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique6.frame)) && (brique6.isHidden == false)){
            brique6.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique7.frame)) && (brique7.isHidden == false)){
            brique7.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique8.frame)) && (brique8.isHidden == false)){
            brique8.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique9.frame)) && (brique9.isHidden == false)){
            brique9.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique10.frame)) && (brique10.isHidden == false)){
            brique10.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique11.frame)) && (brique11.isHidden == false)){
            brique11.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique12.frame)) && (brique12.isHidden == false)){
            brique12.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique12.frame)) && (brique12.isHidden == false)){
            brique12.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique13.frame)) && (brique13.isHidden == false)){
            brique13.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique14.frame)) && (brique14.isHidden == false)){
            brique14.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique15.frame)) && (brique15.isHidden == false)){
            brique15.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique16.frame)) && (brique16.isHidden == false)){
            brique16.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique17.frame)) && (brique17.isHidden == false)){
            brique17.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if ((balle.frame.intersects(brique18.frame)) && (brique18.isHidden == false)){
            brique18.isHidden=true;
            vitesseBalle.y = -vitesseBalle.y;
            score = score+1
        }
        if((brique1.isHidden==true) && (brique2.isHidden==true) && (brique3.isHidden==true) && (brique4.isHidden==true) && (brique5.isHidden==true) && (brique6.isHidden==true) && (brique7.isHidden==true) && (brique8.isHidden==true) && (brique9.isHidden==true) && (brique10.isHidden==true) && (brique11.isHidden==true) && (brique12.isHidden==true) && (brique13.isHidden==true) && (brique14.isHidden==true) && (brique15.isHidden==true) && (brique16.isHidden==true) && (brique17.isHidden==true) && (brique18.isHidden==true)){
            WinLose.text = "Vous avez gagné !!"
            PlayerName.isHidden = false
            Valider.isHidden = false
            WinLose.isHidden = false
            timer.invalidate()
        }
        
        //Perte de la balle
        if (balle.center.y > self.view.bounds.size.height){
            lives = lives-1
            Vie.text = "Vie : "+String(lives)
        }
        if(self.lives == 0){
            WinLose.text = "Vous avez perdu..."
            WinLose.isHidden = false
            Menu.isHidden = false
            timer.invalidate()
        }
        Score.text = "Score : "+String(score)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location:CGPoint = touch.location(in: touch.view)
        paddle.center = CGPoint(x:location.x, y:paddle.center.y)
    }
    


}
