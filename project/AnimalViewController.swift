//
//  ElephantViewController.swift
//  BountyList
//
//  Created by joonwon lee on 2020/03/04.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var mainimage: UIImageView!
    
    //let nameList = ["elephant1", "elephant2", "elephant3"]
    //let bountyList = ["코끼리송! 다 같이 불러봐요!", "코끼리는 얼마나 클까요?", "코끼리에게도 배꼽이 있을까요?"]
    var animalname:String = "";
    let infodic:[String:[String]] =
        ["코끼리":["elephant1","https://www.youtube.com/watch?v=cEZasQNLlOk","코끼리송! 다 같이 불러봐요!","elephant2","https://www.youtube.com/watch?v=oTEfxlwOJbI","코끼리는 얼마나 클까요?",
             "elephant3","https://www.youtube.com/watch?v=8VRr4xhno0U","코끼리에게도 배꼽이 있을까요?"],
         "얼룩말": ["zebra1","https://www.youtube.com/watch?v=slMub4NtrSk","마티와 함께 춤을 춰봐요!","zebra2","https://www.youtube.com/watch?v=nqWLlkPIpEE&t=15s","얼룩말송! 다 같이 불러봐요","zebra3","https://www.youtube.com/watch?v=fiXhApSg9I0","함께 조나단을 예쁘게 꾸며봐요!"],
         "치타": ["cheetah1","https://www.youtube.com/watch?v=busUE3S_gjY", "치타송! 다 같이 불러봐요", "cheetah2","https://www.youtube.com/watch?v=UdILcn_Cpw0", "귀여운 아기치타와 같이 놀까요?", "cheetah3","https://www.youtube.com/watch?v=qJfiEQrg35A","치타와 함께 춤을 춰봐요"],
         "소" : ["ox1","https://www.youtube.com/watch?v=busUE3S_gjY","송아지 율동! 같이 춰요~", "ox2","https://www.youtube.com/watch?v=busUE3S_gjY", "꾸러기 동요 송아지 송~", "ox3","https://www.youtube.com/watch?v=busUE3S_gjY", "송아지의 겨울 나들이!"],
         "낙타" : ["camel1","https://www.youtube.com/watch?v=TSG03HNG0_U", "낙타송! 다 같이 불러봐요", "camel2","https://www.youtube.com/watch?v=tJ0ZNNoS4kQ", "낙타를 외계인으로부터 구출해요!", "camel3","https://www.youtube.com/watch?v=fN0ZC2pofds", "낙타! 넌 누구니?"]
    ]
    
    
    //   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//       // DetailViewController 데이터 줄꺼에요
//       if segue.identifier == "showDetail" {
//           let vc = segue.destination as? DetailViewController
//           if let index = sender as? Int {
//               vc?.name = nameList[index]
//               vc?.name = bountyList[index]
//
//           }
//       }
//   }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        print("DFGSDFGGGG : \(animalname)")
        
        let image = UIImage(named: "\(animalname).jpg")
        mainimage.image = image
        self.view.addSubview(mainimage)

    }
    
   
    
    
    // UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infodic[animalname]!.count/3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        
        let img = UIImage(named: "\(infodic[animalname]![indexPath.row*3]).jpg")
        cell.imgView.image = img
        cell.nameLabel.text = infodic[animalname]![indexPath.row*3]
        cell.bountyLabel.text = "\(infodic[animalname]![indexPath.row*3 + 2])"
        return cell
        
    }
    
    
        
    // UITableViewDelegate
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("—> \(indexPath.row)")
//        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
               tableView.deselectRow(at: indexPath, animated: true)
               switch indexPath.row {
               case 0: UIApplication.shared.open(URL(string : infodic[animalname]![1])! as URL, options: [:], completionHandler: nil)

               case 1: UIApplication.shared.open(URL(string : infodic[animalname]![3 + 1])! as URL, options: [:], completionHandler: nil)

               case 2: UIApplication.shared.open(URL(string : infodic[animalname]![6 + 1])! as URL, options: [:], completionHandler: nil)
                
        
               default:

                   return
                }
               

           }

}
  



class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    }
