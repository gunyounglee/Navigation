//
//  ViewController.swift
//  Navigation
//
//  Created by TJ on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var imgView: UIImageView!
   
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    
    var isOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgView.image = imgOn
        
    }
        //segue로 연결된 화면으로 메세지 보낼때
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            editViewController.textWayValue = "Segue: Use Button!"
        }else{editViewController.textWayValue = "Segue: Use BarButton!"
            }
        
        Message.message = tfMessage.text!
        }
    //본래의 화면으로 돌아왔을때 데이터를 받는 함수
    override func viewWillAppear(_ animated: Bool) {
        tfMessage.text = Message.message
        
        if Message.isOn == false{
            imgView.image = imgOff
        }else{
            imgView.image = imgOn
        }
    }

}//ViewController

