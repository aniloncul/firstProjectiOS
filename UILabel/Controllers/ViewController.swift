//
//  ViewController.swift
//  UILabel
//
//  Created by Anıl Öncül on 27.08.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var southParkCharacters = [String]()
    var southParkPictures = [String]()
    var secilenIsim = ""
    var secilenGorsel = ""


    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        southParkCharacters.append("Butters")
        southParkCharacters.append("Cartman")
        southParkCharacters.append("Kenny")
        southParkCharacters.append("Kyle")
        southParkCharacters.append("Randy")
        southParkCharacters.append("Stan")
        
        southParkPictures.append("butters")
        southParkPictures.append("cartman")
        southParkPictures.append("kenny")
        southParkPictures.append("kyle")
        southParkPictures.append("randy")
        southParkPictures.append("stan")
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return southParkCharacters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = southParkCharacters[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            southParkPictures.remove(at: indexPath.row)
            southParkCharacters.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = southParkCharacters[indexPath.row]
        secilenGorsel = southParkPictures[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenKarakterIsmi = secilenIsim
            destinationVC.secilenKarakterGorselIsmi = secilenGorsel
        }
    }
}

