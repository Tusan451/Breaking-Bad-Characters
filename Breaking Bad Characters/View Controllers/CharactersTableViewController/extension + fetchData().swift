//
//  extension + fetchData().swift
//  Breaking Bad Characters
//
//  Created by Olegio on 03.09.2022.
//

import Foundation

extension CharactersTableViewController {
    
    func fetchData() {
        guard let url = URL(string: jsonUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { data, responce, error in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let responce = responce {
                print(responce)
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                self.characters = try JSONDecoder().decode([CharacterInfo].self, from: data)
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
