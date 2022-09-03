//
//  CharactersTableViewController.swift
//  Breaking Bad Characters
//
//  Created by Olegio on 03.09.2022.
//

import UIKit

class CharactersTableViewController: UITableViewController {

    private let cellId = "CharacterTableViewCell"
    let jsonUrl = "https://www.breakingbadapi.com/api/characters/1"
    var characters: [CharacterInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CharacterTableViewCell
        
        let character = characters[indexPath.row]
        cell.configure(with: character)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
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
